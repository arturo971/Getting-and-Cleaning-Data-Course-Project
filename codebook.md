Packages necessary
------------------

Dplyr

Data Source
-----------

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Data Information
----------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

Variables
---------

    names(alldatabysubject)

    ##  [1] "subject"                                              
    ##  [2] "activity"                                             
    ##  [3] "time_body_accelerometer_mean_X"                       
    ##  [4] "time_body_accelerometer_mean_Y"                       
    ##  [5] "time_body_accelerometer_mean_Z"                       
    ##  [6] "time_body_accelerometer_sd_X"                         
    ##  [7] "time_body_accelerometer_sd_Y"                         
    ##  [8] "time_body_accelerometer_sd_Z"                         
    ##  [9] "time_gravity_accelerometer_mean_X"                    
    ## [10] "time_gravity_accelerometer_mean_Y"                    
    ## [11] "time_gravity_accelerometer_mean_Z"                    
    ## [12] "time_gravity_accelerometer_sd_X"                      
    ## [13] "time_gravity_accelerometer_sd_Y"                      
    ## [14] "time_gravity_accelerometer_sd_Z"                      
    ## [15] "time_body_accelerometer_jerk_mean_X"                  
    ## [16] "time_body_accelerometer_jerk_mean_Y"                  
    ## [17] "time_body_accelerometer_jerk_mean_Z"                  
    ## [18] "time_body_accelerometer_jerk_sd_X"                    
    ## [19] "time_body_accelerometer_jerk_sd_Y"                    
    ## [20] "time_body_accelerometer_jerk_sd_Z"                    
    ## [21] "time_body_gyroscopic_mean_X"                          
    ## [22] "time_body_gyroscopic_mean_Y"                          
    ## [23] "time_body_gyroscopic_mean_Z"                          
    ## [24] "time_body_gyroscopic_sd_X"                            
    ## [25] "time_body_gyroscopic_sd_Y"                            
    ## [26] "time_body_gyroscopic_sd_Z"                            
    ## [27] "time_body_gyroscopic_jerk_mean_X"                     
    ## [28] "time_body_gyroscopic_jerk_mean_Y"                     
    ## [29] "time_body_gyroscopic_jerk_mean_Z"                     
    ## [30] "time_body_gyroscopic_jerk_sd_X"                       
    ## [31] "time_body_gyroscopic_jerk_sd_Y"                       
    ## [32] "time_body_gyroscopic_jerk_sd_Z"                       
    ## [33] "time_body_accelerometer_Magnitudemean_"               
    ## [34] "time_body_accelerometer_Magnitudesd_"                 
    ## [35] "time_gravity_accelerometer_Magnitudemean_"            
    ## [36] "time_gravity_accelerometer_Magnitudesd_"              
    ## [37] "time_body_accelerometer_jerk_Magnitudemean_"          
    ## [38] "time_body_accelerometer_jerk_Magnitudesd_"            
    ## [39] "time_body_gyroscopic_Magnitudemean_"                  
    ## [40] "time_body_gyroscopic_Magnitudesd_"                    
    ## [41] "time_body_gyroscopic_jerk_Magnitudemean_"             
    ## [42] "time_body_gyroscopic_jerk_Magnitudesd_"               
    ## [43] "frequency_body_accelerometer_mean_X"                  
    ## [44] "frequency_body_accelerometer_mean_Y"                  
    ## [45] "frequency_body_accelerometer_mean_Z"                  
    ## [46] "frequency_body_accelerometer_sd_X"                    
    ## [47] "frequency_body_accelerometer_sd_Y"                    
    ## [48] "frequency_body_accelerometer_sd_Z"                    
    ## [49] "frequency_body_accelerometer_jerk_mean_X"             
    ## [50] "frequency_body_accelerometer_jerk_mean_Y"             
    ## [51] "frequency_body_accelerometer_jerk_mean_Z"             
    ## [52] "frequency_body_accelerometer_jerk_sd_X"               
    ## [53] "frequency_body_accelerometer_jerk_sd_Y"               
    ## [54] "frequency_body_accelerometer_jerk_sd_Z"               
    ## [55] "frequency_body_gyroscopic_mean_X"                     
    ## [56] "frequency_body_gyroscopic_mean_Y"                     
    ## [57] "frequency_body_gyroscopic_mean_Z"                     
    ## [58] "frequency_body_gyroscopic_sd_X"                       
    ## [59] "frequency_body_gyroscopic_sd_Y"                       
    ## [60] "frequency_body_gyroscopic_sd_Z"                       
    ## [61] "frequency_body_accelerometer_Magnitudemean_"          
    ## [62] "frequency_body_accelerometer_Magnitudesd_"            
    ## [63] "frequency_body_body_accelerometer_jerk_Magnitudemean_"
    ## [64] "frequency_body_body_accelerometer_jerk_Magnitudesd_"  
    ## [65] "frequency_body_body_gyroscopic_Magnitudemean_"        
    ## [66] "frequency_body_body_gyroscopic_Magnitudesd_"          
    ## [67] "frequency_body_body_gyroscopic_jerk_Magnitudemean_"   
    ## [68] "frequency_body_body_gyroscopic_jerk_Magnitudesd_"     
    ## [69] "type"

