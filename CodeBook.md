### Original data:

* Source - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Transformation Steps

Using the  run_analysis.R script, the following transformation are implemented:

1. Data is loaded and merged for the train and test datasets:
	a. X_*. txt - Measure results
    b. Y_*.txt - Activity measured
	c. subject_.txt - Subject who performed activity
2. Merge train and test data sets.
3. Get the activity label for merged data set. 
4. Extracts only the measurements on the mean and standard deviation for each measurement. 
5. Save the result in tidydataset1.csv
6. Get the average of each variable for each activity and each subject.
7. Save the result in tidydataset2.csv


#### Data Columns

1. ActivityID
2. SubjectID
3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdX
7. tBodyAccStdY
8. tBodyAccStdZ
9. tGravityAccMeanX
10. tGravityAccMeanY
11. tGravityAccMeanZ
12. tGravityAccStdX
13. tGravityAccStdY
14. tGravityAccStdZ
15. tBodyAccJerkMeanX
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdX
19. tBodyAccJerkStdY
20. tBodyAccJerkStdZ
21. tBodyGyroMeanX
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdX
25. tBodyGyroStdY
26. tBodyGyroStdZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdX
31. tBodyGyroJerkStdY
32. tBodyGyroJerkStdZ
33. tBodyAccMagMean
34. tBodyAccMagStd
35. tGravityAccMagMean
36. tGravityAccMagStd
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStd
39. tBodyGyroMagMean
40. tBodyGyroMagStd
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagStd
43. fBodyAccMeanX
44. fBodyAccMeanY
45. fBodyAccMeanZ
46. fBodyAccStdX
47. fBodyAccStdY
48. fBodyAccStdZ
49. fBodyAccJerkMeanX
50. fBodyAccJerkMeanY
51. fBodyAccJerkMeanZ
52. fBodyAccJerkStdX
53. fBodyAccJerkStdY
54. fBodyAccJerkStdZ
55. fBodyGyroMeanX
56. fBodyGyroMeanY
57. fBodyGyroMeanZ
58. fBodyGyroStdX
59. fBodyGyroStdY
60. fBodyGyroStdZ
61. fBodyAccMagMean
62. fBodyAccMagStd
63. fBodyBodyAccJerkMagMean
64. fBodyBodyAccJerkMagStd
65. fBodyBodyGyroMagMean
66. fBodyBodyGyroMagStd
67. fBodyBodyGyroJerkMagMean
68. fBodyBodyGyroJerkMagStd
69. ActivityName
