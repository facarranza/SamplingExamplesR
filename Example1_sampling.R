"
***************************************************************************
Example1_sampling.R
---------------------
Date                 : December 2019
Copyright            : (C) 2019 by Felipe Carranza
Email                : fcarranza@protonmail.com
***************************************************************************
*                                                                         *
*   This program is free software; you can redistribute it and/or modify  *
*   it under the terms of the MIT  License *
*                                                                         *
*                                                                         *
***************************************************************************

__author__ = 'Felipe Carranza'
__date__ = 'December 2019'
__copyright__ = '(C) 2019, Felipe Carranza'

#Showing how to find sample number and interval confidence"

"The proportion of workers with three years of experience who are inclined in the area of civil engineering is sought"

#you need the follow input values
NC=0.95 #confidence level
lamda=1.96 #z value by confidence level
error=0.03 #error level 
N=56500 #total
p=0.35 #proportion
q=1-p

#Find the number of samples
n=( (lamda^2) * N* p*q ) /   ((0.03^2) *(N-1) +  (lamda^2)*p*q)
n

#What happened if the error value change, Find the number of samples
error=0.05 #error level
n=( (lamda^2) * N* p*q ) /   ((0.05^2) *(N-1) +  (lamda^2)*p*q)
n
#the samples decrease

#How find the interval confidence?
error=sqrt(1-(955/N)) * sqrt((p*q)/(n-1))
error

(IntLeft=0.45 - (error*lamda))
(IntRight=0.45 + (error*lamda))