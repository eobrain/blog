---
date: '2010-12-19 12:33:16'
layout: post
slug: checked-exceptions-considered-evil
status: publish
title: Checked Exceptions Considered Evil
wordpress_id: '1040'
categories:
- Programming
tags:
- linkedin
---

Many years ago when I first learned Java, I really liked the “checked exception” programming language feature.  If the code in a method can throw a checked exception then the compiler forces the programmer to either surround the code with a `try`-`catch` or include the exception in the `throws` clause of the function declaration (which will recursively cause this compiler do this check in the calling code).  Like strong typing, it seemed like a great way for the compiler to help the programmer writing more robust code with fewer error-handling problems.

However there is an insidious anti-pattern that many programmers slide into: swallowing exceptions with a `try`-`catch` that does not propagate an exception or otherwise deal appropriately with it.  In the most blatant case there will be an empty `catch` statement, causing the exception to be silently ignored.

Personally I have always been very careful to propagate my exceptions, by adding them to the `throws` clauses.  When you have deeply layered code where each layer uses its own exceptions you either end up with very large `throws` clauses containing the exceptions for all the layers below (breaking some encapsulation) or in each layer you have to catch all of the exceptions from the layers below and rethrow new exceptions.  This is a lot of disciplined programming that you have to get right, and often changes you make in exception-handling in one area of code force you to make many changes in many other areas of the code.

I have finally decided, enough is enough; checked exceptions are not worth the effort.  Partly this is a result of spending sometime working with Scala, which like Java is a strongly-typed language that runs on the JVM.  Scala does not have checked exceptions, and I never missed them.  It was one of the many things that makes Scala code much more concise and beautiful than Java.

So from now on I plan to have all my custom Java exception classes extend (the unchecked) `RuntimeException`.  My `catch` statements for these exceptions will generally only be at the top level of the thread in which they are running, or some other high-level code where I can handle the problem appropriately.  I am looking forward to simpler, cleaner code.
