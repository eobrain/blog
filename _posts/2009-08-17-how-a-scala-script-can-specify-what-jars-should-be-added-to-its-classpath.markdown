---
date: '2009-08-17 16:45:43'
layout: post
slug: how-a-scala-script-can-specify-what-jars-should-be-added-to-its-classpath
status: publish
title: How a Scala script can specify what JARs should be added to its CLASSPATH
wordpress_id: '425'
categories:
- Programming
---

The reason the Scala programming language has such a name is that it is meant to be scalable, i.e. good for both small scripts and large software systems.  I am already convinced that Scala is as good, if not better than Java for the large-scale development, but what about the small scale?

Well it turns out that on Linux if you `chmod +x` a scala script you can make it executable with a bit of shebang magic as shown by this complete, runnable script:

    
    
    #!/bin/sh
    exec scala $0 $@
    !#
    println("Hello World"!")
    


(You do have to make sure that "scala" is in your executable path.)

But what if you are using a scala script to control an existing Scala or Java system?  It would be nice to express the CLASSPATH requirements in the script itself rather than depending on the calling environment to be configured correctly.  Well, I came up with this convenient idiom to collect all the JAR files in a lib directory and add them to the CLASSPATH:

    
    
    #!/bin/sh
    L=`dirname $0`/../lib
    cp=`echo $L/*.jar|sed 's/ /:/g'`
    exec scala -classpath $cp $0 $@
    !#
    import com.my.special.World
    val world = new World
    world.hello
    


This assumes that all the required JAR files are in directory `../lib` relative to the script file.

