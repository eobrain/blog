---
date: '2004-07-06 11:54:37'
layout: post
slug: memory-footprint-of-java-objects
status: publish
ref: http://www.javaworld.com/javatips/jw-javatip130_p.html
title: Memory footprint of Java Objects.
wordpress_id: '26'
---

A C/C++ programmer, used to using `sizeof`,  might be suprised how hard it is to figure out the memory footprint of Java object.  Of course relying on memory sizes is very bad for portability, but sometimes when tuning applications you do need this information.


[This article](http://www.javaworld.com/javatips/jw-javatip130_p.html) walks through some measurments that reveal:


Object
Size (bytes)
Overhead (bytes)

Overhead (percent)


Object
 8


Integer
16
12
 300%


Long
16
8
 100 %


int[n]
16 + 4*n

16


char[n]
16 + 2*n
16


String, length n
40 + 2*n
40


