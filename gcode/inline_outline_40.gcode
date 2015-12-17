G90
M82
M106 S0
M140 S40
M104 S220 T0
M109 S220 T0
M104 S0 T1
M107 ; start with the fan off
G28 X0 Y0 ; home XY axes
G28 Z0 ; home Z
G92 X0 Y0 Z0 E0 ; reset software positions
G1 Z15.0 F180
T0
G92 E0 ; zero the extruded length
G1 E3 F200
G92 E0 ; zero the extruded length again
G1 F225
G1 Z0.1 F1002
T0
G1 X10.000000 Y0.000000 E0.693936
G1 X10.000000 Y7.000000 E1.179691
G1 X19.000000 Y7.000000 E1.804233
G1 X19.000000 Y38.000000 E3.955435
G1 X10.000000 Y35.000000 E4.613760
G1 X10.000000 Y42.000000 E5.099515
G1 X31.000000 Y49.000000 E6.635608
G1 X31.000000 Y7.000000 E9.550139
G1 X40.000000 Y7.000000 E10.174681
G1 X40.000000 Y0.000000 E10.660437
G1 X10.000000 Y0.000000 E12.742244
G1 X10.400000 Y0.400000 E12.781499
G1 X10.400000 Y6.600000 E13.211740
G1 X19.400000 Y6.600000 E13.836282
G1 X19.400000 Y38.400000 E16.042998
G1 X10.400000 Y35.400000 E16.701324
G1 X10.400000 Y41.600000 E17.131564
G1 X30.600000 Y48.600000 E18.615094
G1 X30.600000 Y6.600000 E21.529625
G1 X39.600000 Y6.600000 E22.154168
G1 X39.600000 Y0.400000 E22.584408
G1 X10.400000 Y0.400000 E24.610701
G1 X10.800000 Y0.800000 E24.649956
G1 X10.800000 Y6.200000 E25.024681
G1 X19.800000 Y6.200000 E25.649224
G1 X19.800000 Y38.800000 E27.911455
G1 X10.800000 Y35.800000 E28.569780
G1 X10.800000 Y41.200000 E28.944506
G1 X30.200000 Y48.200000 E30.375697
G1 X30.200000 Y6.200000 E33.290228
G1 X39.200000 Y6.200000 E33.914770
G1 X39.200000 Y0.800000 E34.289496
G1 X10.800000 Y0.800000 E36.260274
G1 X11.200000 Y1.200000 E36.299529
G1 X11.200000 Y5.800000 E36.618739
G1 X20.200000 Y5.800000 E37.243282
G1 X20.200000 Y39.200000 E39.561028
G1 X11.200000 Y36.200000 E40.219353
G1 X11.200000 Y40.800000 E40.538564
G1 X29.800000 Y47.800000 E41.917664
G1 X29.800000 Y5.800000 E44.832195
G1 X38.800000 Y5.800000 E45.456737
G1 X38.800000 Y1.200000 E45.775948
G1 X11.200000 Y1.200000 E47.691211
G1 X11.600000 Y1.600000 E47.730466
G1 X11.600000 Y5.400000 E47.994162
G1 X20.600000 Y5.400000 E48.618704
G1 X20.600000 Y39.600000 E50.991965
G1 X11.600000 Y36.600000 E51.650290
G1 X11.600000 Y40.400000 E51.913986
G1 X29.400000 Y47.400000 E53.241274
G1 X29.400000 Y5.400000 E56.155804
G1 X38.400000 Y5.400000 E56.780347
G1 X38.400000 Y1.600000 E57.044042
G1 X11.600000 Y1.600000 E58.903791
G1 X12.000000 Y2.000000 E58.943046
G1 X12.000000 Y5.000000 E59.151226
G1 X21.000000 Y5.000000 E59.775769
G1 X21.000000 Y40.000000 E62.204545
G1 X12.000000 Y37.000000 E62.862870
G1 X12.000000 Y40.000000 E63.071051
G1 X29.000000 Y47.000000 E64.346837
G1 X29.000000 Y5.000000 E67.261367
G1 X38.000000 Y5.000000 E67.885910
G1 X38.000000 Y2.000000 E68.094091
G1 X12.000000 Y2.000000 E69.898324
G1 X12.400000 Y2.400000 E69.937579
G1 X12.400000 Y4.600000 E70.090245
G1 X21.400000 Y4.600000 E70.714787
G1 X21.400000 Y40.400000 E73.199078
G1 X12.400000 Y37.400000 E73.857403
G1 X12.400000 Y39.600000 E74.010069
G1 X28.600000 Y46.600000 E75.234704
G1 X28.600000 Y4.600000 E78.149235
G1 X37.600000 Y4.600000 E78.773777
G1 X37.600000 Y2.400000 E78.926443
G1 X12.400000 Y2.400000 E80.675162
G1 X12.800000 Y2.800000 E80.714417
G1 X12.800000 Y4.200000 E80.811568
G1 X21.800000 Y4.200000 E81.436110
G1 X21.800000 Y40.800000 E83.975916
G1 X12.800000 Y37.800000 E84.634241
G1 X12.800000 Y39.200000 E84.731392
G1 X28.200000 Y46.200000 E85.905272
G1 X28.200000 Y4.200000 E88.819803
G1 X37.200000 Y4.200000 E89.444346
G1 X37.200000 Y2.800000 E89.541497
G1 X12.800000 Y2.800000 E91.234700
G1 X13.200000 Y3.200000 E91.273955
G1 X13.200000 Y3.800000 E91.315592
G1 X22.200000 Y3.800000 E91.940134
G1 X22.200000 Y41.200000 E94.535454
G1 X13.200000 Y38.200000 E95.193780
G1 X13.200000 Y38.800000 E95.235416
G1 X27.800000 Y45.800000 E96.358992
G1 X27.800000 Y3.800000 E99.273523
G1 X36.800000 Y3.800000 E99.898066
G1 X36.800000 Y3.200000 E99.939702
G1 X13.200000 Y3.200000 E101.577390
G1 X13.600000 Y3.500000 E101.612087
G1 X13.600000 Y3.500000 E101.612087
G1 X22.600000 Y3.500000 E102.236630
G1 X22.600000 Y41.600000 E104.880526
G1 X13.600000 Y38.600000 E105.538851
G1 X13.600000 Y38.500000 E105.545790
G0 X27.400000 Y45.400000 E106.616455
G1 X27.400000 Y3.500000 E109.524047
G1 X36.400000 Y3.500000 E110.148589
G1 X36.400000 Y3.500000 E110.148589
G1 X13.600000 Y3.500000 E111.730763
G1 X14.000000 Y3.500000 E111.758520
G1 X14.000000 Y3.500000 E111.758520
G1 X23.000000 Y3.500000 E112.383063
G1 X23.000000 Y42.000000 E115.054716
G1 X14.000000 Y39.000000 E115.713041
G0 X14.000000 Y38.500000 E115.747738
G0 X27.000000 Y45.000000 E116.756335
G1 X27.000000 Y3.500000 E119.636170
G1 X36.000000 Y3.500000 E120.260712
G1 X36.000000 Y3.500000 E120.260712
G1 X14.000000 Y3.500000 E121.787371
G0 X14.400000 Y3.500000 E121.815128
G0 X23.400000 Y3.500000 E122.439671
G1 X23.400000 Y42.400000 E125.139082
G0 X26.600000 Y44.600000 E125.408557
G1 X26.600000 Y3.500000 E128.260634
G0 X23.800000 Y3.500000 E128.454936
G1 X23.800000 Y42.800000 E131.182105
G0 X26.200000 Y44.200000 E131.374914
G1 X26.200000 Y3.500000 E134.199233
G0 X24.200000 Y3.500000 E134.338020
G1 X24.200000 Y43.200000 E137.092946
G0 X25.800000 Y43.800000 E137.211526
G1 X25.800000 Y3.500000 E140.008088
G0 X24.600000 Y3.500000 E140.091360
G1 X24.600000 Y43.500000 E142.867104
G0 X25.400000 Y43.400000 E142.923051
G1 X25.400000 Y3.500000 E145.691855
M104 S0 T0
M104 S0 T1
M140 S0
G0 Z100 F1200
G28 X0
M84