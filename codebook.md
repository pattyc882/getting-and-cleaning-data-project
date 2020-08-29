---
title: "Codebook"
output: html_document
---

Variables



subjectnumber - ID of subject measured
activity - activity performed, walking, walking up stairs, walking down stairs, sitting, standing or laying                               

The following variable names are build from parts.  The first portion is time or frequency.  "Time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise." (reference - featuresinfo.text included in dataset)  Frequecy denotes a measurement of the frequency.

The second portion denotes whether the  measurement is taken on body or gravity acceleration.

The third portion denotes whether the measurement was taken from the phone's accelerometer or gyroscope.

Some variable include "jerk" next.  These were derived in time based on linear acceleration and angular velocity.  

Mag refers to the magnitude of the signal.

Mean and std define whether the variable is a mean or standard deviation.

X, Y, Z define the axis of the measurement.

All values are means of original data set grouped by subject ID and activity.


timebodyaccelerometer-mean()-X
timebodyaccelerometer-mean()-Y                
timebodyaccelerometer-mean()-Z
timebodyaccelerometer-std()-X                 
timebodyaccelerometer-std()-Y
timebodyaccelerometer-std()-Z                 
timegravityaccelerometer-mean()-X
timegravityaccelerometer-mean()-Y             
timegravityaccelerometer-mean()-Z
timegravityaccelerometer-std()-X              
timegravityaccelerometer-std()-Y
timegravityaccelerometer-std()-Z              
timebodyaccelerometerjerk-mean()-X
timebodyaccelerometerjerk-mean()-Y            
timebodyaccelerometerjerk-mean()-Z
timebodyaccelerometerjerk-std()-X             
timebodyaccelerometerjerk-std()-Y
timebodyaccelerometerjerk-std()-Z             
timebodygyroscope-mean()-X
timebodygyroscope-mean()-Y                    
timebodygyroscope-mean()-Z
timebodygyroscope-std()-X                     
timebodygyroscope-std()-Y
timebodygyroscope-std()-Z                     
timebodygyroscopejerk-mean()-X
timebodygyroscopejerk-mean()-Y                
timebodygyroscopejerk-mean()-Z
timebodygyroscopejerk-std()-X                 
timebodygyroscopejerk-std()-Y
timebodygyroscopejerk-std()-Z                 
timebodyaccelerometermag-mean()
timebodyaccelerometermag-std()                
timegravityaccelerometermag-mean()
timegravityaccelerometermag-std()             
timebodyaccelerometerjerkmag-mean()
timebodyaccelerometerjerkmag-std()            
timebodygyroscopemag-mean()
timebodygyroscopemag-std()                    
timebodygyroscopejerkmag-mean()
timebodygyroscopejerkmag-std()
fastfourierbodyaccelerometer-mean()-X
fastfourierbodyaccelerometer-mean()-Y         
fastfourierbodyaccelerometer-mean()-Z
fastfourierbodyaccelerometer-std()-X
fastfourierbodyaccelerometer-std()-Y
fastfourierbodyaccelerometer-std()-Z
fastfourierbodyaccelerometer-meanfreq()-X
fastfourierbodyaccelerometer-meanfreq()-Y   
fastfourierbodyaccelerometer-meanfreq()-Z
fastfourierbodyaccelerometerjerk-mean()-X 
fastfourierbodyaccelerometerjerk-mean()-Y
fastfourierbodyaccelerometerjerk-mean()-Z
fastfourierbodyaccelerometerjerk-std()-X
fastfourierbodyaccelerometerjerk-std()-Y
fastfourierbodyaccelerometerjerk-std()-Z
fastfourierbodyaccelerometerjerk-meanfreq()-X 
fastfourierbodyaccelerometerjerk-meanfreq()-Y
fastfourierbodyaccelerometerjerk-meanfreq()-Z 
fastfourierbodygyroscope-mean()-X
fastfourierbodygyroscope-mean()-Y             
fastfourierbodygyroscope-mean()-Z
fastfourierbodygyroscope-std()-X              
fastfourierbodygyroscope-std()-Y
fastfourierbodygyroscope-std()-Z
fastfourierbodygyroscope-meanfreq()-X
fastfourierbodygyroscope-meanfreq()-Y
fastfourierbodygyroscope-meanfreq()-Z
fastfourierbodyaccelerometermag-mean()
fastfourierbodyaccelerometermag-std()
fastfourierbodyaccelerometermag-meanfreq()    
fastfourierbodyaccelerometerjerkmag-mean()
fastfourierbodyaccelerometerjerkmag-std()
fastfourierbodyaccelerometerjerkmag-meanfreq()
fastfourierbodygyroscopemag-mean()            
fastfourierbodygyroscopemag-std()
fastfourierbodygyroscopemag-meanfreq()        
fastfourierbodygyroscopejerkmag-mean()
fastfourierbodygyroscopejerkmag-std()         
fastfourierbodygyroscopejerkmag-meanfreq()    
