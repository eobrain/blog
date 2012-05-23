---
date: '2009-05-10 10:29:34'
layout: post
slug: the-reality-behind-the-hype-of-wolfram-alpha
status: publish
title: The Reality behind the Hype of Wolfram Alpha
wordpress_id: '395'
categories:
- Science
---

After been given advance hands-on access to Wolfram Alpha, I did some testing and my conclusions about the current state of this tool are:


  1. It would be a good educational tool, especially at the secondary/high-school level and perhaps in some areas at the college level.


  2. It is an entertaining exploration tool for those with an interest in the sciences.


  3. It is not a replacement for Google because it returns nothing useful from most typical Google queries.


  4. In areas of the sciences where it should be strong, its coverage is pretty spotty and once you get past the basics most specialized data seems to be missing.


  5. The single-box Google-style interface works only for very simple queries.  Its natural language understanding quickly fails for any kind of complex query, and it also fails to recognize many queries written like mathematical formulas.


  6. It is not easy to drill down to find out more information about a topic.  I was expecting that the results returned would contain links to more detailed information, but that was mostly not the case.


  7. It is also not easy to find information about related topics.  The results returned y a query do not have links to allow you to explore “sideways” into related areas.


I wish Wolfram well in developing this tool into something that is truly useful, but I fear that the expectations for it are so high that when it is finally released the disappointed reaction to it could be very damaging to its reputation.

There follows more details of my explorations.

Stephen Wolfram has described Wolfram Alpha as the third big endeavor of his life, after the Mathematica symbolic computation system and the New Kind of Science book.  I have been a big fan of the first two and so I was thinking that his latest work could possibly be a game-changer for the Internet.

As a computer scientist, I have had Mathematica in my tool chest for several years.  Every so often, I encounter problems that require some hairy algebra that Mathematica can perform much more accurately and quickly than I could with pen and paper.  Or I sometimes prototype some algorithm using Mathematica’s extensive library of mathematical operations.  Or I use its graphing and visualization to get insight into my problem.  Or I use its symbolic manipulation to simplify formulae that I then use in my own code.

When Wolfram published the New Kind of Science, I devoured it.  I read the huge tome from cover to cover, including the extensive footnotes.  He build up a persuasive argument, sparing no detail, from chaos-generating cellular automata, to general theories of computability, to hints of how the physical world might be best described as computing the laws of physics.  It was an amazing intellectual achievement, though it remains to be seen if it is indeed the great breakthrough that Wolfram considers it to be.

So, along with many people, I was intrigued by the build-up to the release of Wolfram Alpha, a web application with natural language processing backed by a large corpus of “curated” data and a large grid of computers running Mathematica code.  Some of the hype on the Internet, was calling this a Google-killer.  I thought that it could realize the vision of the Semantic Web as championed by Tim Berners-Lee, but done in a proprietary closed way rather than as an open network of interacting semantic web services.

I was very happy then to get access to a preview version of Alpha, ten days before the general release.

The first thing I tried to test was to see was it indeed a “Google killer”.  Like many people, I use Google a lot, both as part of my work and for personal use.  I went back through my Google search history over the last few weeks and tried some of the queries I had made to Google.  I tried searching for a particular play, “The Beauty Queen of Leenane”, but apparently the current set of Alpha data does not include plays, even ones that have been on Broadway, and I got a “Wolfram|Alpha isn't sure what to do with your input” message with which I was about to become very familiar.  I tried searching for the playwright “Martin McDonagh” and got an unhelpful comparison between the surname “Martin” and the erroneously-corrected surname “Mcdonald”.  A tried some more queries such as “java deprecated annotation argument” which I had used successfully on Google to figure out some detailed usage information about a highly technical aspect of programming in the Java programming language.  However, Alpha was of no value.  In fact, as far as I can tell it knows nothing about any programming languages, except presumably Mathematica itself.

