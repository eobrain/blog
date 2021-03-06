task :default => :server

desc 'When developing, continuously recompile changed production coffee code to web tree'
task :coffeewatch do
  sh 'coffee --watch --compile --output js coffee/*.coffee'
end

desc 'Compile coffeescript'
task :coffeebuild do
  sh 'coffee --compile --output js coffee/*.coffee'
end

desc 'Clean up generated site'
task :clean do
  cleanup
end

desc 'Build site with Jekyll'
task :build => [:clean, :coffeebuild] do
  compass
  jekyll('build')
end

desc 'Build site with Jekyll, using latent semantic indexing'
task :build_lsi => [:clean, :coffeebuild] do
  compass
  jekyll('--lsi')
end

desc 'Start server with --auto'
task :server => :clean do
  compass
  jekyll('serve --watch')
end

desc 'Build and deploy'
task :deploy => :build do
  sh 'rsync -rtzh --progress --delete _site/ username@servername:/var/www/websitename/'
end

desc 'deploy to s3'
task :s3 => :build do
  sh 's3cmd \'--add-header=Cache-Control:public, max-age=300\' --acl-public sync _site/ s3://blog.eamonn.org'
end

desc 'deploy to ipfs'
task :ipfs => :build do
  sh 'hash=$(ipfs add -q -r _site | tail -1); ipfs name publish ${hash}'
end

desc 'Check links for site already running on localhost:4000'
task :check_links do
  begin
    require 'anemone'
    root = 'http://localhost:4000/'
    Anemone.crawl(root, :discard_page_bodies => true) do |anemone|
      anemone.after_crawl do |pagestore|
        broken_links = Hash.new { |h, k| h[k] = [] }
        pagestore.each_value do |page|
          if page.code != 200
            referrers = pagestore.pages_linking_to(page.url)
            referrers.each do |referrer|
              broken_links[referrer] << page
            end
          end
        end
        broken_links.each do |referrer, pages|
          puts "#{referrer.url} contains the following broken links:"
          pages.each do |page|
            puts "  HTTP #{page.code} #{page.url}"
          end
        end
      end
    end

  rescue LoadError
    abort 'Install anemone gem: gem install anemone'
  end
end

def cleanup
  sh 'rm -rf _site'
end

def jekyll(opts = '')
  sh 'jekyll ' + opts
end

def compass(opts = '')
  sh 'compass compile -c config.rb --force ' + opts
end

begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'
rescue LoadError
  task :jasmine  => :build do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end
