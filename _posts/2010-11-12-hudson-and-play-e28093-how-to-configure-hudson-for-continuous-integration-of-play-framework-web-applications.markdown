---
date: '2010-11-12 10:53:32'
layout: post
slug: hudson-and-play-%e2%80%93-how-to-configure-hudson-for-continuous-integration-of-play-framework-web-applications
status: publish
title: Hudson and Play – how to configure Hudson for continuous integration of Play
  Framework Web Applications
wordpress_id: '1014'
categories:
- Programming
tags:
- linkedin
---

The Play Framework is a very nice rapid-development environment for building Java web applications.  It brings many of the sensibilities of Ruby on Rails to Java web development, including a nice test framework that allows for test-driven design.  However, when you use Play you need to use its own particular build system using command-line commands such as “play run” and “play test”, and not more standard Java build systems like Ant or Maven.

Hudson is an amazingly useful continuous integration environment that you can set up to watch all your modules in your source-control-system.  When it sees a commit you can have it compile your module, track compiler warnings, run regression tests, and track code coverage.  I have used Hudson successfully on many projects, but always using Hudson's integration to the Ant build system.

To integrate Play with Hudson I created a simple Makefile in the Play project directory:

> 
>     PLAY=../play-1.1/play
>     
>     hudson: play-test play-javadoc
>     
>     play-test: ../play-1.1
>     	$(PLAY) auto-test
>     
>     play-javadoc: ../play-1.1
>     	$(PLAY) javadoc
>     
>     ../play-1.1/play: play-1.1.zip
>     	cd ..; unzip */play-1.1.zip
>     


(Note that this assumes that I have included a ZIPed copy of the play framework in the module directory.  The first time the default target is called this will be unzipped into a sibling directory of the module directory.  This means that I do not need any special setup of the Hudson server for Play -- the module is self-contained.)

In the Hudson configuration you then need simply put in a script that changes to the module directory and invokes “make”
[caption id="attachment_1016" align="alignnone" width="768" caption=""]![Configuring Hudson for Play Framework module](http://www.eamonn.org/blog/wp-content/uploads/2010/11/hudson-play1.png)[/caption]

The screen-shot above assumes you install the Cobertura module into Play.  This gives you nice tracking of your code coverage.  On a brand new Play application, with no extra code added by you the coverage is as shown by Hudson in the screen-shot below.  

[caption id="attachment_1020" align="alignnone" width="725" caption=""]![Initial code coverage on an empty Play Framework app](http://www.eamonn.org/blog/wp-content/uploads/2010/11/play-cobertura1.png)[/caption]

When working on an Agile project it is important to get the continuous integration set up from the very beginning -- and it turns out to be easy to do that with Play.

