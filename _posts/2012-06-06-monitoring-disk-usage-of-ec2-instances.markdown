---
layout: post
ref: http://code.google.com/p/aws-missing-tools/
categories:
- Programming
---

Amazon AWS has some great monitoring tools for your cloud instances and other parts of your AWS cloud infrastructure.  However one notable missing out-of-the box feature is the ability to monitor disk usage of your instances, something crucial for reliable large-scale deployment.

However it turns out there is a way to add custom metrics, including disk usage, that incorporate smoothly into your AWS monitoring dashboard:
* [Amazon CloudWatch Monitoring Scripts for Linux – Amazon CloudWatch](http://docs.amazonwebservices.com/AmazonCloudWatch/latest/DeveloperGuide/mon-scripts-perl.html)
* [aws-missing-tools – Extensions to Amazon’s AWS CLI Tools – Google Project Hosting](http://code.google.com/p/aws-missing-tools/)
