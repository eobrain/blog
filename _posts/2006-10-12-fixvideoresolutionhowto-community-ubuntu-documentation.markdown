---
date: '2006-10-12 16:44:12'
layout: post
slug: fixvideoresolutionhowto-community-ubuntu-documentation
status: publish
ref: https://help.ubuntu.com/community/FixVideoResolutionHowto
title: FixVideoResolutionHowto - Community Ubuntu Documentation
wordpress_id: '115'
categories:
- Programming
---

One problem with my Ubunto installation on my laptop is that the max resolution I can set was 1024x768 which is pretty crowded for soing software development in Eclipse.  So I followed the instructions in [FixVideoResolutionHowto - Community Ubuntu Documentation](https://help.ubuntu.com/community/FixVideoResolutionHowto):


    sudo cp /etc/X11/xorg.conf /etc/X11/xorg.conf.custom
    sudo sh -c 'md5sum /etc/X11/xorg.conf > /var/lib/x11/xorg.conf.md5sum'
    sudo dpkg-reconfigure xserver-xorg


**update**
Well, that worked, but not without problems.  I was asked a daunting amount of questions by the `dpkg-reconfigure xserver-xorg` program.  When asked what were the allowed resolutions I just selected everything -- the instructions seemed to suggest that was safe.  I suppose I should have rebooted into Windows to check what are reeally allowed.  Now I do get Ubuntu running in higher resolution, though a bit distorted I think because the aspect ratio is not quite right.  However if I try to change the resolution using the Preferences UI the computer freezes and has to be hard-reset.

**update 2**
Firstly, I forgot to mention that I needed to to a CTRL-ALT-BACKSPACE to restart X to see the effect of the above change.

Secondly, _a strong warning_: when I tried to do this on a desktop machine on which I was installing Ubuntu a few days later it killed X and threw me back to the command line.  I think it was because I chose the option to automatically detect the monitor.  In that case all I really wanted to do was increase the monitor refresh rate to avoid an annoying flickr.  So after the above technique failed I instead I edited the `/etc/X11/xorg.conf` config script modifing the monitor refresh rate  line to

    VertRefresh     43-85

and restarted X.  That seems to have worked fine.
