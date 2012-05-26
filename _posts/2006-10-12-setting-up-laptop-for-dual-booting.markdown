---
date: '2006-10-12 15:04:15'
layout: post
slug: setting-up-laptop-for-dual-booting
status: publish
ref: http://www.ubuntu.com/download
title: Setting up laptop for dual booting
wordpress_id: '112'
categories:
- Programming
---

Well, I just received a new laptop at work and our IT department put their standard Windows XP image onto it.  I decided I wanted to be able to also run Linux on this machine.

Step 1: Before I even logged into Windows for the first time I rebooted  off a Partition Magic CD and shrunk the Windows partition to half the size of the 93 GB disk.  I then added a small 2GB FAT partition where I will be able to share files between Linux and Windows.  The remaining space I left unallocated.

Step 2: I logged into Windows got on the web and downloaded [the latest Ubuntu ISO](http://www.ubuntu.com/download) which was 6.06 LTS (Dapper Drake). And burned a CD.

Step 3: I rebooted off the Ubuntu CD and clicked the install icon on the desktop.  I chose the option to use the remaining empty space (**not** overwrite whole disk).  After the installation completed and I rebooted, everything worked fine.  By default it boots into Linux, but there is an option to choose Windows instead.

Step 4: I did a little customization.  I used the Applications->Add/Remove menu item to add Thunderbird which I am more familiar with than the Evolution mail client that comes with Ubuntu.  I also used this nice graphical installer to install Emacs which is of course the One True Editor.

There, that was not too hard.

