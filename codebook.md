Codebook
====================================================

## Data set Description ##

The Human Activity Recognition data set was generated as a result of an experiment involving 30 participants (labelled in the data set as *Subjects*), each performing the following 6 activities:
- Walking
- Walking Upstairs
- Walking Downstairs
- Sitting
- Standing
- Laying

As the participants performed the aforementioned activities, a smartphone (Samsung Galaxy S II) tied to the waist of each participant recorded sensor signals for various metrics, using its embedded [Accelerometer](http://en.wikipedia.org/wiki/Accelerometer) and [Gyroscope](http://en.wikipedia.org/wiki/Gyroscope). An accelerometer is an inertial sensor that measures acceleration by making use of an Inertial or Fictitious force; A gyroscope is a mechanical device that measures orientation and angular velocity, using Earth's gravity. When combined, accelerometers and gyroscopes can be used for a full 6 Degree of Freedom motion tracking system. Also, accelerometers and gyroscopes can take measurements over 1, 2, or 3 axes, depending upon requirements. 
In the current data set, such measurements have been recorded over 3 axes, and in total, the data set contains 88 variables/columns over 180 records (30 Subjects performing 6 activities).

*Resources for further learning:*
- *[Accelerometer in moderate depth](http://www.sensorwiki.org/doku.php/sensors/accelerometer)*
- *[Gyroscope in moderate depth](www.sensorwiki.org/doku.php/sensors/gyroscope)*
- *[Accelerometer and Gyroscope in depth](http://www.instructables.com/id/Accelerometer-Gyro-Tutorial/?ALLSTEPS)*


## Variable Description ##

In the previous section, two devices were briefly covered (an accelerometer and a gyroscope) that were used to generate sensor signals for 6 activities performed by participants. Since our data set has been derived from sensor signals produced by these devices, it is appropriate to discuss our data variables in context of the two devices.

![Data Overview](https://cloud.githubusercontent.com/assets/5294000/4641659/141d636e-543b-11e4-8aa5-123f58e981e1.PNG "Overview of Data set")

The flow diagram above tries to represent the data set as a hierarchical structure with the objective of facilitating understanding of the data set. To explain the variable generation process more specifically:
- Raw signals from an accelerometer and a gyroscope were generated
- The raw signals were **Time-domain** signals (captured at a constant rate of 50 Hz), and to some of these signals a Fast Fourier Transformation was applied to generate **Frequency-domain** signals.
- The Time-domain signals from an accelerometer comprised of **Tri-axial Acceleration signals**, which were partitioned into **Body acceleration** and **Gravity acceleration** signals using a low-pass Butterworth filter with a corner frequency of 0.3 Hz. These signals are represented in the unit g, which is defined as 9.8 m/s^2.
- The Time-domain signals from a gyroscope comprised of signals that measured the rotational velocity of a body. These signals are represented in the unit deg/sec.
- The body acceleration and angular velocity were used to generate **Jerk** signals.
- The **Magnitude** value of certain signals was also calculated by using the Euclidean norm.
- **Frequency-domain** signals, as derived by applying a Fast Fourier Transformation, were generated for only some of the signals from Time-domain. These include Body acceleration, Body acceleration Magnitude, Body acceleration Jerk, Body acceleration Jerk Magnitude, Gyroscope Body and Gyroscope Body Jerk Magnitude signals.
- Where applicable, the following values for the aforementioned variables were calculated to generate the final variable set:
    - Mean
    - Std: Standard Deviation
    - Median Absolute Deviation
    - Max: The largest value in array
    - Min: The smallest value in array
    - SMA: Signal Magnitude Area
    - Energy: Sum of the squares divided by the number of values
    - IQR: The inter-quartile range
    - Entropy: The signal entropy
    - ArCoeff: Autorregresion coefficients with Burg order equal to 4
    - Correlation: Correlation coefficient between two signals
    - MaxInds: Index of the frequency component with the largest magnitude
    - MeanFreq: Weighted average of the frequency components to obtain a mean frequency
    - Skew: Skew of the frequency domain signal
    - Kurtosis: Kurtosis of the frequency domain signal
    - BandsEnergy: Energy of a frequency interval within the 64 bins of the Fast Fourier Transformation of each window
    - Angle: Angle between two vectors
