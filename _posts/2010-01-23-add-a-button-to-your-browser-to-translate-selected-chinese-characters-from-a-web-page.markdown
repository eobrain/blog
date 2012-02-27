---
date: '2010-01-23 22:17:40'
layout: post
slug: add-a-button-to-your-browser-to-translate-selected-chinese-characters-from-a-web-page
status: publish
title: Add a button to your browser to translate selected Chinese characters from
  a web page
wordpress_id: '643'
categories:
- Futzing
---

You can now use Google to do some pretty readable translation of Chinese-language web sites.

However if you are trying to learn Chinese it would be better to be able to look at a page in its original Chinese, try to figure out the meaning and pronunciation of the characters, and to selectively translate the just ones you do not understand.  Hopefully, just like using flashcards, you would eventually learn more and more characters.

As a first step I built a simple crude tool to do this.  It is a little web-browser add-on button (a bookmarklet).

(So far, it seems to only work properly on Firefox.  I have had some problems on Chrome and IE.  I have not yet tested it on Safari.)



To install it, drag this button [Explain Chinese](javascript:/*Copyright © 2010 Eamonn O’Brien-Strain eob@well.com */(function(){var s=window.getSelection?window.getSelection().toString():document.selection.createRange().text;window.open('http://translate.google.com/translate_t?hl=&text='+s+'&sl=zh-CN&tl=en#','a');window.open('http://www.mdbg.net/chindict/chindict.php?page=worddict&wdrst=0&wdqb='+s,'b');})()) into your browser's links bar or bookmark bar.  You should end up with an "Explain Chinese" button in your browser.

To use this button, highlight some Chinese characters, such as these ones **你好**, and click the "Explain Chinese" button.  It should open up two new pages with translations of the characters, one by Google which usually gives a fairly idiomatic translation of the text, and another one by the [MDBG](http://www.mdbg.net/chindict/chindict.php) dictionary which breaks the translation down into the individual words and characters, and gives the pinyin and audio pronunciation.

Enjoy!

(Properly formatted version of this article is at http://www.eamonn.org/blog/?p=643 )

