---
date: '2010-02-14 13:05:58'
layout: post
slug: debunking-airnergy-with-some-back-of-the-envelope-calculations
status: publish
ref: http://www.engadget.com/2010/01/09/airnergy-wifi-power-system-gives-rca-a-reason-to-exist-video/
title: Debunking Airnergy with some back-of-the-envelope calculations
wordpress_id: '738'
categories:
- Science
---

I have seen several reverences to [Airnergy device by RCA](http://www.engadget.com/2010/01/09/airnergy-wifi-power-system-gives-rca-a-reason-to-exist-video/) that claims to recharge a battery by harvesting WiFi signals from the air.

That sounded a bit fishy to me.  Let's look at some numbers.  First, how much power does a WiFi hotspot put out? According to [moonblinkwifi.com](http://www.moonblinkwifi.com/dbm_to_watt_conversion.cfm) a typical output is 200 mW.

Now say this device is 3 metres (10 feet) away from the hotspot.  This 200 mW of power will be spread on the surface of a 3 metre-radius sphere with a surface area of about 110 square metres.

Now, this device looks to be about 10cm X 5cm which is about 1/22000 of the area of the sphere across which the 200 mW is spread.  Which means the amount of power hitting the device is about 9.1 μW

Now according to the Wikipedia [battery article](http://en.wikipedia.org/wiki/Battery_%28electricity%29#Battery_capacity_and_discharging) a small AAA rechargeable battery stores about 6700 J of energy.  How long would it take to recharge a AAA battery with our 9.1 μW of power, assuming you could miraculously capture 100% of the power?

The answer: 24 years.

OK, there are some approximations here.  The WiFi antenna does not actually broadcast equally in all directions, and you might have the device closer to the antenna, and there might be multiple WiFi signals you could receive.  On the other hand, you probably want to recharge a battery that has more capacity than a little AAA battery.

So I call bullshit.  A battery charger that takes on the order of a decade to recharge a battery, is a useless device.

The sad thing is how many tech journalist sites reported uncritically on the Airnergy.