And so I slogged on through my Google query history, but everything I tried returned nothing from Alpha.  Eventually, going through weeks of Google history I found one query that it got correct: “speed of sound”.  (I had been trying to estimate how far my house was from the Golden Gate Bridge fog horns, given it takes the sound 10 seconds to get here.)  And, when I typed in “speed of sound * 10 seconds” I got the correct answer in both Google and Alpha.

I was disappointed that almost none of my Google queries returned anything useful.  At one point last week I had been trying to find a formula to convert colours from CMYK (as used by printers) to RGB (as used by displays), and through various Google queries I discovered that this was a very complex issue because the conversion depended on printer characteristics, but I did find an approximate formula that was good enough for my purposes.  None of these queries returned anything in Alpha, despite the fact that this kind of conversion would be the kind of thing it would do well.

So Wolfram Alpha is definitely not a Google killer.  Its corpus of information is undoubtedly of much higher quality than the Internet information available to Google.  However, despite being a lot of data, it is still a tiny fraction of the information on the Internet, so it is unlikely to have information on some random topic that you are interested in.

So, to be fair to Wolfram, I gave up on comparing to Google and instead tried creating queries based on the examples on the Wolfram web site.

And I was able to create some interesting queries.  For example “volume of ocean / amazon average discharge in years” revealed to me that it would take 200,000 years to fill the ocean if started empty and was filled at the rate of water flowing from the Amazon river into the sea.  However I really wanted to find the average flow of all rivers into the ocean, but I could not craft a query for that, even though I could find the information for each river individually.

Then I tried something fun (at least to me).  I had heard the expression “boil the ocean” describing something so overly ambitious as to be effectively impossible.  So how much energy would it require to boil the oceans, and how does that compare to say the energy output of the sun per year?  I tried the query “”latent heat of vaporization of water * volume of ocean * density of water” which I hoped would give me an answer in units of energy (Joules) but it insisted on expressing the latent heat of vaporization in as the molar heat of vaporization which meant I ended up with a value in the wrong units (gram-kilojoules/mole).  Finally after some playing around I got the correct result of 3.124x10^24 kJ  (kilojoules) using the query “latent heat of vaporization of water * volume of ocean * density of water / molecular weight of water”.  However, I could not find the power output of the Sun or even the solar flux on the earth using Wolfram Alpha – even in this very scientific area its corpus of data seemed lacking. So I cheated and using Google I was easily able to find that the power output of the Sun is about 4x10^26 Watts so I tried dividing the above query by this value, but I could not get it to work despite what kinds of parentheses I used.  For example “latent heat of vaporization of water * volume of ocean * density of water / ((molecular weight of water) * (4x10^26 W))”  would not parse correctly, nor would “((latent heat of vaporization of water) * (volume of ocean) * (density of water)) / ((molecular weight of water) * (4x10^26 W))”,  Finally I just copied and pasted values to enter the query “3.124x10^24 kJ  / 4x10^26 W” to discover that if the entire energy output of the Sun were applied to boil the Earth’s oceans ist would take 7.81 seconds to do so.

So, in its domain of strength the Alpha system can produce some useful results, but I found that it was not easy to “drill down” into the results and combine them in interesting ways without a lot of manual cut-and-paste.

Could Alpha be developed to overcome all these limitations?

Perhaps the querying interface could be improved.  Maybe instead of just having a single box for typing free-form “natural language” there could be an advanced query mode that allows more complex structured queries.

Perhaps the user interface could be improved to allow more exploration from the results of a query to explore related concepts.  For example from the results of my query about the Amazon there could be links to related queries for Brazil, or for other major world rivers.

Perhaps more curated data could be added to fill in the gaps and increase the depth of the knowledge base.  However, this seems like a economically hopeless task given the current Wolfram model of using their experts to validate all data.  Even if they increased their effort ten-fold they could still only manage to curate a small fraction of all data.  They only systems that seem to work are those like Wikipedia or Google which rely on the open cooperative accumulation of large numbers of Internet users – but that does not seem to fit into the envisioned Wolfram business model.


