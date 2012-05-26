---
date: '2006-10-14 12:59:43'
layout: post
slug: mounting-windows-disks-under-linux
status: publish
ref: http://ubuntuguide.org/wiki/Dapper#How_to_mount_Windows_partitions_.28FAT.29_on_boot-up.2C_and_allow_all_users_to_read.2Fwrite
title: Mounting windows disks under Linux
wordpress_id: '117'
categories:
- Programming
---

I followed [these instructions](http://ubuntuguide.org/wiki/Dapper#How_to_mount_Windows_partitions_.28FAT.29_on_boot-up.2C_and_allow_all_users_to_read.2Fwrite) for how to mount a FAT partition read-write for communication between Windows and Linux on my laptop.   I also followed the instructions further down to mount the main windows NTFS partition read-only.

It is a pity that the Ubuntu System->Administration-Disks->Partitions GUI does not allow you to do this.  THough at least I was able to use the GUI to find out the device names of my partitions.

