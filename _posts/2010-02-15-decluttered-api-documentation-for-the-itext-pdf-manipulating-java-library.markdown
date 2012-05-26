---
date: '2010-02-15 11:50:48'
layout: post
slug: decluttered-api-documentation-for-the-itext-pdf-manipulating-java-library
status: publish
ref: http://bit.ly/itextapi
title: Decluttered API documentation for the iText PDF-manipulating Java library
wordpress_id: '750'
categories:
- Programming
---

The iText library is a great resource for generating and manipulating PDF files.  However its API is very complex and there is a notable lack of good online tutorial material.  So you often must resort to plowing through the Javadoc-generated API documentation trying to figure out how to use the library.

Doing that, you might be annoyed at the fact that the API available online does not just include the public and protected members, but also includes package-private and private members.  While this would be useful to people working on the internals of iText, it is just a lot of useless clutter to most people who are just going to use the API.

So I regenerated the Javadoc from the 5.0.1 source, using the default settings which hides the private stuff.  You can access this at:

  [http://eamonn.org/itextpdf-5.0.1-api/](http://bit.ly/itextapi)



