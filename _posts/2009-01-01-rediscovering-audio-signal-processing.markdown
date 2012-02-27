---
date: '2009-01-01 19:01:36'
layout: post
slug: rediscovering-audio-signal-processing
status: publish
title: Rediscovering Audio Signal Processing
wordpress_id: '339'
categories:
- Consumer Media
- Futzing
- Personal
---

This Holiday Season our household acquired a tape deck with a USB connection.  (Thanks B & J!)  Now, finally we can convert some of our hundreds of old cassette tapes to MP3s.

The tape deck came with some allegedly easy-to-use recording software, but it seemed rather limited, so instead I used the excellent open source Audacity program.

It took a few iterations of trial and error before I found a satisfactory process.  It is an inevitably slow business because the tapes have to play in real time.  The post-processing is a bit laborious too.  There is a “silence finder” that you can use to break the recording into tracks but it requires some fiddling with to get good results.  And you have to add the track names manually as Audacity “labels” on a label track, with a UI that is rather clunky and slow.

Audacity has a noise removal capability in which you create a “noise profile” of a section that is meant to be silence, which you then use to remove noise from the entire recording.  It seemed to work well on one recording, but on another one it produced nasty high-pitched warbling artifacts, presumably due to some kind of aliasing.

For one tape, I had the problem that it had originally been recorded with Dolby, but my tape player did not have Dolby playback.  As a result, the unfiltered recording was too bright (high tones emphasized) and more noisy than it should have been at low volumes.  Unfortunately, Audacity does not have a Dolby decoder, probably because of patents, so I had to approximate it by using the Audacity equalization filter, but that did not do the correct volume-dependent filtering.

All in all, despite some frustration it was fun to dive back into the kind of audio signal (1-D)   processing that I had not done much of since college, though I have been doing quite a lot of work in the analogous worlds of image (2-D) and video (3-D) processing.

And now, I’m looking forward to listening to a lots of my old favorite music on my MP3 player.
 


