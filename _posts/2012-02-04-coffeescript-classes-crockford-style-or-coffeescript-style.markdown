---
date: '2012-02-04 23:40:35'
layout: post
slug: coffeescript-classes-crockford-style-or-coffeescript-style
status: publish
title: 'Coffeescript classes: Coffeescript-style or Crockford-style?'
wordpress_id: '5184'
categories:
- Programming
---

Here are two different ways of defining a class in Coffeescript:


{% highlight coffeescript %}
    class Container

      constructor: (@member) ->

      secret = 3

      dec = ->
        if secret > 0
          secret -= 1
          true
        else
          false

      service : ->
        if dec() then @member else null

    Container::stamp = (string) ->
      @member + string
{% endhighlight %}


{% highlight coffeescript %}
    Container = (param) ->

      @member = param
      secret = 3

      dec = ->
        if secret > 0
          secret -= 1
          true
        else
          false

      @service = ->
        if dec() then @member else null

      null

    Container::stamp = (string) ->
      @member + string
{% endhighlight %}


Both of these define a class called `Container` with


  * a public field `member` initialized by a constructor parameter
  * a private field `secret`
  * a private method `dec`
  * a privileged method `service`
  * a public method `stamp`


We can use both in the same way:
{% highlight coffeescript %}
    myContainer = new Container 'abc'

    console.log  myContainer.member      # abc
    console.log  myContainer.stamp 'def' # abcdef
    console.log  myContainer.service()   # abc
    console.log  myContainer.service()   # abc
    console.log  myContainer.service()   # abc
    console.log  myContainer.service()   # null
{% endhighlight %}

The version above on the left is the special class syntax that Coffeescript provides.  However, to me, this extra layer of syntax seems to depart a bit from the "Coffeescript is just JavaScript" philosophy.

The version above on the right is a translation of [Douglas Crockford's pattern](http://javascript.crockford.com/private.html), using his example.

Which is better?  The left is a bit easier to read for a newcomer to the language, but I find the right more elegant because there is less "magic".

And there is another advantage to the Crockford style.  Consider this small modification:
{% highlight coffeescript %}
    Container = (param, decrementBy) ->

      @member = param
      secret = 3

      dec = ->
        if secret > 0
          secret -= decrementBy
          true
        else
          false

      @service = ->
        if dec() then @member else null

      null

    Container::stamp = (string) ->
      @member + string
{% endhighlight %}
Here we have generalized the class by adding a `decrementBy` parameter to the constructor.  We do not copy this to a property, but any of the private or privileged methods in the class can use it. (Don't you love closures!).  There is no way to do this using the Coffeescript `class` syntax in a way that would prevent the decrementBy value being modified from outside the object.

I think I might switch to using the Crockford-style classes.