Structure of the final data frame
---------------------------------

    str(alldatabysubject)

    ## Classes 'grouped_df', 'tbl_df', 'tbl' and 'data.frame':  10299 obs. of  69 variables:
    ##  $ subject                                              : Factor w/ 30 levels "10","12","13",..: 5 5 5 5 5 5 5 5 5 5 ...
    ##  $ activity                                             : Ord.factor w/ 6 levels "WALKING"<"WALKING_UPSTAIRS"<..: 5 5 5 5 5 5 5 5 5 5 ...
    ##  $ time_body_accelerometer_mean_X                       : num  0.257 0.286 0.275 0.27 0.275 ...
    ##  $ time_body_accelerometer_mean_Y                       : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
    ##  $ time_body_accelerometer_mean_Z                       : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
    ##  $ time_body_accelerometer_sd_X                         : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
    ##  $ time_body_accelerometer_sd_Y                         : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
    ##  $ time_body_accelerometer_sd_Z                         : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
    ##  $ time_gravity_accelerometer_mean_X                    : num  0.936 0.927 0.93 0.929 0.927 ...
    ##  $ time_gravity_accelerometer_mean_Y                    : num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
    ##  $ time_gravity_accelerometer_mean_Z                    : num  0.115 0.153 0.146 0.143 0.138 ...
    ##  $ time_gravity_accelerometer_sd_X                      : num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
    ##  $ time_gravity_accelerometer_sd_Y                      : num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
    ##  $ time_gravity_accelerometer_sd_Z                      : num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
    ##  $ time_body_accelerometer_jerk_mean_X                  : num  0.072 0.0702 0.0694 0.0749 0.0784 ...
    ##  $ time_body_accelerometer_jerk_mean_Y                  : num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
    ##  $ time_body_accelerometer_jerk_mean_Z                  : num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
    ##  $ time_body_accelerometer_jerk_sd_X                    : num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
    ##  $ time_body_accelerometer_jerk_sd_Y                    : num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
    ##  $ time_body_accelerometer_jerk_sd_Z                    : num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
    ##  $ time_body_gyroscopic_mean_X                          : num  0.11998 -0.00155 -0.04821 -0.05664 -0.05999 ...
    ##  $ time_body_gyroscopic_mean_Y                          : num  -0.0918 -0.1873 -0.1663 -0.126 -0.0847 ...
    ##  $ time_body_gyroscopic_mean_Z                          : num  0.1896 0.1807 0.1542 0.1183 0.0787 ...
    ##  $ time_body_gyroscopic_sd_X                            : num  -0.883 -0.926 -0.973 -0.968 -0.975 ...
    ##  $ time_body_gyroscopic_sd_Y                            : num  -0.816 -0.93 -0.979 -0.975 -0.978 ...
    ##  $ time_body_gyroscopic_sd_Z                            : num  -0.941 -0.968 -0.976 -0.963 -0.968 ...
    ##  $ time_body_gyroscopic_jerk_mean_X                     : num  -0.2049 -0.1387 -0.0978 -0.1022 -0.0918 ...
    ##  $ time_body_gyroscopic_jerk_mean_Y                     : num  -0.1745 -0.0258 -0.0342 -0.0447 -0.029 ...
    ##  $ time_body_gyroscopic_jerk_mean_Z                     : num  -0.0934 -0.0714 -0.06 -0.0534 -0.0612 ...
    ##  $ time_body_gyroscopic_jerk_sd_X                       : num  -0.901 -0.962 -0.984 -0.984 -0.988 ...
    ##  $ time_body_gyroscopic_jerk_sd_Y                       : num  -0.911 -0.956 -0.988 -0.99 -0.992 ...
    ##  $ time_body_gyroscopic_jerk_sd_Z                       : num  -0.939 -0.981 -0.976 -0.981 -0.982 ...
    ##  $ time_body_accelerometer_Magnitudemean_               : num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
    ##  $ time_body_accelerometer_Magnitudesd_                 : num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
    ##  $ time_gravity_accelerometer_Magnitudemean_            : num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
    ##  $ time_gravity_accelerometer_Magnitudesd_              : num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
    ##  $ time_body_accelerometer_jerk_Magnitudemean_          : num  -0.93 -0.974 -0.982 -0.983 -0.987 ...
    ##  $ time_body_accelerometer_jerk_Magnitudesd_            : num  -0.896 -0.941 -0.971 -0.975 -0.989 ...
    ##  $ time_body_gyroscopic_Magnitudemean_                  : num  -0.796 -0.898 -0.939 -0.947 -0.957 ...
    ##  $ time_body_gyroscopic_Magnitudesd_                    : num  -0.762 -0.911 -0.972 -0.97 -0.969 ...
    ##  $ time_body_gyroscopic_jerk_Magnitudemean_             : num  -0.925 -0.973 -0.987 -0.989 -0.99 ...
    ##  $ time_body_gyroscopic_jerk_Magnitudesd_               : num  -0.894 -0.944 -0.984 -0.986 -0.99 ...
    ##  $ frequency_body_accelerometer_mean_X                  : num  -0.919 -0.961 -0.992 -0.993 -0.992 ...
    ##  $ frequency_body_accelerometer_mean_Y                  : num  -0.918 -0.964 -0.965 -0.968 -0.969 ...
    ##  $ frequency_body_accelerometer_mean_Z                  : num  -0.789 -0.957 -0.967 -0.967 -0.98 ...
    ##  $ frequency_body_accelerometer_sd_X                    : num  -0.948 -0.984 -0.995 -0.996 -0.995 ...
    ##  $ frequency_body_accelerometer_sd_Y                    : num  -0.925 -0.97 -0.974 -0.977 -0.967 ...
    ##  $ frequency_body_accelerometer_sd_Z                    : num  -0.636 -0.942 -0.962 -0.969 -0.978 ...
    ##  $ frequency_body_accelerometer_jerk_mean_X             : num  -0.9 -0.944 -0.991 -0.991 -0.991 ...
    ##  $ frequency_body_accelerometer_jerk_mean_Y             : num  -0.937 -0.969 -0.973 -0.972 -0.98 ...
    ##  $ frequency_body_accelerometer_jerk_mean_Z             : num  -0.924 -0.973 -0.972 -0.97 -0.983 ...
    ##  $ frequency_body_accelerometer_jerk_sd_X               : num  -0.924 -0.962 -0.992 -0.992 -0.994 ...
    ##  $ frequency_body_accelerometer_jerk_sd_Y               : num  -0.943 -0.98 -0.971 -0.975 -0.979 ...
    ##  $ frequency_body_accelerometer_jerk_sd_Z               : num  -0.948 -0.981 -0.972 -0.981 -0.989 ...
    ##  $ frequency_body_gyroscopic_mean_X                     : num  -0.824 -0.923 -0.973 -0.972 -0.976 ...
    ##  $ frequency_body_gyroscopic_mean_Y                     : num  -0.808 -0.926 -0.981 -0.981 -0.98 ...
    ##  $ frequency_body_gyroscopic_mean_Z                     : num  -0.918 -0.968 -0.972 -0.967 -0.969 ...
    ##  $ frequency_body_gyroscopic_sd_X                       : num  -0.903 -0.927 -0.973 -0.967 -0.974 ...
    ##  $ frequency_body_gyroscopic_sd_Y                       : num  -0.823 -0.932 -0.977 -0.972 -0.977 ...
    ##  $ frequency_body_gyroscopic_sd_Z                       : num  -0.956 -0.97 -0.979 -0.965 -0.97 ...
    ##  $ frequency_body_accelerometer_Magnitudemean_          : num  -0.791 -0.954 -0.976 -0.973 -0.978 ...
    ##  $ frequency_body_accelerometer_Magnitudesd_            : num  -0.711 -0.96 -0.984 -0.982 -0.979 ...
    ##  $ frequency_body_body_accelerometer_jerk_Magnitudemean_: num  -0.895 -0.945 -0.971 -0.972 -0.987 ...
    ##  $ frequency_body_body_accelerometer_jerk_Magnitudesd_  : num  -0.896 -0.934 -0.97 -0.978 -0.99 ...
    ##  $ frequency_body_body_gyroscopic_Magnitudemean_        : num  -0.771 -0.924 -0.975 -0.976 -0.977 ...
    ##  $ frequency_body_body_gyroscopic_Magnitudesd_          : num  -0.797 -0.917 -0.974 -0.971 -0.97 ...
    ##  $ frequency_body_body_gyroscopic_jerk_Magnitudemean_   : num  -0.89 -0.952 -0.986 -0.986 -0.99 ...
    ##  $ frequency_body_body_gyroscopic_jerk_Magnitudesd_     : num  -0.907 -0.938 -0.983 -0.986 -0.991 ...
    ##  $ type                                                 : Ord.factor w/ 2 levels "test"<"train": 1 1 1 1 1 1 1 1 1 1 ...
    ##  - attr(*, "vars")=List of 2
    ##   ..$ : symbol subject
    ##   ..$ : symbol activity
    ##  - attr(*, "drop")= logi TRUE
    ##  - attr(*, "indices")=List of 180
    ##   ..$ : int  985 986 987 988 989 990 991 992 993 994 ...
    ##   ..$ : int  1031 1032 1033 1034 1035 1036 1037 1038 1039 1040 ...
    ##   ..$ : int  1012 1013 1014 1015 1016 1017 1018 1019 1020 1021 ...
    ##   ..$ : int  930 931 932 933 934 935 936 937 938 939 ...
    ##   ..$ : int  907 908 909 910 911 912 913 914 915 916 ...
    ##   ..$ : int  954 955 956 957 958 959 960 961 962 963 ...
    ##   ..$ : int  1283 1284 1285 1286 1287 1288 1289 1290 1291 1292 ...
    ##   ..$ : int  1335 1336 1337 1338 1339 1340 1341 1342 1343 1344 ...
    ##   ..$ : int  1310 1311 1312 1313 1314 1315 1316 1317 1318 1319 ...
    ##   ..$ : int  1228 1229 1230 1231 1232 1233 1234 1235 1236 1237 ...
    ##   ..$ : int  1201 1202 1203 1204 1205 1206 1207 1208 1209 1210 ...
    ##   ..$ : int  1256 1257 1258 1259 1260 1261 1262 1263 1264 1265 ...
    ##   ..$ : int  1605 1606 1607 1608 1609 1610 1611 1612 1613 1614 ...
    ##   ..$ : int  1662 1663 1664 1665 1666 1667 1668 1669 1670 1671 ...
    ##   ..$ : int  1635 1636 1637 1638 1639 1640 1641 1642 1643 1644 ...
    ##   ..$ : int  1548 1549 1550 1551 1552 1553 1554 1555 1556 1557 ...
    ##   ..$ : int  1521 1522 1523 1524 1525 1526 1527 1528 1529 1530 ...
    ##   ..$ : int  1572 1573 1574 1575 1576 1577 1578 1579 1580 1581 ...
    ##   ..$ : int  1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 ...
    ##   ..$ : int  1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 ...
    ##   ..$ : int  1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 ...
    ##   ..$ : int  1888 1889 1890 1891 1892 1893 1894 1895 1896 1897 ...
    ##   ..$ : int  1848 1849 1850 1851 1852 1853 1854 1855 1856 1857 ...
    ##   ..$ : int  1918 1919 1920 1921 1922 1923 1924 1925 1926 1927 ...
    ##   ..$ : int  79 80 81 82 83 84 85 86 87 88 ...
    ##   ..$ : int  133 134 135 136 137 138 139 140 141 142 ...
    ##   ..$ : int  109 110 111 112 113 114 115 116 117 118 ...
    ##   ..$ : int  31 32 33 34 35 36 37 38 39 40 ...
    ##   ..$ : int  0 1 2 3 4 5 6 7 8 9 ...
    ##   ..$ : int  55 56 57 58 59 60 61 62 63 64 ...
    ##   ..$ : int  2317 2318 2319 2320 2321 2322 2323 2324 2325 2326 ...
    ##   ..$ : int  2366 2367 2368 2369 2370 2371 2372 2373 2374 2375 ...
    ##   ..$ : int  2344 2345 2346 2347 2348 2349 2350 2351 2352 2353 ...
    ##   ..$ : int  2250 2251 2252 2253 2254 2255 2256 2257 2258 2259 ...
    ##   ..$ : int  2212 2213 2214 2215 2216 2217 2218 2219 2220 2221 ...
    ##   ..$ : int  2286 2287 2288 2289 2290 2291 2292 2293 2294 2295 ...
    ##   ..$ : int  2669 2670 2671 2672 2673 2674 2675 2676 2677 2678 ...
    ##   ..$ : int  2724 2725 2726 2727 2728 2729 2730 2731 2732 2733 ...
    ##   ..$ : int  2697 2698 2699 2700 2701 2702 2703 2704 2705 2706 ...
    ##   ..$ : int  2599 2600 2601 2602 2603 2604 2605 2606 2607 2608 ...
    ##   ..$ : int  2566 2567 2568 2569 2570 2571 2572 2573 2574 2575 ...
    ##   ..$ : int  2633 2634 2635 2636 2637 2638 2639 2640 2641 2642 ...
    ##   ..$ : int  384 385 386 387 388 389 390 391 392 393 ...
    ##   ..$ : int  438 439 440 441 442 443 444 445 446 447 ...
    ##   ..$ : int  415 416 417 418 419 420 421 422 423 424 ...
    ##   ..$ : int  330 331 332 333 334 335 336 337 338 339 ...
    ##   ..$ : int  302 303 304 305 306 307 308 309 310 311 ...
    ##   ..$ : int  354 355 356 357 358 359 360 361 362 363 ...
    ##   ..$ : int  690 691 692 693 694 695 696 697 698 699 ...
    ##   ..$ : int  723 724 725 726 727 728 729 730 731 732 ...
    ##   ..$ : int  716 717 718 719 720 721 722 733 734 735 ...
    ##   ..$ : int  641 642 643 644 645 646 647 648 649 650 ...
    ##   ..$ : int  619 620 621 622 623 624 625 626 627 628 ...
    ##   ..$ : int  666 667 668 669 670 671 672 673 674 675 ...
    ##   ..$ : int  3025 3026 3027 3028 3029 3030 3031 3032 3033 3034 ...
    ##   ..$ : int  3097 3098 3099 3100 3101 3102 3103 3104 3105 3106 ...
    ##   ..$ : int  3072 3073 3074 3075 3076 3077 3078 3079 3080 3081 ...
    ##   ..$ : int  2974 2975 2976 2977 2978 2979 2980 2981 2982 2983 ...
    ##   ..$ : int  2947 2948 2949 2950 2951 2952 2953 2954 2955 2956 ...
    ##   ..$ : int  2998 2999 3000 3001 3002 3003 3004 3005 3006 3007 ...
    ##   ..$ : int  4928 4929 4930 4931 4932 4933 4934 4935 4936 4937 ...
    ##   ..$ : int  4979 4980 4981 4982 4983 4984 4985 4986 4987 4988 ...
    ##   ..$ : int  4957 4958 4959 4960 4961 4962 4963 4964 4965 4966 ...
    ##   ..$ : int  4872 4873 4874 4875 4876 4877 4878 4879 4880 4881 ...
    ##   ..$ : int  4851 4852 4853 4854 4855 4856 4857 4858 4859 4860 ...
    ##   ..$ : int  4898 4899 4900 4901 4902 4903 4904 4905 4906 4907 ...
    ##   ..$ : int  5248 5249 5250 5251 5252 5253 5254 5255 5256 5257 ...
    ##   ..$ : int  5302 5303 5304 5305 5306 5307 5308 5309 5310 5311 ...
    ##   ..$ : int  5278 5279 5280 5281 5282 5283 5284 5285 5286 5287 ...
    ##   ..$ : int  5197 5198 5199 5200 5201 5202 5203 5204 5205 5206 ...
    ##   ..$ : int  5167 5168 5169 5170 5171 5172 5173 5174 5175 5176 ...
    ##   ..$ : int  5223 5224 5225 5226 5227 5228 5229 5230 5231 5232 ...
    ##   ..$ : int  5578 5579 5580 5581 5582 5583 5584 5585 5586 5587 ...
    ##   ..$ : int  5627 5628 5629 5630 5631 5632 5633 5634 5635 5636 ...
    ##   ..$ : int  5606 5607 5608 5609 5610 5611 5612 5613 5614 5615 ...
    ##   ..$ : int  5517 5518 5519 5520 5521 5522 5523 5524 5525 5526 ...
    ##   ..$ : int  5490 5491 5492 5493 5494 5495 5496 5497 5498 5499 ...
    ##   ..$ : int  5544 5545 5546 5547 5548 5549 5550 5551 5552 5553 ...
    ##   ..$ : int  5920 5921 5922 5923 5924 5925 5926 5927 5928 5929 ...
    ##   ..$ : int  5970 5971 5972 5973 5974 5975 5976 5977 5978 5979 ...
    ##   ..$ : int  5946 5947 5948 5949 5950 5951 5952 5953 5954 5955 ...
    ##   ..$ : int  5854 5855 5856 5857 5858 5859 5860 5861 5862 5863 ...
    ##   ..$ : int  5818 5819 5820 5821 5822 5823 5824 5825 5826 5827 ...
    ##   ..$ : int  5885 5886 5887 5888 5889 5890 5891 5892 5893 5894 ...
    ##   ..$ : int  6295 6296 6297 6298 6299 6300 6301 6302 6303 6304 ...
    ##   ..$ : int  6335 6336 6337 6338 6339 6340 6341 6342 6351 6352 ...
    ##   ..$ : int  6327 6328 6329 6330 6331 6332 6333 6334 6343 6344 ...
    ##   ..$ : int  6227 6228 6229 6230 6231 6232 6233 6234 6235 6236 ...
    ##   ..$ : int  6184 6185 6186 6187 6188 6189 6190 6191 6192 6193 ...
    ##   ..$ : int  6260 6261 6262 6263 6264 6265 6266 6267 6268 6269 ...
    ##   ..$ : int  6671 6672 6673 6674 6675 6676 6677 6678 6679 6680 ...
    ##   ..$ : int  6712 6713 6714 6715 6716 6717 6718 6719 6720 6721 ...
    ##   ..$ : int  6698 6699 6700 6701 6702 6703 6704 6705 6706 6707 ...
    ##   ..$ : int  6593 6594 6595 6596 6597 6598 6599 6600 6601 6602 ...
    ##   ..$ : int  6552 6553 6554 6555 6556 6557 6558 6559 6560 6561 ...
    ##   ..$ : int  6630 6631 6632 6633 6634 6635 6636 6637 6638 6639 ...
    ##   ..$ : int  7048 7049 7050 7051 7052 7053 7054 7055 7056 7057 ...
    ##   ..$ : int  7090 7091 7092 7093 7094 7095 7096 7097 7098 7099 ...
    ##   ..$ : int  7075 7076 7077 7078 7079 7080 7081 7082 7083 7084 ...
    ##   .. [list output truncated]
    ##  - attr(*, "group_sizes")= int  53 47 38 54 44 58 50 52 46 51 ...
    ##  - attr(*, "biggest_group_size")= int 95
    ##  - attr(*, "labels")='data.frame':   180 obs. of  2 variables:
    ##   ..$ subject : Factor w/ 30 levels "10","12","13",..: 1 1 1 1 1 1 2 2 2 2 ...
    ##   ..$ activity: Ord.factor w/ 6 levels "WALKING"<"WALKING_UPSTAIRS"<..: 1 2 3 4 5 6 1 2 3 4 ...
    ##   ..- attr(*, "vars")=List of 2
    ##   .. ..$ : symbol subject
    ##   .. ..$ : symbol activity
    ##   ..- attr(*, "drop")= logi TRUE

