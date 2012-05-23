---
date: '2010-01-07 16:46:31'
layout: post
slug: scala-tip-making-it-easier-to-add-attributes-to-an-xml-element
status: publish
title: 'Scala tip: Making it easier to add attributes to an XML element'
wordpress_id: '609'
categories:
- Programming
---

In most respects Scala makes it very easy to handle XML, but there are a few things that are hard to do.  One is changing the value of an existing attribute on an element, or adding a new attribute to an element.

The simplest way I found to add new attributes `c="CCC" d="DDD"` is to do:


        val modified = elem %
                        new UnprefixedAttribute("c","CCC",Null) %
                        new UnprefixedAttribute("d","DDD",Null)


This is a bit verbose.  What if instead you could do


        val modified = elem % Map( "c"->"CCC", "d"->"DDD" )


Well you can, if you add the following implicit somewhere in scope:


        implicit def pimp(elem:Elem) = new {
          def %(attrs:Map[String,String]) = {
            val seq = for( (n,v) <- attrs ) yield new UnprefixedAttribute(n,v,Null)
            (elem /: seq) ( _ % _ )
          }
        }


This uses the library pimping pattern [discussed elsewhere](http://www.scalaclass.com/node/14) to effectively add a new version of the `%` operator to Elem that takes a Map of attributes.

The new `%` operator uses a for-yield construct to convert the attrs Map into a sequence of  UnprefixedAttribute objects.  It then uses the `/:` fold operator to repeatedly apply the built-in `%` operator, reducing down to an element with all the attributes added.



