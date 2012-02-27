---
date: '2009-12-19 16:53:35'
layout: post
slug: an-idiom-for-cleaner-pimping-of-libraries-in-scala
status: publish
title: An idiom for cleaner pimping of libraries in Scala
wordpress_id: '592'
categories:
- Programming
---

In dynamic languages like JavaScript and Ruby you can modify existing classes, including system classes, with extra methods.  This can be a very handy, if dangerous, technique.

Scala, being a static language does not allow this same technique.  But it does allow the use of `implicit` functions to get the same effect.  For example the standard idiom to add sine and cosine methods to the Double class is
    
    
    class PimpedDouble(x:Double){
      def sin = Math.sin(x)
      def cos = Math.cos(x)
    }
    implicit def pimpDouble(x:Double) = new PimpedDouble(x)
    


This has the effect of adding `sin` and `cos` methods to Double, though what is actually happening is that `Double` values are automatically converted to `PimpedDouble` values when doing so would correctly compile.

This is very clever and very handy, but the idiom is a little clumsy, compared to most of Scala's elegant features.  It is annoying to have to invent two names `PimpedDouble` and `pimpDouble` that are never referred to anywhere else in the code.

Can we do better?  Yes we can.  We can make the extra class be an anonymous class, which leaves only one arbitrary unreferenced name and also reduces the size of the code.
    
    
    implicit def pimpDouble(x:Double) = new {
      def sin = Math.sin(x)
      def cos = Math.cos(x)
    }
    


That seems a lot nicer to me.

Using either of the above techniques you can now do things like

    
    
      val x = 0.5 cos
      val y = 0.5 sin
    


which is taking the cosine and sine of the Double value 0.5

(Thanks to Daniel whose [stackoverflow posting](http://stackoverflow.com/questions/1913591/understanding-why-pimp-my-library-was-defined-that-way-in-scala/1913961#1913961) first brought this idiom to my attention.)
