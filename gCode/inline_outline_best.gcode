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
G1 X10.480000 Y0.480000 E12.789350
G1 X10.480000 Y6.520000 E13.208488
G1 X19.480000 Y6.520000 E13.833030
G1 X19.480000 Y38.480000 E16.050849
G1 X10.480000 Y35.480000 E16.709175
G1 X10.480000 Y41.520000 E17.128312
G1 X30.520000 Y48.520000 E18.601356
G1 X30.520000 Y6.520000 E21.515887
G1 X39.520000 Y6.520000 E22.140429
G1 X39.520000 Y0.480000 E22.559567
G1 X10.480000 Y0.480000 E24.574757
G1 X10.960000 Y0.960000 E24.621863
G1 X10.960000 Y6.040000 E24.974382
G1 X19.960000 Y6.040000 E25.598924
G1 X19.960000 Y38.960000 E27.883361
G1 X10.960000 Y35.960000 E28.541687
G1 X10.960000 Y41.040000 E28.894206
G1 X30.040000 Y48.040000 E30.304530
G1 X30.040000 Y6.040000 E33.219061
G1 X39.040000 Y6.040000 E33.843603
G1 X39.040000 Y0.960000 E34.196123
G1 X10.960000 Y0.960000 E36.144695
G1 X11.440000 Y1.440000 E36.191801
G1 X11.440000 Y5.560000 E36.477702
G1 X20.440000 Y5.560000 E37.102245
G1 X20.440000 Y39.440000 E39.453300
G1 X11.440000 Y36.440000 E40.111625
G1 X11.440000 Y40.560000 E40.397527
G1 X29.560000 Y47.560000 E41.745504
G1 X29.560000 Y5.560000 E44.660035
G1 X38.560000 Y5.560000 E45.284577
G1 X38.560000 Y1.440000 E45.570479
G1 X11.440000 Y1.440000 E47.452433
G1 X11.920000 Y1.920000 E47.499539
G1 X11.920000 Y5.080000 E47.718823
G1 X20.920000 Y5.080000 E48.343365
G1 X20.920000 Y39.920000 E50.761038
G1 X11.920000 Y36.920000 E51.419363
G1 X11.920000 Y40.080000 E51.638647
G1 X29.080000 Y47.080000 E52.924707
G1 X29.080000 Y5.080000 E55.839238
G1 X38.080000 Y5.080000 E56.463780
G1 X38.080000 Y1.920000 E56.683064
G1 X11.920000 Y1.920000 E58.498400
G1 X12.400000 Y2.400000 E58.545506
G1 X12.400000 Y4.600000 E58.698172
G1 X21.400000 Y4.600000 E59.322714
G1 X21.400000 Y40.400000 E61.807005
G1 X12.400000 Y37.400000 E62.465330
G1 X12.400000 Y39.600000 E62.617996
G1 X28.600000 Y46.600000 E63.842631
G1 X28.600000 Y4.600000 E66.757162
G1 X37.600000 Y4.600000 E67.381704
G1 X37.600000 Y2.400000 E67.534370
G1 X12.400000 Y2.400000 E69.283089
G1 X12.880000 Y2.880000 E69.330195
G1 X12.880000 Y4.120000 E69.416243
G1 X21.880000 Y4.120000 E70.040785
G1 X21.880000 Y40.880000 E72.591694
G0 X12.880000 Y37.880000 E73.250019
G1 X12.880000 Y39.120000 E73.336067
G1 X28.120000 Y46.120000 E74.499849
G1 X28.120000 Y4.120000 E77.414380
G1 X37.120000 Y4.120000 E78.038922
G1 X37.120000 Y2.880000 E78.124970
G1 X12.880000 Y2.880000 E79.807071
G1 X13.360000 Y3.360000 E79.854177
G1 X13.360000 Y3.640000 E79.873607
G1 X22.360000 Y3.640000 E80.498149
G1 X22.360000 Y41.360000 E83.115676
G1 X13.360000 Y38.360000 E83.774001
G1 X13.360000 Y38.640000 E83.793431
G1 X27.640000 Y45.640000 E84.897026
G1 X27.640000 Y3.640000 E87.811557
G1 X36.640000 Y3.640000 E88.436099
G1 X36.640000 Y3.360000 E88.455529
G0 X22.840000 Y3.500000 E90.730251
G1 X22.840000 Y41.840000 E93.390802
G0 X13.840000 Y38.500000 E94.072721
G1 X27.160000 Y45.160000 E95.106145
G1 X27.160000 Y3.500000 E97.997082
G0 X36.160000 Y3.500000 E98.621625
G0 X36.160000 Y3.500000 E98.621625
G0 X13.840000 Y3.500000 E100.170490
G0 X14.320000 Y3.500000 E100.203799
G1 X14.320000 Y3.500000 E100.203799
G0 X23.320000 Y3.500000 E100.828341
G1 X23.320000 Y42.320000 E103.522200
G0 X26.680000 Y44.680000 E105.196372
G1 X26.680000 Y3.500000 E108.054000
G0 X23.800000 Y3.500000 E110.818641
G1 X23.800000 Y42.800000 E113.545809
G1 X19 Y40.8 E113.545809
G0 X26.200000 Y44.200000 E115.178808
G1 X26.200000 Y3.500000 E118.003127
G0 X24.280000 Y3.500000 E120.701150
G1 X24.280000 Y43.280000 E123.461627
G0 X25.720000 Y43.720000 E125.053454
G1 X25.720000 Y3.500000 E127.844465
G0 X24.760000 Y3.500000 E130.475870
G1 X24.760000 Y43.500000 E133.251614
G0 X25.240000 Y43.240000 E134.796788
G1 X25.240000 Y3.500000 E137.554489
G0 X34.240000 Y3.500000 E138.179031
G1 X34.240000 Y3.500000 E138.179031
M104 S0 T0
M104 S0 T1
M140 S0
G0 Z100 F1200
G28 X0
M84