Summary of the data
-------------------

    summary(alldatabysubject)

    ##     subject                   activity    time_body_accelerometer_mean_X
    ##  25     : 409   WALKING           :1722   Min.   :-1.0000               
    ##  21     : 408   WALKING_UPSTAIRS  :1544   1st Qu.: 0.2626               
    ##  26     : 392   WALKING_DOWNSTAIRS:1406   Median : 0.2772               
    ##  30     : 383   SITTING           :1777   Mean   : 0.2743               
    ##  28     : 382   STANDING          :1906   3rd Qu.: 0.2884               
    ##  24     : 381   LAYING            :1944   Max.   : 1.0000               
    ##  (Other):7944                                                           
    ##  time_body_accelerometer_mean_Y time_body_accelerometer_mean_Z
    ##  Min.   :-1.00000               Min.   :-1.00000              
    ##  1st Qu.:-0.02490               1st Qu.:-0.12102              
    ##  Median :-0.01716               Median :-0.10860              
    ##  Mean   :-0.01774               Mean   :-0.10892              
    ##  3rd Qu.:-0.01062               3rd Qu.:-0.09759              
    ##  Max.   : 1.00000               Max.   : 1.00000              
    ##                                                               
    ##  time_body_accelerometer_sd_X time_body_accelerometer_sd_Y
    ##  Min.   :-1.0000              Min.   :-1.00000            
    ##  1st Qu.:-0.9924              1st Qu.:-0.97699            
    ##  Median :-0.9430              Median :-0.83503            
    ##  Mean   :-0.6078              Mean   :-0.51019            
    ##  3rd Qu.:-0.2503              3rd Qu.:-0.05734            
    ##  Max.   : 1.0000              Max.   : 1.00000            
    ##                                                           
    ##  time_body_accelerometer_sd_Z time_gravity_accelerometer_mean_X
    ##  Min.   :-1.0000              Min.   :-1.0000                  
    ##  1st Qu.:-0.9791              1st Qu.: 0.8117                  
    ##  Median :-0.8508              Median : 0.9218                  
    ##  Mean   :-0.6131              Mean   : 0.6692                  
    ##  3rd Qu.:-0.2787              3rd Qu.: 0.9547                  
    ##  Max.   : 1.0000              Max.   : 1.0000                  
    ##                                                                
    ##  time_gravity_accelerometer_mean_Y time_gravity_accelerometer_mean_Z
    ##  Min.   :-1.000000                 Min.   :-1.00000                 
    ##  1st Qu.:-0.242943                 1st Qu.:-0.11671                 
    ##  Median :-0.143551                 Median : 0.03680                 
    ##  Mean   : 0.004039                 Mean   : 0.09215                 
    ##  3rd Qu.: 0.118905                 3rd Qu.: 0.21621                 
    ##  Max.   : 1.000000                 Max.   : 1.00000                 
    ##                                                                     
    ##  time_gravity_accelerometer_sd_X time_gravity_accelerometer_sd_Y
    ##  Min.   :-1.0000                 Min.   :-1.0000                
    ##  1st Qu.:-0.9949                 1st Qu.:-0.9913                
    ##  Median :-0.9819                 Median :-0.9759                
    ##  Mean   :-0.9652                 Mean   :-0.9544                
    ##  3rd Qu.:-0.9615                 3rd Qu.:-0.9464                
    ##  Max.   : 1.0000                 Max.   : 1.0000                
    ##                                                                 
    ##  time_gravity_accelerometer_sd_Z time_body_accelerometer_jerk_mean_X
    ##  Min.   :-1.0000                 Min.   :-1.00000                   
    ##  1st Qu.:-0.9866                 1st Qu.: 0.06298                   
    ##  Median :-0.9665                 Median : 0.07597                   
    ##  Mean   :-0.9389                 Mean   : 0.07894                   
    ##  3rd Qu.:-0.9296                 3rd Qu.: 0.09131                   
    ##  Max.   : 1.0000                 Max.   : 1.00000                   
    ##                                                                     
    ##  time_body_accelerometer_jerk_mean_Y time_body_accelerometer_jerk_mean_Z
    ##  Min.   :-1.000000                   Min.   :-1.000000                  
    ##  1st Qu.:-0.018555                   1st Qu.:-0.031552                  
    ##  Median : 0.010753                   Median :-0.001159                  
    ##  Mean   : 0.007948                   Mean   :-0.004675                  
    ##  3rd Qu.: 0.033538                   3rd Qu.: 0.024578                  
    ##  Max.   : 1.000000                   Max.   : 1.000000                  
    ##                                                                         
    ##  time_body_accelerometer_jerk_sd_X time_body_accelerometer_jerk_sd_Y
    ##  Min.   :-1.0000                   Min.   :-1.0000                  
    ##  1st Qu.:-0.9913                   1st Qu.:-0.9850                  
    ##  Median :-0.9513                   Median :-0.9250                  
    ##  Mean   :-0.6398                   Mean   :-0.6080                  
    ##  3rd Qu.:-0.2912                   3rd Qu.:-0.2218                  
    ##  Max.   : 1.0000                   Max.   : 1.0000                  
    ##                                                                     
    ##  time_body_accelerometer_jerk_sd_Z time_body_gyroscopic_mean_X
    ##  Min.   :-1.0000                   Min.   :-1.00000           
    ##  1st Qu.:-0.9892                   1st Qu.:-0.04579           
    ##  Median :-0.9543                   Median :-0.02776           
    ##  Mean   :-0.7628                   Mean   :-0.03098           
    ##  3rd Qu.:-0.5485                   3rd Qu.:-0.01058           
    ##  Max.   : 1.0000                   Max.   : 1.00000           
    ##                                                               
    ##  time_body_gyroscopic_mean_Y time_body_gyroscopic_mean_Z
    ##  Min.   :-1.00000            Min.   :-1.00000           
    ##  1st Qu.:-0.10399            1st Qu.: 0.06485           
    ##  Median :-0.07477            Median : 0.08626           
    ##  Mean   :-0.07472            Mean   : 0.08836           
    ##  3rd Qu.:-0.05110            3rd Qu.: 0.11044           
    ##  Max.   : 1.00000            Max.   : 1.00000           
    ##                                                         
    ##  time_body_gyroscopic_sd_X time_body_gyroscopic_sd_Y
    ##  Min.   :-1.0000           Min.   :-1.0000          
    ##  1st Qu.:-0.9872           1st Qu.:-0.9819          
    ##  Median :-0.9016           Median :-0.9106          
    ##  Mean   :-0.7212           Mean   :-0.6827          
    ##  3rd Qu.:-0.4822           3rd Qu.:-0.4461          
    ##  Max.   : 1.0000           Max.   : 1.0000          
    ##                                                     
    ##  time_body_gyroscopic_sd_Z time_body_gyroscopic_jerk_mean_X
    ##  Min.   :-1.0000           Min.   :-1.00000                
    ##  1st Qu.:-0.9850           1st Qu.:-0.11723                
    ##  Median :-0.8819           Median :-0.09824                
    ##  Mean   :-0.6537           Mean   :-0.09671                
    ##  3rd Qu.:-0.3379           3rd Qu.:-0.07930                
    ##  Max.   : 1.0000           Max.   : 1.00000                
    ##                                                            
    ##  time_body_gyroscopic_jerk_mean_Y time_body_gyroscopic_jerk_mean_Z
    ##  Min.   :-1.00000                 Min.   :-1.00000                
    ##  1st Qu.:-0.05868                 1st Qu.:-0.07936                
    ##  Median :-0.04056                 Median :-0.05455                
    ##  Mean   :-0.04232                 Mean   :-0.05483                
    ##  3rd Qu.:-0.02521                 3rd Qu.:-0.03168                
    ##  Max.   : 1.00000                 Max.   : 1.00000                
    ##                                                                   
    ##  time_body_gyroscopic_jerk_sd_X time_body_gyroscopic_jerk_sd_Y
    ##  Min.   :-1.0000                Min.   :-1.0000               
    ##  1st Qu.:-0.9907                1st Qu.:-0.9922               
    ##  Median :-0.9348                Median :-0.9548               
    ##  Mean   :-0.7313                Mean   :-0.7861               
    ##  3rd Qu.:-0.4865                3rd Qu.:-0.6268               
    ##  Max.   : 1.0000                Max.   : 1.0000               
    ##                                                               
    ##  time_body_gyroscopic_jerk_sd_Z time_body_accelerometer_Magnitudemean_
    ##  Min.   :-1.0000                Min.   :-1.0000                       
    ##  1st Qu.:-0.9926                1st Qu.:-0.9819                       
    ##  Median :-0.9503                Median :-0.8746                       
    ##  Mean   :-0.7399                Mean   :-0.5482                       
    ##  3rd Qu.:-0.5097                3rd Qu.:-0.1201                       
    ##  Max.   : 1.0000                Max.   : 1.0000                       
    ##                                                                       
    ##  time_body_accelerometer_Magnitudesd_
    ##  Min.   :-1.0000                     
    ##  1st Qu.:-0.9822                     
    ##  Median :-0.8437                     
    ##  Mean   :-0.5912                     
    ##  3rd Qu.:-0.2423                     
    ##  Max.   : 1.0000                     
    ##                                      
    ##  time_gravity_accelerometer_Magnitudemean_
    ##  Min.   :-1.0000                          
    ##  1st Qu.:-0.9819                          
    ##  Median :-0.8746                          
    ##  Mean   :-0.5482                          
    ##  3rd Qu.:-0.1201                          
    ##  Max.   : 1.0000                          
    ##                                           
    ##  time_gravity_accelerometer_Magnitudesd_
    ##  Min.   :-1.0000                        
    ##  1st Qu.:-0.9822                        
    ##  Median :-0.8437                        
    ##  Mean   :-0.5912                        
    ##  3rd Qu.:-0.2423                        
    ##  Max.   : 1.0000                        
    ##                                         
    ##  time_body_accelerometer_jerk_Magnitudemean_
    ##  Min.   :-1.0000                            
    ##  1st Qu.:-0.9896                            
    ##  Median :-0.9481                            
    ##  Mean   :-0.6494                            
    ##  3rd Qu.:-0.2956                            
    ##  Max.   : 1.0000                            
    ##                                             
    ##  time_body_accelerometer_jerk_Magnitudesd_
    ##  Min.   :-1.0000                          
    ##  1st Qu.:-0.9907                          
    ##  Median :-0.9288                          
    ##  Mean   :-0.6278                          
    ##  3rd Qu.:-0.2733                          
    ##  Max.   : 1.0000                          
    ##                                           
    ##  time_body_gyroscopic_Magnitudemean_ time_body_gyroscopic_Magnitudesd_
    ##  Min.   :-1.0000                     Min.   :-1.0000                  
    ##  1st Qu.:-0.9781                     1st Qu.:-0.9775                  
    ##  Median :-0.8223                     Median :-0.8259                  
    ##  Mean   :-0.6052                     Mean   :-0.6625                  
    ##  3rd Qu.:-0.2454                     3rd Qu.:-0.3940                  
    ##  Max.   : 1.0000                     Max.   : 1.0000                  
    ##                                                                       
    ##  time_body_gyroscopic_jerk_Magnitudemean_
    ##  Min.   :-1.0000                         
    ##  1st Qu.:-0.9923                         
    ##  Median :-0.9559                         
    ##  Mean   :-0.7621                         
    ##  3rd Qu.:-0.5499                         
    ##  Max.   : 1.0000                         
    ##                                          
    ##  time_body_gyroscopic_jerk_Magnitudesd_
    ##  Min.   :-1.0000                       
    ##  1st Qu.:-0.9922                       
    ##  Median :-0.9403                       
    ##  Mean   :-0.7780                       
    ##  3rd Qu.:-0.6093                       
    ##  Max.   : 1.0000                       
    ##                                        
    ##  frequency_body_accelerometer_mean_X frequency_body_accelerometer_mean_Y
    ##  Min.   :-1.0000                     Min.   :-1.0000                    
    ##  1st Qu.:-0.9913                     1st Qu.:-0.9792                    
    ##  Median :-0.9456                     Median :-0.8643                    
    ##  Mean   :-0.6228                     Mean   :-0.5375                    
    ##  3rd Qu.:-0.2646                     3rd Qu.:-0.1032                    
    ##  Max.   : 1.0000                     Max.   : 1.0000                    
    ##                                                                         
    ##  frequency_body_accelerometer_mean_Z frequency_body_accelerometer_sd_X
    ##  Min.   :-1.0000                     Min.   :-1.0000                  
    ##  1st Qu.:-0.9832                     1st Qu.:-0.9929                  
    ##  Median :-0.8954                     Median :-0.9416                  
    ##  Mean   :-0.6650                     Mean   :-0.6034                  
    ##  3rd Qu.:-0.3662                     3rd Qu.:-0.2493                  
    ##  Max.   : 1.0000                     Max.   : 1.0000                  
    ##                                                                       
    ##  frequency_body_accelerometer_sd_Y frequency_body_accelerometer_sd_Z
    ##  Min.   :-1.00000                  Min.   :-1.0000                  
    ##  1st Qu.:-0.97689                  1st Qu.:-0.9780                  
    ##  Median :-0.83261                  Median :-0.8398                  
    ##  Mean   :-0.52842                  Mean   :-0.6179                  
    ##  3rd Qu.:-0.09216                  3rd Qu.:-0.3023                  
    ##  Max.   : 1.00000                  Max.   : 1.0000                  
    ##                                                                     
    ##  frequency_body_accelerometer_jerk_mean_X
    ##  Min.   :-1.0000                         
    ##  1st Qu.:-0.9912                         
    ##  Median :-0.9516                         
    ##  Mean   :-0.6567                         
    ##  3rd Qu.:-0.3270                         
    ##  Max.   : 1.0000                         
    ##                                          
    ##  frequency_body_accelerometer_jerk_mean_Y
    ##  Min.   :-1.0000                         
    ##  1st Qu.:-0.9848                         
    ##  Median :-0.9257                         
    ##  Mean   :-0.6290                         
    ##  3rd Qu.:-0.2638                         
    ##  Max.   : 1.0000                         
    ##                                          
    ##  frequency_body_accelerometer_jerk_mean_Z
    ##  Min.   :-1.0000                         
    ##  1st Qu.:-0.9873                         
    ##  Median :-0.9475                         
    ##  Mean   :-0.7436                         
    ##  3rd Qu.:-0.5133                         
    ##  Max.   : 1.0000                         
    ##                                          
    ##  frequency_body_accelerometer_jerk_sd_X
    ##  Min.   :-1.0000                       
    ##  1st Qu.:-0.9920                       
    ##  Median :-0.9562                       
    ##  Mean   :-0.6550                       
    ##  3rd Qu.:-0.3203                       
    ##  Max.   : 1.0000                       
    ##                                        
    ##  frequency_body_accelerometer_jerk_sd_Y
    ##  Min.   :-1.0000                       
    ##  1st Qu.:-0.9865                       
    ##  Median :-0.9280                       
    ##  Mean   :-0.6122                       
    ##  3rd Qu.:-0.2361                       
    ##  Max.   : 1.0000                       
    ##                                        
    ##  frequency_body_accelerometer_jerk_sd_Z frequency_body_gyroscopic_mean_X
    ##  Min.   :-1.0000                        Min.   :-1.0000                 
    ##  1st Qu.:-0.9895                        1st Qu.:-0.9853                 
    ##  Median :-0.9590                        Median :-0.8917                 
    ##  Mean   :-0.7809                        Mean   :-0.6721                 
    ##  3rd Qu.:-0.5903                        3rd Qu.:-0.3837                 
    ##  Max.   : 1.0000                        Max.   : 1.0000                 
    ##                                                                         
    ##  frequency_body_gyroscopic_mean_Y frequency_body_gyroscopic_mean_Z
    ##  Min.   :-1.0000                  Min.   :-1.0000                 
    ##  1st Qu.:-0.9847                  1st Qu.:-0.9851                 
    ##  Median :-0.9197                  Median :-0.8877                 
    ##  Mean   :-0.7062                  Mean   :-0.6442                 
    ##  3rd Qu.:-0.4735                  3rd Qu.:-0.3225                 
    ##  Max.   : 1.0000                  Max.   : 1.0000                 
    ##                                                                   
    ##  frequency_body_gyroscopic_sd_X frequency_body_gyroscopic_sd_Y
    ##  Min.   :-1.0000                Min.   :-1.0000               
    ##  1st Qu.:-0.9881                1st Qu.:-0.9808               
    ##  Median :-0.9053                Median :-0.9061               
    ##  Mean   :-0.7386                Mean   :-0.6742               
    ##  3rd Qu.:-0.5225                3rd Qu.:-0.4385               
    ##  Max.   : 1.0000                Max.   : 1.0000               
    ##                                                               
    ##  frequency_body_gyroscopic_sd_Z
    ##  Min.   :-1.0000               
    ##  1st Qu.:-0.9862               
    ##  Median :-0.8915               
    ##  Mean   :-0.6904               
    ##  3rd Qu.:-0.4168               
    ##  Max.   : 1.0000               
    ##                                
    ##  frequency_body_accelerometer_Magnitudemean_
    ##  Min.   :-1.0000                            
    ##  1st Qu.:-0.9847                            
    ##  Median :-0.8755                            
    ##  Mean   :-0.5860                            
    ##  3rd Qu.:-0.2173                            
    ##  Max.   : 1.0000                            
    ##                                             
    ##  frequency_body_accelerometer_Magnitudesd_
    ##  Min.   :-1.0000                          
    ##  1st Qu.:-0.9829                          
    ##  Median :-0.8547                          
    ##  Mean   :-0.6595                          
    ##  3rd Qu.:-0.3823                          
    ##  Max.   : 1.0000                          
    ##                                           
    ##  frequency_body_body_accelerometer_jerk_Magnitudemean_
    ##  Min.   :-1.0000                                      
    ##  1st Qu.:-0.9898                                      
    ##  Median :-0.9290                                      
    ##  Mean   :-0.6208                                      
    ##  3rd Qu.:-0.2600                                      
    ##  Max.   : 1.0000                                      
    ##                                                       
    ##  frequency_body_body_accelerometer_jerk_Magnitudesd_
    ##  Min.   :-1.0000                                    
    ##  1st Qu.:-0.9907                                    
    ##  Median :-0.9255                                    
    ##  Mean   :-0.6401                                    
    ##  3rd Qu.:-0.3082                                    
    ##  Max.   : 1.0000                                    
    ##                                                     
    ##  frequency_body_body_gyroscopic_Magnitudemean_
    ##  Min.   :-1.0000                              
    ##  1st Qu.:-0.9825                              
    ##  Median :-0.8756                              
    ##  Mean   :-0.6974                              
    ##  3rd Qu.:-0.4514                              
    ##  Max.   : 1.0000                              
    ##                                               
    ##  frequency_body_body_gyroscopic_Magnitudesd_
    ##  Min.   :-1.0000                            
    ##  1st Qu.:-0.9781                            
    ##  Median :-0.8275                            
    ##  Mean   :-0.7000                            
    ##  3rd Qu.:-0.4713                            
    ##  Max.   : 1.0000                            
    ##                                             
    ##  frequency_body_body_gyroscopic_jerk_Magnitudemean_
    ##  Min.   :-1.0000                                   
    ##  1st Qu.:-0.9921                                   
    ##  Median :-0.9453                                   
    ##  Mean   :-0.7798                                   
    ##  3rd Qu.:-0.6122                                   
    ##  Max.   : 1.0000                                   
    ##                                                    
    ##  frequency_body_body_gyroscopic_jerk_Magnitudesd_    type     
    ##  Min.   :-1.0000                                  test :2947  
    ##  1st Qu.:-0.9926                                  train:7352  
    ##  Median :-0.9382                                              
    ##  Mean   :-0.7922                                              
    ##  3rd Qu.:-0.6437                                              
    ##  Max.   : 1.0000                                              
    ##
