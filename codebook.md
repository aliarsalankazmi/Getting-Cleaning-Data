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

As the participants performed the aforementioned activities, a smartphone (Samsung Galaxy S II) tied to the waist of each participant recorded sensor signals for various metrics, using its embedded [Accelerometer](http://en.wikipedia.org/wiki/Accelerometer) and [Gyroscope](http://en.wikipedia.org/wiki/Gyroscope). An accelerometer is an inertial sensor that measures acceleration by making use of an Inertial or Fictitious force; A gyroscope is a mechanical device that measures orientation and angular velocity, using Earth's gravity.  
When combined, accelerometers and gyroscopes can be used for a full 6 Degree of Freedom motion tracking system. In addition, accelerometers and gyroscopes can take measurements over 1, 2, or 3 axes, where selection of 2 axes enable collection of data over 2 dimensions, while a choice of 3 axes provide data over 3 dimensions. In the Human Activity Recognition data set, measurements have been recorded over 3 axes. In total, the data set contains 563 variables over 10299 records. These variables have been explained in the [Variable Description section](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/codebook.md#variable-description), below.

*Resources for further learning:*
- *[Sensor wiki entry for Accelerometers](http://www.sensorwiki.org/doku.php/sensors/accelerometer)*
- *[Sensor wiki entry for Gyroscopes](www.sensorwiki.org/doku.php/sensors/gyroscope)*
- *[How Accelerometers and Gyroscopes work - In Depth](http://www.instructables.com/id/Accelerometer-Gyro-Tutorial/?ALLSTEPS)*


## Variable Description ##

In the previous section, two devices were briefly covered (an accelerometer and a gyroscope) that were used to generate sensor signals for 6 activities performed by participants. Since our data set has been derived from sensor signals produced by these devices, it is appropriate to discuss our data variables in context of the two devices.

### The Variable Generation process ###

![Data Overview](https://cloud.githubusercontent.com/assets/5294000/4641659/141d636e-543b-11e4-8aa5-123f58e981e1.PNG "Overview of Data set")

The flow diagram above tries to represent the data set as a hierarchical structure, in order to facilitate understanding of it. To explain the variable generation process specifically:

1. Raw signals from an accelerometer and a gyroscope were generated,
2. The raw signals were **Time-domain** signals (captured at a constant rate of 50 Hz), and to some of these signals a Fast Fourier Transformation was applied to generate **Frequency-domain** signals,
3. The Time-domain signals from an *accelerometer* comprised of **Tri-axial Acceleration signals**, which were partitioned into **Body acceleration** and **Gravity acceleration** signals using a low-pass Butterworth filter with a corner frequency of 0.3 Hz *(These signals are measured in the g, where 1g =  9.8 m/s^2)*.
4. The Time-domain signals from a *gyroscope* comprised of signals measuring the rotational velocity of a body *(These signals are measured in deg/sec)*.
5. The body acceleration and angular velocity were used to derive **Jerk** signals.
6. The **Magnitude** for certain signals was calculated by using the Euclidean norm.
7. **Frequency-domain** signals, as derived by applying a *Fast Fourier Transformation*, were generated for only some of the signals from Time-domain. These include Body acceleration, Body acceleration Magnitude, Body acceleration Jerk, Body acceleration Jerk Magnitude, Gyroscope Body and Gyroscope Body Jerk Magnitude signals.
8. Where applicable, the following functions to the aforementioned variables were applied to generate the final set of variables:
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

### Table of Variables ###

The following table lists and explains all variables present in the data set. To help in understanding the variables, they have also been categorised in the same manner as in the Flow diagram, displayed above.   
Users who may wish to look up a variable seen in the data set may use the ```Find``` function by pressing ```CTRL + F```, and entering the name of a variable *without including the axis name for which the variable shows data*.   
For example, entering ```tBodyAcc-mean()``` and **not** ```tBodyAcc-mean()-X```. This is important because although variables are named in the data set as ```tBodyAcc-mean()-X```, the table below combines all axes into a single variable to reduce repetition.

| Index | Variable name | Source | Axes Used | Variable Description | Unit | Range | Function(s) applied |
|:-------|:---------------|:--------|:-----------|:----------------------|:------|:-------|:---------------------|
| 1     | Subjects      | NA     | NA        | Each participant is referred to as a Subject, 30 in total | NA | 1 to 6 | NA |
| 2     | Activity       | NA              | NA               | Each of the 6 activities is recorded here, using a numeric value (1 is Walking, 2 is Walking Upstairs, 3 is Walking Downstairs, 4 is Sitting, 5 is Standing, 6 is Laying  | NA | Walking = 1722; Walking Upstairs = 1544; Walking Downstairs = 1406; Sitting = 1777; Standing = 1906; Laying = 1944 | NA |
| 3     | tBodyAcc-mean() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1| Mean |
| 4     | tBodyAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 5      | tBodyAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 6      | tBodyAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 7      | tBodyAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 8      | tBodyAcc-sma() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 9      | tBodyAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 10      | tBodyAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | Inter-quartile range |
| 11      | tBodyAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's Entropy |
| 12      | tBodyAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 13      | tBodyAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Body acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 14      | tGravityAcc-mean-() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 15     | tGravityAcc-std() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 16      | tGravityAcc-mad() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 17      | tGravityAcc-max() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 18      | tGravityAcc-min() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 19      | tGravityAcc-sma() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 20      | tGravityAcc-energy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 21      | tGravityAcc-iqr() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 22      | tGravityAcc-entropy() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 23      | tGravityAcc-arCoeff() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 24      | tGravityAcc-correlation() | Time; Acceleration | X; Y; Z          | This is a Time-domain, Gravity acceleration signal from each of the three axes - X-axis, Y-axis, or Z-axis. Whether such a variable records signal on X or Y-axis can be identified by the name of axis appended at the end of this variable | g (1g = 9.8 m/s^2) | -1 to 1 | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 25     | tBodyAccJerk-mean() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 28     | tBodyAccJerk-std() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 29      | tBodyAccJerk-mad() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity. | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 30      | tBodyAccJerk-max() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 31      | tBodyAccJerk-min() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 32      | tBodyAccJerk-sma() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 33      | tBodyAccJerk-energy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 34      | tBodyAccJerk-iqr() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 35      | tBodyAccJerk-entropy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 36      | tBodyAccJerk-arCoeff() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 37      | tBodyAccJerk-correlation() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain, Body acceleration Jerk signal from each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 38    | tBodyGyro-mean()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Mean |
| 39    | tBodyGyro-std()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Standard Deviation |
| 40    | tBodyGyro-mad()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Median Absolute Deviation |
| 41    | tBodyGyro-max()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Maximum value in an array |
| 42    | tBodyGyro-min()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Minimum value in an array |
| 43    | tBodyGyro-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Signal Magnitude Area |
| 44    | tBodyGyro-energy()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Energy (Sum of squares divided by number of values) |
| 45    | tBodyGyro-iqr()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Inter-quartile range |
| 46    | tBodyGyro-entropy()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | The signal's Entropy |
| 47    | tBodyGyro-arCoeff()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Autorregresion coefficients with Burg order equal to 4 |
| 48    | tBodyGyro-correlation()    | Time  | X; Y; Z   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 49     | tBodyGyroJerk-mean() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 50     | tBodyAccJerk-std() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 51      | tBodyGyroJerk-mad() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 52      | tBodyGyroJerk-max() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 53      | tBodyGyroJerk-min() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 54      | tBodyGyroJerk-sma() | Time; Acceleration; Body | NA          | This is a Time-domain Jerk signal from gyroscope. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 55      | tBodyGyroJerk-energy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 56      | tBodyGyroJerk-iqr() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 57      | tBodyGyroJerk-entropy() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 58      | tBodyGyroJerk-arCoeff() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 59      | tBodyGyroJerk-correlation() | Time; Acceleration; Body | X; Y; Z          | This is a Time-domain Jerk signal from gyroscope recorded for each of the three axes - X-axis, Y-axis, or Z-axis. A jerk signal is derived by using body acceleration and angular velocity | g (1g = 9.8 m/s^2) | -1 to 1 | Correlation coefficient as obtained by correlating values from each of the axes to others (e.g. X with Y, X with Z, and so on) |
| 60     | tBodyAccMag-mean() | Time; Acceleration | NA         | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 61     | tBodyAccMag-std() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 62      | tBodyAccMag-mad() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 63      | tBodyAccMag-max() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 64      | tBodyAccMag-min() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 65      | tBodyAccMag-sma() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 66      | tBodyAccMag-energy() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 67      | tBodyAccMag-iqr() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 68      | tBodyAccMag-entropy() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 69      | tBodyAccMag-arCoeff() | Time; Acceleration | NA          | This is a Time-domain, Body acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 70      | tGravityAccMag-mean() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 71     | tGravityAccMag-std() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 72      | tGravityAccMag-mad() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 73      | tGravityAccMag-max() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 74      | tGravityAccMag-min() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 75      | tGravityAccMag-sma() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 76      | tGravityAccMag-energy() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 77      | tGravityAccMag-iqr() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 78      | tGravityAccMag-entropy() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 79      | tGravityAccMag-arCoeff() | Time; Acceleration | NA          | This is a Time-domain, Gravity acceleration signal | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 80     | tBodyAccJerkMag-mean() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Mean |
| 81     | tBodyAccJerkMag-std() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Standard Deviation |
| 82      | tBodyAccJerkMag-mad() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Median Absolute Deviation |
| 83      | tBodyAccJerkMag-max() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Maximum value in an array |
| 84      | tBodyAccJerkMag-min() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Minimum value in an array |
| 85      | tBodyAccJerkMag-sma() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Signal Magnitude Area |
| 86      | tBodyAccJerkMag-energy() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Energy (sum of squares divided by number of values |
| 87      | tBodyAccJerkMag-iqr() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Inter-quartile range |
| 88      | tBodyAccJerkMag-entropy() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | The signal's entropy |
| 89      | tBodyAccJerkMag-arCoeff() | Time; Acceleration; Body | NA          | This is a Time-domain, Body acceleration Jerk signal | g (1g = 9.8 m/s^2) | -1 to 1 | Auto-regression coefficients with Burg order = 4 |
| 90    | tBodyGyroMag-mean()    | Time  | NA   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | -1 to 1 | Mean |
| 91    | tBodyGyroMag-std()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Standard Deviation |
| 92    | tBodyGyroMag-mad()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 |  Median Absolute Deviation |
| 93    | tBodyGyroMag-max()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 |  Maximum value in an array |
| 94    | tBodyGyroMag-min()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 |  Minimum value in an array |
| 95    | tBodyGyroMag-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Signal Magnitude Area |
| 96    | tBodyGyroMag-energy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Energy (Sum of squares divided by number of values) |
| 97    | tBodyGyroMag-iqr()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Inter-quartile range |
| 98    | tBodyGyroMag-entropy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | The signal's Entropy |
| 99    | tBodyGyroMag-arCoeff()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Autorregresion coefficients with Burg order equal to 4 |
| 100    | tBodyGyroJerkMag-mean()    | Time  | NA   | This is a time-domain signal from gyroscope, recorded for each of the 3 axes. The axis name for which the signal has been recorded is appended to the end of the variable name in our data set. | deg/sec | Mean |
| 101    | tBodyGyroJerkMag-std()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Standard Deviation |
| 102    | tBodyGyroJerkMag-mad()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Median Absolute Deviation |
| 103    | tBodyGyroJerkMag-max()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Maximum value in an array |
| 104    | tBodyGyroJerkMag-min()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Minimum value in an array |
| 105    | tBodyGyroJerkMag-sma()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Signal Magnitude Area |
| 106    | tBodyGyroJerkMag-energy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 |  Energy (Sum of squares divided by number of values) |
| 107    | tBodyGyroJerkMag-iqr()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 |  Inter-quartile range |
| 108    | tBodyGyroJerkMag-entropy()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | The signal's Entropy |
| 109    | tBodyGyroJerkMag-arCoeff()    | Time  | NA   | This is a time-domain signal from gyroscope | deg/sec | -1 to 1 | Autorregresion coefficients with Burg order equal to 4 |
| 110   | fBodyAcc-mean()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 |  Mean  |
| 111   | fBodyAcc-std()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Standard Deviation  |
| 112   | fBodyAcc-mad()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 |  Median Absolute Deviation  |
| 113   | fBodyAcc-max()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Maximum value in an array  |
| 114   | fBodyAcc-min()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Minimum value in an array  |
| 115   | fBodyAcc-sma()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal Magnitude Area  |
| 116   | fBodyAcc-energy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 117   | fBodyAcc-iqr()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Inter-quartile range  |
| 118   | fBodyAcc-entropy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal entropy  |
| 119   | fBodyAcc-maxInds()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 120   | fBodyAcc-meanFreq()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 121   | fBodyAcc-skewness()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Skewness of the signal  |
| 122   | fBodyAcc-kurtosis()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Kurtosis of the signal  |
| 123   | fBodyAcc-bandsEnergy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Energy of a frequency interval within the 64 bins of the FFT of each window.  |
| 124   | fBodyAccJerk-mean()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 125   | fBodyAccJerk-std()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Standard Deviation  |
| 126   | fBodyAccJerk-mad()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Median Absolute Deviation  |
| 127   | fBodyAccJerk-max()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Maximum value in an array  |
| 128   | fBodyAccJerk-min()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Minimum value in an array  |
| 129   | fBodyAccJerk-sma()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal Magnitude Area  |
| 130   | fBodyAccJerk-energy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 131   | fBodyAccJerk-iqr()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Inter-quartile range  |
| 132   | fBodyAccJerk-entropy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal entropy  |
| 133   | fBodyAccJerk-maxInds()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 134   | fBodyAccJerk-meanFreq()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 135   | fBodyAccJerk-skewness()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Skewness of the signal  |
| 136   | fBodyAccJerk-kurtosis()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Kurtosis of the signal  |
| 137   | fBodyAccJerk-bandsEnergy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Energy of a frequency interval within the 64 bins of the FFT of each window.  |
| 138   | fBodyGyro-mean()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 139   | fBodyGyro-std()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Standard Deviation  |
| 140   | fBodyGyro-mad()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Median Absolute Deviation  |
| 141   | fBodyGyro-max()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Maximum value in an array  |
| 142   | fBodyGyro-min()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Minimum value in an array  |
| 143   | fBodyGyro-sma()   | Frequency; Acceleration | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Signal Magnitude Area  |
| 144   | fBodyGyro-energy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 145   | fBodyGyro-iqr()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Inter-quartile range  |
| 146   | fBodyGyro-entropy()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Signal entropy  |
| 147   | fBodyGyro-maxInds()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 148   | fBodyGyro-meanFreq()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Weighted average of the frequency components to obtain a mean frequency  |
| 149   | fBodyGyro-skewness()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Skewness of the signal  |
| 150   | fBodyGyro-kurtosis()   | Frequency; Acceleration | X; Y; Z   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Kurtosis of the signal  |
| 151   | fBodyGyro-bandsEnergy()   | Frequency; Acceleration | 1-64 bins   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Energy of a frequency interval within the 64 bins of the FFT of each window.  |
| 152   | fBodyAccMag-mean()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 153   | fBodyAccMag-std()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Standard Deviation  |
| 154   | fBodyAccMag-mad()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Median Absolute Deviation  |
| 155   | fBodyAccMag-max()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Maximum value in an array  |
| 156   | fBodyAccMag-min()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Minimum value in an array  |
| 157   | fBodyAccMag-sma()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal Magnitude Area  |
| 158   | fBodyAccMag-energy()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 159   | fBodyAccMag-iqr()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Inter-quartile range  |
| 160   | fBodyAccMag-entropy()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal entropy  |
| 161   | fBodyAccMag-maxInds()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 162   | fBodyAccMag-meanFreq()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 163   | fBodyAccMag-skewness()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Skewness of the signal  |
| 164   | fBodyAccMag-kurtosis()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Kurtosis of the signal  |
| 165   | fBodyBodyAccJerkMag-mean()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 166   | fBodyBodyAccJerkMag-std()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Standard Deviation  |
| 167   | fBodyBodyAccJerkMag-mad()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Median Absolute Deviation  |
| 168   | fBodyBodyAccJerkMag-max()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Maximum value in an array  |
| 169   | fBodyBodyAccJerkMag-min()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Minimum value in an array  |
| 170   | fBodyBodyAccJerkMag-sma()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal Magnitude Area  |
| 171   | fBodyBodyAccJerkMag-energy()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 172   | fBodyBodyAccJerkMag-iqr()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Inter-quartile range  |
| 173   | fBodyBodyAccJerkMag-entropy()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Signal entropy  |
| 174   | fBodyBodyAccJerkMag-maxInds()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 175   | fBodyBodyAccJerkMag-meanFreq()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 176   | fBodyBodyAccJerkMag-skewness()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Skewness of the signal  |
| 177   | fBodyBodyAccJerkMag-kurtosis()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Kurtosis of the signal  |
| 178   | fBodyBodyGyroMag-mean()   | Frequency; Acceleration | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 179   | fBodyBodyGyroMag-std()   | Frequency  | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Standard Deviation  |
| 180   | fBodyBodyGyroMag-mad()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Median Absolute Deviation  |
| 181   | fBodyBodyGyroMag-max()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Maximum value in an array  |
| 182   | fBodyBodyGyroMag-min()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Minimum value in an array  |
| 183   | fBodyBodyGyroMag-sma()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   |-1 to 1 |  Signal Magnitude Area  |
| 184   | fBodyBodyGyroMag-energy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 185   | fBodyBodyGyroMag-iqr()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Inter-quartile range  |
| 186   | fBodyBodyGyroMag-entropy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Signal entropy  |
| 187   | fBodyBodyGyroMag-maxInds()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 188   | fBodyBodyGyroMag-meanFreq()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 189   | fBodyBodyGyroMag-skewness()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Skewness of the signal  |
| 190   | fBodyBodyGyroMag-kurtosis()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Kurtosis of the signal  |
| 178   | fBodyBodyGyroMag-mean()   | Frequency | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 | Mean  |
| 179   | fBodyBodyGyroMag-std()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Standard Deviation  |
| 180   | fBodyBodyGyroMag-mad()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Median Absolute Deviation  |
| 181   | fBodyBodyGyroMag-max()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Maximum value in an array  |
| 182   | fBodyBodyGyroMag-min()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Minimum value in an array  |
| 183   | fBodyBodyGyroMag-sma()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Signal Magnitude Area  |
| 184   | fBodyBodyGyroMag-energy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 185   | fBodyBodyGyroMag-iqr()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Inter-quartile range  |
| 186   | fBodyBodyGyroMag-entropy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Signal entropy  |
| 187   | fBodyBodyGyroMag-maxInds()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 188   | fBodyBodyGyroMag-meanFreq()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 189   | fBodyBodyGyroMag-skewness()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Skewness of the signal  |
| 190   | fBodyBodyGyroMag-kurtosis()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Kurtosis of the signal  |
| 191   | fBodyBodyGyroJerkMag-mean()   | Frequency | NA   | This is a frequency-domain signal for body acceleration from the accelerometer  |   | -1 to 1 |  Mean  |
| 192   | fBodyBodyGyroJerkMag-std()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Standard Deviation  |
| 193   | fBodyBodyGyroJerkMag-mad()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Median Absolute Deviation  |
| 194   | fBodyBodyGyroJerkMag-max()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Maximum value in an array  |
| 195   | fBodyBodyGyroJerkMag-min()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Minimum value in an array  |
| 196   | fBodyBodyGyroJerkMag-sma()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Signal Magnitude Area  |
| 197   | fBodyBodyGyroJerkMag-energy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Sum of squares divided by the number of values  |
| 198   | fBodyBodyGyroJerkMag-iqr()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 |  Inter-quartile range  |
| 199   | fBodyBodyGyroJerkMag-entropy()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Signal entropy  |
| 200   | fBodyBodyGyroJerkMag-maxInds()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Index of the frequency component with the largest magnitude  |
| 201   | fBodyBodyGyroJerkMag-meanFreq()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Weighted average of the frequency components to obtain a mean frequency  |
| 202   | fBodyBodyGyroJerkMag-skewness()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Skewness of the signal  |
| 203   | fBodyBodyGyroJerkMag-kurtosis()   | Frequency | NA   | This is a frequency-domain signal from the gyroscope  |   | -1 to 1 | Kurtosis of the signal  |
|204    | angle(tBodyAccMean, gravity) | Time; Acceleration | NA | The signals for body acceleration and gravity acceleration are averged and then used. |  | -1 to 1 | Angle between two vectors |
|205    | angle(tBodyAccJerkMean, gravityMean) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
|206    | angle(tBodyGyroMean, gravity) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
|207    | angle(tBodyGyroJerkMean, gravityMean) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
|208    | angle(X, gravityMean) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
|209    | angle(Y, gravityMean) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
|210    | angle(Z, gravityMean) | ?? | ?? | ?? | ?? | -1 to 1 | ?? |
