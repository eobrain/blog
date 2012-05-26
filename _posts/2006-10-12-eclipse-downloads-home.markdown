---
date: '2006-10-12 15:45:28'
layout: post
slug: eclipse-downloads-home
status: publish
ref: http://www.eclipse.org/downloads/
title: Eclipse downloads home
wordpress_id: '114'
categories:
- Programming
---

Next I went to the [Eclipse downloads home](http://www.eclipse.org/downloads/) to get the next vital piece of Java development kit.  I just extracted the Linux archive file into a subdirectory of my home directory, navigated into that folder and executed it.  It started up right away using the 1.4.2 GCJ Java SDK that comes with Ubuntu.


The next thing I added to Eclipse was subversion support.  First I went to Window->Preferences->Install/Update in Eclipse to add the HTTP proxy for my corporate firewall.  Then I followed the [subeclipse instructions](http://subclipse.tigris.org/install.html) for downlading and installing from within Eclipse.

I also need CVS for some projects but for some reason I could not get that to work from within Eclipse even after I had installed the system CVS from the Ubuntu installer.  So in the end I used the command-line CVS to check out my module and din an Import from within Eclipse to read it in.

I used Windows->Preferences->Java-Installed JREs to add my newly installed Sun JDK 1.5.  Then I set the Java compiler level to 5.0 so that my code would compile OK.

