---
date: '2004-07-24 12:42:09'
layout: post
slug: clustering-algorithms-and-dimensional-reduction
status: publish
title: Clustering Algorithms and Dimensional Reduction
wordpress_id: '29'
---

I am giving my self a crash course on some data mining techniques for a project I am working on. Here are some things I found useful.

[In Matteo Matteucci's site at Politechnico di Milano](http://www.elet.polimi.it/upload/matteucc/Clustering/tutorial_html/index.html) is a nice little introductory tutorial on clustering algorthms, complete with interactive demos.  A similar page is [Tariq Rashid's University of Bristol page](http://www.cs.bris.ac.uk/home/tr1690/documentation/fuzzy_clustering_initial_report/node11.html)

Also [François Labelle at McGill](http://www.cs.mcgill.ca/%7Esqrt/dimr/dimreduction.html) has a nice overview of reducing the dimensionality of multivariate data using Principal Component Analysis, also with interactive demos which give a nice intuitive feel for the technique. Mathematica supports principal component analysis, so given a data matrix with the each observation in a row, and each column a dimension I found could do the following to get a nice two dimensional view of the multi-dimenstional data:


    <<Statistics`MultiDescriptiveStatistics`
    rotated = PrincipalComponents[Transpose[data]];
    rotated2d = Table[ {rotated〚i,1〛, rotated〚i,2〛}, {i,1,n}];
    ListPlot[rotated2d]

