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
- Where applicable, the following functions to the aforementioned variables were applied to generate the final set of variables:
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
| 3     | tBodyAcc-mean() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Mean |
| 4     | tBodyAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Standard Deviation |
| 5      | tBodyAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 6      | tBodyAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 7      | tBodyAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 8      | tBodyAcc-sma() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 9      | tBodyAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 10      | tBodyAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 11      | tBodyAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 12      | tBodyAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 13      | tBodyAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 14      | tGravityAcc-mean-() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Mean |
| 15     | tGravityAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Standard Deviation |
| 16      | tGravityAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 17      | tGravityAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 18      | tGravityAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 19      | tGravityAcc-sma() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 20      | tGravityAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 21      | tGravityAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 22      | tGravityAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 23      | tGravityAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 24      | tGravityAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 25     | tBodyAccJerk-mean() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Mean |
| 28     | tBodyAccJerk-std() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Standard Deviation |
| 29      | tBodyAccJerk-mad() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity. | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 30      | tBodyAccJerk-max() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 31      | tBodyAccJerk-min() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 32      | tBodyAccJerk-sma() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 33      | tBodyAccJerk-energy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 34      | tBodyAccJerk-iqr() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 35      | tBodyAccJerk-entropy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 36      | tBodyAccJerk-arCoeff() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 37      | tBodyAccJerk-correlation() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 38    | tBodyGyro-mean()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Mean |
| 39    | tBodyGyro-std()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Standard Deviation |
| 40    | tBodyGyro-mad()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Median Absolute Deviation |
| 41    | tBodyGyro-max()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Maximum value in an array |
| 42    | tBodyGyro-min()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Minimum value in an array |
| 43    | tBodyGyro-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Signal Magnitude Area |
| 44    | tBodyGyro-energy()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Energy (Sum of squares divided by number of values) |
| 45    | tBodyGyro-iqr()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Inter-quartile range |
| 46    | tBodyGyro-entropy()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Signal Entropy |
| 47    | tBodyGyro-arCoeff()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Autorregresion coefficients with Burg order equal to 4 |
| 48    | tBodyGyro-correlation()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 49     | tBodyGyroJerk-mean() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Mean |
| 50     | tBodyAccJerk-std() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Standard Deviation |
| 51      | tBodyGyroJerk-mad() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 52      | tBodyGyroJerk-max() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 53      | tBodyGyroJerk-min() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 54      | tBodyGyroJerk-sma() | Time; Acceleration; Body | NA          | This is a Time-domain Jerk signal from gyroscope. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 55      | tBodyGyroJerk-energy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 56      | tBodyGyroJerk-iqr() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 57      | tBodyGyroJerk-entropy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 58      | tBodyGyroJerk-arCoeff() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 59      | tBodyGyroJerk-correlation() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 60     | tBodyAccMag-mean() | Time; Acceleration | NA         | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Mean |
| 61     | tBodyAccMag-std() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Standard Deviation |
| 62      | tBodyAccMag-mad() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 63      | tBodyAccMag-max() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 64      | tBodyAccMag-min() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 65      | tBodyAccMag-sma() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 66      | tBodyAccMag-energy() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 67      | tBodyAccMag-iqr() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 68      | tBodyAccMag-entropy() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 69      | tBodyAccMag-arCoeff() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 70      | tGravityAccMag-mean() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Mean |
| 71     | tGravityAccMag-std() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Standard Deviation |
| 72      | tGravityAccMag-mad() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 73      | tGravityAccMag-max() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 74      | tGravityAccMag-min() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 75      | tGravityAccMag-sma() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 76      | tGravityAccMag-energy() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 77      | tGravityAccMag-iqr() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 78      | tGravityAccMag-entropy() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 79      | tGravityAccMag-arCoeff() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 80     | tBodyAccJerkMag-mean() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Mean |
| 81     | tBodyAccJerkMag-std() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Standard Deviation |
| 82      | tBodyAccJerkMag-mad() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Median Absolute Deviation |
| 83      | tBodyAccJerkMag-max() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Maximum value in an array |
| 84      | tBodyAccJerkMag-min() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Minimum value in an array |
| 85      | tBodyAccJerkMag-sma() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Signal Magnitude Area |
| 86      | tBodyAccJerkMag-energy() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Energy (sum of squares divided by number of values |
| 87      | tBodyAccJerkMag-iqr() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 88      | tBodyAccJerkMag-entropy() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | The inter-quartile range |
| 89      | tBodyAccJerkMag-arCoeff() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | Auto-regression coefficients with Burg order = 4 |
| 90    | tBodyGyroMag-mean()    | Time  | NA   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Mean |
| 91    | tBodyGyroMag-std()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Standard Deviation |
| 92    | tBodyGyroMag-mad()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Median Absolute Deviation |
| 93    | tBodyGyroMag-max()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Maximum value in an array |
| 94    | tBodyGyroMag-min()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Minimum value in an array |
| 95    | tBodyGyroMag-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Signal Magnitude Area |
| 96    | tBodyGyroMag-energy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Energy (Sum of squares divided by number of values) |
| 97    | tBodyGyroMag-iqr()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Inter-quartile range |
| 98    | tBodyGyroMag-entropy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Signal Entropy |
| 99    | tBodyGyroMag-arCoeff()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Autorregresion coefficients with Burg order equal to 4 |
| 100    | tBodyGyroJerkMag-mean()    | Time  | NA   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Mean |
| 101    | tBodyGyroJerkMag-std()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Standard Deviation |
| 102    | tBodyGyroJerkMag-mad()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Median Absolute Deviation |
| 103    | tBodyGyroJerkMag-max()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Maximum value in an array |
| 104    | tBodyGyroJerkMag-min()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Minimum value in an array |
| 105    | tBodyGyroJerkMag-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Signal Magnitude Area |
| 106    | tBodyGyroJerkMag-energy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Energy (Sum of squares divided by number of values) |
| 107    | tBodyGyroJerkMag-iqr()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Inter-quartile range |
| 108    | tBodyGyroJerkMag-entropy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Signal Entropy |
| 109    | tBodyGyroJerkMag-arCoeff()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | Autorregresion coefficients with Burg order equal to 4 |
| 110   | fBodyAcc-mean()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Mean  |
| 111   | fBodyAcc-std()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Standard Deviation  |
| 112   | fBodyAcc-mad()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Median Absolute Deviation  |
| 113   | fBodyAcc-max()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Maximum value in an array  |
| 114   | fBodyAcc-min()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Minimum value in an array  |
| 115   | fBodyAcc-sma()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Signal Magnitude Area  |
| 116   | fBodyAcc-energy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Sum of squares divided by the number of values  |
| 117   | fBodyAcc-iqr()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Inter-quartile range  |
| 118   | fBodyAcc-entropy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Signal entropy  |
| 119   | fBodyAcc-maxInds()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Index of the frequency component with the largest magnitude  |
| 120   | fBodyAcc-meanFreq()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Mean  |
| 121   | fBodyAcc-skewness()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Mean  |
| 122   | fBodyAcc-kurtosis()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Mean  |
| 123   | fBodyAcc-bandsEnergy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | Mean  |


| Variable Name | Parent Category | Child variable(s) | Variable Description | Measurement Unit | Function(s) Applied |
|---------------|-----------------|-------------------|----------------------|------------------|---------------------|
| Subjects      | NA              | NA                | Each participant is referred to as a Subject, 30 in total | NA | NA |
| Activity      | NA              | NA                | Each of the 6 activities is recorded here, using a numeric value (from 1 - 6) | NA | NA |





