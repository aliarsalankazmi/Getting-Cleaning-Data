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
In our data set, such measurements have been recorded over 3 axes, and in total, the data set contains 563 variables over 10299 records. The variables have been explained in the [Variable Description section](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/codebook.md#variable-description), below.

*Resources for further learning:*
- *[Accelerometer in moderate depth](http://www.sensorwiki.org/doku.php/sensors/accelerometer)*
- *[Gyroscope in moderate depth](www.sensorwiki.org/doku.php/sensors/gyroscope)*
- *[Accelerometer and Gyroscope in depth](http://www.instructables.com/id/Accelerometer-Gyro-Tutorial/?ALLSTEPS)*


## Variable Description ##

In the previous section, two devices were briefly covered (an accelerometer and a gyroscope) that were used to generate sensor signals for 6 activities performed by participants. Since our data set has been derived from sensor signals produced by these devices, it is appropriate to discuss our data variables in context of the two devices.

![Data Overview](https://cloud.githubusercontent.com/assets/5294000/4641659/141d636e-543b-11e4-8aa5-123f58e981e1.PNG "Overview of Data set")

The flow diagram above tries to represent the data set as a hierarchical structure, in order to facilitate understanding of it. To explain the variable generation process more specifically:
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

The following table explains the variables present in our data set while also categorising them to facilitate understanding, in the same manner as depicted in our flow diagram. They are arranged in the same order as present in the data set.

| Index | Variable name | Parent Category | Child Variable(s) | Variable Description | Unit | Function(s) applied |
|-------|---------------|-----------------|-------------------|----------------------|------|---------------------|
| 1     | Subjects       | NA              | NA               | Each participant is referred to as a Subject, 30 in total | NA | NA
| 2     | Activity       | NA              | NA               | Each of the 6 activities is recorded here, using a numeric value (from 1 - 6) | NA | NA |
| 3     | tBodyAcc-mean() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Mean |
| 4     | tBodyAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Standard Deviation |
| 5      | tBodyAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Median Absolute Deviation |
| 6      | tBodyAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Maximum value in an array |
| 7      | tBodyAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Minimum value in an array |
| 8      | tBodyAcc-sma() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Signal Magnitude Area |
| 9      | tBodyAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 10      | tBodyAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Inter-quartile range |
| 11      | tBodyAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | The inter-quartile range |
| 12      | tBodyAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 13      | tBodyAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 14      | tGravityAcc-mean-() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Mean |
| 15     | tGravityAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Standard Deviation |
| 16      | tGravityAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Median Absolute Deviation |
| 17      | tGravityAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Maximum value in an array |
| 18      | tGravityAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Minimum value in an array |
| 19      | tGravityAcc-sma() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Signal Magnitude Area |
| 20      | tGravityAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 21      | tGravityAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Inter-quartile range |
| 22      | tGravityAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | The inter-quartile range |
| 23      | tGravityAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 24      | tGravityAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes -- X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (where g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 25     | Activity       | NA              | NA               | Each of the 6 activities is recorded here, using a numeric value (from 1 - 6) | NA | NA |
| 26     | tBodyAccJerk-mean() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Mean |
| 27     | tBodyAccJerk-std() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Standard Deviation |
| 28      | tBodyAccJerk-mad() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity. | g (where g = 9.8 m/s^2) | Median Absolute Deviation |
| 29      | tBodyAccJerk-max() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Maximum value in an array |
| 30      | tBodyAccJerk-min() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Minimum value in an array |
| 31      | tBodyAccJerk-sma() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Signal Magnitude Area |
| 32      | tBodyAccJerk-energy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 33      | tBodyAccJerk-iqr() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Inter-quartile range |
| 34      | tBodyAccJerk-entropy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | The inter-quartile range |
| 35      | tBodyAccJerk-arCoeff() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 36      | tBodyAccJerk-correlation() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes -- X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (where g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
