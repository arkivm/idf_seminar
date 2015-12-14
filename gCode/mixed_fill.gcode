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
G0 X0.000000 Y0.000000 Z0.000000
G92 X0.000000 Y0.000000 Z0.000000
G0 X10.000000 Y0.000000 Z0.200000
G1 X10.000000 Y7.000000 E0.847057
G1 X19.000000 Y7.000000 E1.471599
G1 X19.000000 Y38.000000 E3.622801
G1 X10.000000 Y35.000000 E4.281126
G1 X10.000000 Y42.000000 E4.766881
G1 X31.000000 Y49.000000 E6.302974
G1 X31.000000 Y7.000000 E9.217505
G1 X40.000000 Y7.000000 E9.842047
G1 X40.000000 Y0.000000 E10.327802
G1 X10.000000 Y0.000000 E12.409610
G0 X10.000000 Y0.000000 
G1 X10.000000 Y0.000000 E12.409610
G1 X10.000000 Y0.500000 E12.444307
G1 X40.000000 Y0.500000 E14.526115
G1 X40.000000 Y1.000000 E14.560811
G1 X10.000000 Y1.000000 E16.642619
G1 X10.000000 Y1.500000 E16.677316
G1 X40.000000 Y1.500000 E18.759124
G1 X40.000000 Y2.000000 E18.793821
G1 X10.000000 Y2.000000 E20.875628
G1 X10.000000 Y2.500000 E20.910325
G1 X40.000000 Y2.500000 E22.992133
G1 X40.000000 Y3.000000 E23.026830
G1 X10.000000 Y3.000000 E25.108638
G1 X10.000000 Y3.500000 E25.143335
G1 X40.000000 Y3.500000 E27.225142
G1 X40.000000 Y4.000000 E27.259839
G1 X10.000000 Y4.000000 E29.341647
G1 X10.000000 Y4.500000 E29.376344
G1 X40.000000 Y4.500000 E31.458152
G1 X40.000000 Y5.000000 E31.492848
G1 X10.000000 Y5.000000 E33.574656
G1 X10.000000 Y5.500000 E33.609353
G1 X40.000000 Y5.500000 E35.691161
G1 X40.000000 Y6.000000 E35.725858
G1 X10.000000 Y6.000000 E37.807665
G1 X10.000000 Y6.500000 E37.842362
G1 X40.000000 Y6.500000 E39.924170
G1 X40.000000 Y7.000000 E39.958867
G0 X19.000000 Y7.000000 
G1 X19.000000 Y38.000000 E42.557191
G1 X19.500000 Y38.000000 E42.591888
G1 X19.500000 Y7.000000 E44.743089
G1 X20.000000 Y7.000000 E44.777786
G1 X20.000000 Y38.000000 E46.928988
G1 X20.500000 Y38.000000 E46.963684
G1 X20.500000 Y7.000000 E49.114886
G1 X21.000000 Y7.000000 E49.149583
G1 X21.000000 Y38.000000 E51.300784
G1 X21.500000 Y38.000000 E51.335481
G1 X21.500000 Y7.000000 E53.486682
G1 X22.000000 Y7.000000 E53.521379
G1 X22.000000 Y38.000000 E55.672580
G1 X22.500000 Y38.000000 E55.707277
G1 X22.500000 Y7.000000 E57.858479
G1 X23.000000 Y7.000000 E57.893175
G1 X23.000000 Y38.000000 E60.044377
G1 X23.500000 Y38.000000 E60.079074
G1 X23.500000 Y7.000000 E62.230275
G1 X24.000000 Y7.000000 E62.264972
G1 X24.000000 Y38.000000 E64.416173
G1 X24.500000 Y38.000000 E64.450870
G1 X24.500000 Y7.000000 E66.602072
G1 X25.000000 Y7.000000 E66.636768
G1 X25.000000 Y38.000000 E68.787970
G1 X25.500000 Y38.000000 E68.822667
G1 X25.500000 Y7.000000 E70.973868
G1 X26.000000 Y7.000000 E71.008565
G1 X26.000000 Y38.000000 E73.159766
G1 X26.500000 Y38.000000 E73.194463
G1 X26.500000 Y7.000000 E75.345664
G1 X27.000000 Y7.000000 E75.380361
G1 X27.000000 Y38.000000 E77.531563
G1 X27.500000 Y38.000000 E77.566259
G1 X27.500000 Y7.000000 E79.717461
G1 X28.000000 Y7.000000 E79.752158
G1 X28.000000 Y38.000000 E81.903359
G1 X28.500000 Y38.000000 E81.938056
G1 X28.500000 Y7.000000 E84.089257
G1 X29.000000 Y7.000000 E84.123954
G1 X29.000000 Y38.000000 E86.275155
G1 X29.500000 Y38.000000 E86.309852
G1 X29.500000 Y7.000000 E88.461054
G1 X30.000000 Y7.000000 E88.495750
G1 X30.000000 Y38.000000 E90.646952
G1 X30.500000 Y38.000000 E90.681649
G1 X30.500000 Y7.000000 E92.832850
G0 X19.000000 Y38.000000 
G1 X31.000000 Y38.000000 E93.908591
G1 X31.000000 Y38.200000 E93.915530
G1 X19.960000 Y38.200000 E94.298583
G1 X19.960000 Y38.400000 E94.305522
G1 X31.000000 Y38.400000 E94.688575
G1 X31.000000 Y38.600000 E94.695514
G1 X20.920000 Y38.600000 E95.045258
G1 X20.920000 Y38.800000 E95.052197
G1 X31.000000 Y38.800000 E95.401941
G1 X31.000000 Y39.000000 E95.408880
G1 X21.880000 Y39.000000 E95.725315
G1 X21.880000 Y39.200000 E95.732254
G1 X31.000000 Y39.200000 E96.048689
G1 X31.000000 Y39.400000 E96.055628
G1 X22.840000 Y39.400000 E96.338754
G1 X22.840000 Y39.600000 E96.345694
G1 X31.000000 Y39.600000 E96.628819
G1 X31.000000 Y39.800000 E96.635759
G1 X23.800000 Y39.800000 E96.885576
G1 X23.800000 Y40.000000 E96.892515
G1 X31.000000 Y40.000000 E97.142332
G1 X31.000000 Y40.200000 E97.149271
G1 X24.760000 Y40.200000 E97.365779
G1 X24.760000 Y40.400000 E97.372719
G1 X31.000000 Y40.400000 E97.589227
G1 X31.000000 Y40.600000 E97.596166
G1 X25.720000 Y40.600000 E97.779365
G1 X25.720000 Y40.800000 E97.786305
G1 X31.000000 Y40.800000 E97.969504
G1 X31.000000 Y41.000000 E97.976443
G1 X26.680000 Y41.000000 E98.126333
G1 X26.680000 Y41.200000 E98.133273
G1 X31.000000 Y41.200000 E98.283163
G1 X31.000000 Y41.400000 E98.290102
G1 X27.640000 Y41.400000 E98.406683
G1 X27.640000 Y41.600000 E98.413623
G1 X31.000000 Y41.600000 E98.530204
G1 X31.000000 Y41.800000 E98.537143
G1 X28.600000 Y41.800000 E98.620416
G1 X28.600000 Y42.000000 E98.627355
G1 X31.000000 Y42.000000 E98.710627
G1 X31.000000 Y42.200000 E98.717567
G1 X29.560000 Y42.200000 E98.767530
G1 X29.560000 Y42.400000 E98.774469
G1 X31.000000 Y42.400000 E98.824433
G1 X31.000000 Y42.600000 E98.831372
G1 X30.520000 Y42.600000 E98.848027
G1 X30.520000 Y42.800000 E98.854966
G1 X31.000000 Y42.800000 E98.871620
G1 X31.000000 Y43.000000 E98.878560
G0 X10.000000 Y35.000000 
G1 X31.000000 Y42.000000 E98.947953
G1 X31.000000 Y42.500000 E98.982650
G1 X10.000000 Y35.500000 E100.518743
G1 X10.000000 Y36.000000 E100.553440
G1 X31.000000 Y43.000000 E102.089532
G1 X31.000000 Y43.500000 E102.124229
G1 X10.000000 Y36.500000 E103.660322
G1 X10.000000 Y37.000000 E103.695019
G1 X31.000000 Y44.000000 E105.231111
G1 X31.000000 Y44.500000 E105.265808
G1 X10.000000 Y37.500000 E106.801901
G1 X10.000000 Y38.000000 E106.836598
G1 X31.000000 Y45.000000 E108.372690
G1 X31.000000 Y45.500000 E108.407387
G1 X10.000000 Y38.500000 E109.943480
G1 X10.000000 Y39.000000 E109.978176
G1 X31.000000 Y46.000000 E111.514269
G1 X31.000000 Y46.500000 E111.548966
G1 X10.000000 Y39.500000 E113.085059
G1 X10.000000 Y40.000000 E113.119755
G1 X31.000000 Y47.000000 E114.655848
G1 X31.000000 Y47.500000 E114.690545
G1 X10.000000 Y40.500000 E116.226638
G1 X10.000000 Y41.000000 E116.261334
G1 X31.000000 Y48.000000 E117.797427
G1 X31.000000 Y48.500000 E117.832124
G1 X10.000000 Y41.500000 E119.368217
G1 X10.000000 Y42.000000 E119.402913
M104 S0 T0
M104 S0 T1
M140 S0
G0 Z100 F1200
G28 X0
M84
