My Codebook :smile:
========


## Variable list and descriptions
------------------------------

Variable name   | Description
----------------|------------
feature_name    | chr [1:561]. (whole set of features)
feature_ext     | int [1:66]. (extracted feature, only mean and SD)

Loaded Data     | Description
----------------|------------
test_set        | 2947 obs. of 563 variables. (merged test data)
train_set       | 7352 obs. of 563 variables. (merged training data)
full_set        | 10299 obs. of 563 variables. (merger full data)
full_ext        | 10299 obs. of 68 variables. ()
activity_name   | 6 obs. of 2 variables
clean_data      | 180 obs. of 8 variables



## List top variables in the clean dataset
----------------------------------------

```r
head(clean_data)
```

```
Source: local data frame [6 x 68]
Groups: subject [1]
  subject           activity `timeBodyAcc_mean-X` `timeBodyAcc_mean-Y` `timeBodyAcc_mean-Z` `timeBodyAcc_std-X`
    <int>             <fctr>                <dbl>                <dbl>                <dbl>               <dbl>
1       1            WALKING            0.2773308         -0.017383819           -0.1111481         -0.28374026
2       1   WALKING_UPSTAIRS            0.2554617         -0.023953149           -0.0973020         -0.35470803
3       1 WALKING_DOWNSTAIRS            0.2891883         -0.009918505           -0.1075662          0.03003534
4       1            SITTING            0.2612376         -0.001308288           -0.1045442         -0.97722901
5       1           STANDING            0.2789176         -0.016137590           -0.1106018         -0.99575990
6       1             LAYING            0.2215982         -0.040513953           -0.1132036         -0.92805647
# ... with 62 more variables: `timeBodyAcc_std-Y` <dbl>, `timeBodyAcc_std-Z` <dbl>, `timeGravityAcc_mean-X` <dbl>,
# ... ... ... (*too much to show here*)
```

## Clean Dataset structure
-----------------

```r
str(clean_data)
```

```
Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  68 variables:
 $ subject                          : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity                         : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ timeBodyAcc_mean-X               : num  0.277 0.255 0.289 0.261 0.279 ...
 $ timeBodyAcc_mean-Y               : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ timeBodyAcc_mean-Z               : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ timeBodyAcc_std-X                : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ timeBodyAcc_std-Y                : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ timeBodyAcc_std-Z                : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ timeGravityAcc_mean-X            : num  0.935 0.893 0.932 0.832 0.943 ...
 $ timeGravityAcc_mean-Y            : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ timeGravityAcc_mean-Z            : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ timeGravityAcc_std-X             : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ timeGravityAcc_std-Y             : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ timeGravityAcc_std-Z             : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ timeBodyAccJerk_mean-X           : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ timeBodyAccJerk_mean-Y           : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ ... ... ... (*deleted some, because it is too much to show here*)
 - attr(*, "vars")=List of 1
  ..$ : symbol subject
 - attr(*, "drop")= logi TRUE ...
##  - attr(*, "sorted")= chr  "subject" "activity" "featDomain" "featAcceleration" ...
##  - attr(*, ".internal.selfref")=<externalptr>
```

