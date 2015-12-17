;Generated with Cura_SteamEngine 15.01
; Default start code
G28 ; Home extruder
G1 Z15 F100
M107 ; Turn off fan
G90 ; Absolute positioning
M82 ; Extruder in absolute mode
;M190 S50
; Activate all used extruder
M104 S220 T0
G92 E0 ; Reset extruder position
; Wait for all used extruders to reach temperature
M109 S220 T0
;Layer count: 5
;LAYER:0
M107
G0 F9000 X81.869 Y73.143 Z0.300

G0 F9000 X85.669 Y76.943
;TYPE:WALL-INNER
G1 F2400 E9.82303
G1 F1800 X114.469 Y76.943 E11.25986
G1 X114.469 Y82.743 E11.54923
G1 X105.549 Y82.743 E11.99425
G1 X105.549 Y117.799 E13.74320
G1 X105.579 Y122.917 E13.99854
G1 X85.534 Y118.738 E15.02009
G1 X85.573 Y113.333 E15.28976
G1 X94.749 Y115.089 E15.75586
G1 X94.749 Y82.743 E17.36960
G1 X85.669 Y82.743 E17.82261
G1 X85.669 Y76.943 E18.11197
G0 F9000 X85.269 Y76.543
;TYPE:WALL-OUTER
G1 F1800 X114.869 Y76.543 E19.58872
G1 X114.869 Y83.143 E19.91800
G1 X105.949 Y83.143 E20.36302
G1 X105.949 Y118.199 E22.11197
G1 X105.983 Y123.409 E22.37190
G1 X85.131 Y119.062 E23.43458
G1 X85.176 Y112.850 E23.74450
G1 X94.349 Y114.605 E24.21045
G1 X94.349 Y83.143 E25.78009
G1 X85.269 Y83.143 E26.23309
G1 X85.269 Y76.543 E26.56237
G0 F9000 X85.851 Y77.083
;TYPE:SKIN
G1 F1800 X91.370 Y82.602 E26.95177
G0 F9000 X90.805 Y82.602
G1 F1800 X85.808 Y77.605 E27.30433
G0 F9000 X85.808 Y78.171
G1 F1800 X90.239 Y82.602 E27.61696
G0 F9000 X89.673 Y82.602
G1 F1800 X85.808 Y78.737 E27.88966
G0 F9000 X85.808 Y79.302
G1 F1800 X89.108 Y82.602 E28.12249
G0 F9000 X88.542 Y82.602
G1 F1800 X85.808 Y79.868 E28.31539
G0 F9000 X86.416 Y77.083
G1 F1800 X91.936 Y82.602 E28.70482
G0 F9000 X92.502 Y82.602
G1 F1800 X86.982 Y77.083 E29.09425
G0 F9000 X87.548 Y77.083
G1 F1800 X93.067 Y82.602 E29.48365
G0 F9000 X93.633 Y82.602
G1 F1800 X88.113 Y77.083 E29.87308
G0 F9000 X88.679 Y77.083
G1 F1800 X94.199 Y82.602 E30.26251
G0 F9000 X94.765 Y82.602
G1 F1800 X89.245 Y77.083 E30.65194
G0 F9000 X89.811 Y77.083
G1 F1800 X105.416 Y92.688 E31.75295
G0 F9000 X105.416 Y93.254
G1 F1800 X94.888 Y82.725 E32.49580
G0 F9000 X94.888 Y83.291
G1 F1800 X105.416 Y93.820 E33.23864
G0 F9000 X105.417 Y94.386
G1 F1800 X94.888 Y83.857 E33.98152
G0 F9000 X94.888 Y84.422
G1 F1800 X105.417 Y94.952 E34.72443
G0 F9000 X105.418 Y95.518
G1 F1800 X94.888 Y84.988 E35.46738
G0 F9000 X94.888 Y85.554
G1 F1800 X105.419 Y96.085 E36.21040
G0 F9000 X105.419 Y96.650
G1 F1800 X94.888 Y86.119 E36.95342
G0 F9000 X94.888 Y86.685
G1 F1800 X105.419 Y97.217 E37.69647
G0 F9000 X105.419 Y97.782
G1 F1800 X94.888 Y87.251 E38.43949
G0 F9000 X94.888 Y87.817
G1 F1800 X105.420 Y98.349 E39.18258
G0 F9000 X105.421 Y98.915
G1 F1800 X94.888 Y88.382 E39.92574
G0 F9000 X94.888 Y88.948
G1 F1800 X105.421 Y99.481 E40.66890
G0 F9000 X105.415 Y92.121
G1 F1800 X90.376 Y77.083 E41.72995
G0 F9000 X90.942 Y77.083
G1 F1800 X105.415 Y91.556 E42.75110
G0 F9000 X105.414 Y90.989
G1 F1800 X91.508 Y77.083 E43.73224
G0 F9000 X92.073 Y77.083
G1 F1800 X105.414 Y90.424 E44.67352
G0 F9000 X105.414 Y89.857
G1 F1800 X92.639 Y77.083 E45.57483
G0 F9000 X93.205 Y77.083
G1 F1800 X105.413 Y89.291 E46.43617
G0 F9000 X105.413 Y88.725
G1 F1800 X93.770 Y77.083 E47.25761
G0 F9000 X94.336 Y77.083
G1 F1800 X105.412 Y88.159 E48.03908
G0 F9000 X105.412 Y87.593
G1 F1800 X94.902 Y77.083 E48.78062
G0 F9000 X95.467 Y77.083
G1 F1800 X105.411 Y87.027 E49.48222
G0 F9000 X105.411 Y86.461
G1 F1800 X96.033 Y77.083 E50.14389
G0 F9000 X96.599 Y77.083
G1 F1800 X105.411 Y85.895 E50.76562
G0 F9000 X105.410 Y85.328
G1 F1800 X97.164 Y77.083 E51.34739
G0 F9000 X97.730 Y77.083
G1 F1800 X105.410 Y84.763 E51.88925
G0 F9000 X105.409 Y84.196
G1 F1800 X98.296 Y77.083 E52.39111
G0 F9000 X98.862 Y77.083
G1 F1800 X105.409 Y83.630 E52.85304
G0 F9000 X105.409 Y83.064
G1 F1800 X99.427 Y77.083 E53.27507
G0 F9000 X99.993 Y77.083
G1 F1800 X105.513 Y82.602 E53.66450
G0 F9000 X106.078 Y82.602
G1 F1800 X100.559 Y77.083 E54.05389
G0 F9000 X101.124 Y77.083
G1 F1800 X106.644 Y82.602 E54.44332
G0 F9000 X107.210 Y82.602
G1 F1800 X101.690 Y77.083 E54.83276
G0 F9000 X102.256 Y77.083
G1 F1800 X107.775 Y82.602 E55.22215
G0 F9000 X108.341 Y82.602
G1 F1800 X102.821 Y77.083 E55.61158
G0 F9000 X103.387 Y77.083
G1 F1800 X108.907 Y82.602 E56.00101
G0 F9000 X109.472 Y82.602
G1 F1800 X103.953 Y77.083 E56.39041
G0 F9000 X104.518 Y77.083
G1 F1800 X110.038 Y82.602 E56.77984
G0 F9000 X110.604 Y82.602
G1 F1800 X105.084 Y77.083 E57.16927
G0 F9000 X105.650 Y77.083
G1 F1800 X111.169 Y82.602 E57.55866
G0 F9000 X111.735 Y82.602
G1 F1800 X106.215 Y77.083 E57.94809
G0 F9000 X106.781 Y77.083
G1 F1800 X112.301 Y82.602 E58.33752
G0 F9000 X112.866 Y82.602
G1 F1800 X107.347 Y77.083 E58.72692
G0 F9000 X107.912 Y77.083
G1 F1800 X113.432 Y82.602 E59.11635
G0 F9000 X113.998 Y82.602
G1 F1800 X108.478 Y77.083 E59.50578
G0 F9000 X109.044 Y77.083
G1 F1800 X114.327 Y82.366 E59.87852
G0 F9000 X114.327 Y81.800
G1 F1800 X109.610 Y77.083 E60.21133
G0 F9000 X110.175 Y77.083
G1 F1800 X114.327 Y81.235 E60.50428
G0 F9000 X114.327 Y80.669
G1 F1800 X110.741 Y77.083 E60.75729
G0 F9000 X111.307 Y77.083
G1 F1800 X114.327 Y80.103 E60.97037
G0 F9000 X114.327 Y79.538
G1 F1800 X111.872 Y77.083 E61.14358
G0 F9000 X112.438 Y77.083
G1 F1800 X114.327 Y78.972 E61.27686
G0 F9000 X114.327 Y78.406
G1 F1800 X113.004 Y77.083 E61.37021
G0 F9000 X113.569 Y77.083
G1 F1800 X114.327 Y77.841 E61.42369
G0 F9000 X114.327 Y77.275
G1 F1800 X114.135 Y77.083 E61.43723
G0 F9000 X94.888 Y89.514
G1 F1800 X105.421 Y100.047 E62.18039
G0 F9000 X105.421 Y100.613
G1 F1800 X94.888 Y90.079 E62.92359
G0 F9000 X94.888 Y90.645
G1 F1800 X105.422 Y101.179 E63.66682
G0 F9000 X105.423 Y101.746
G1 F1800 X94.888 Y91.211 E64.41012
G0 F9000 X94.888 Y91.776
G1 F1800 X105.423 Y102.311 E65.15342
G0 F9000 X105.423 Y102.878
G1 F1800 X94.888 Y92.342 E65.89676
G0 F9000 X94.888 Y92.908
G1 F1800 X105.423 Y103.444 E66.64010
G0 F9000 X105.424 Y104.010
G1 F1800 X94.888 Y93.473 E67.38350
G0 F9000 X94.888 Y94.039
G1 F1800 X105.424 Y104.576 E68.12691
G0 F9000 X105.425 Y105.142
G1 F1800 X94.888 Y94.605 E68.87035
G0 F9000 X94.888 Y95.170
G1 F1800 X105.426 Y105.708 E69.61386
G0 F9000 X105.426 Y106.274
G1 F1800 X94.888 Y95.736 E70.35738
G0 F9000 X94.888 Y96.302
G1 F1800 X105.426 Y106.841 E71.10093
G0 F9000 X105.426 Y107.406
G1 F1800 X94.888 Y96.867 E71.84447
G0 F9000 X94.888 Y97.433
G1 F1800 X105.427 Y107.973 E72.58809
G0 F9000 X105.428 Y108.539
G1 F1800 X94.888 Y97.999 E73.33175
G0 F9000 X94.888 Y98.565
G1 F1800 X105.428 Y109.105 E74.07540
G0 F9000 X105.428 Y109.671
G1 F1800 X94.888 Y99.130 E74.81909
G0 F9000 X94.888 Y99.696
G1 F1800 X105.428 Y110.237 E75.56278
G0 F9000 X105.429 Y110.803
G1 F1800 X94.888 Y100.262 E76.30650
G0 F9000 X94.888 Y100.827
G1 F1800 X105.430 Y111.370 E77.05033
G0 F9000 X105.430 Y111.935
G1 F1800 X94.888 Y101.393 E77.79413
G0 F9000 X94.888 Y101.959
G1 F1800 X105.431 Y112.502 E78.53799
G0 F9000 X105.431 Y113.067
G1 F1800 X94.888 Y102.524 E79.28186
G0 F9000 X94.888 Y103.090
G1 F1800 X105.431 Y113.634 E80.02576
G0 F9000 X105.432 Y114.200
G1 F1800 X94.888 Y103.656 E80.76970
G0 F9000 X94.888 Y104.221
G1 F1800 X105.432 Y114.766 E81.51367
G0 F9000 X105.433 Y115.332
G1 F1800 X94.888 Y104.787 E82.25767
G0 F9000 X94.888 Y105.353
G1 F1800 X105.433 Y115.898 E83.00168
G0 F9000 X105.433 Y116.464
G1 F1800 X94.888 Y105.918 E83.74572
G0 F9000 X94.888 Y106.484
G1 F1800 X105.434 Y117.031 E84.48984
G0 F9000 X105.434 Y117.596
G1 F1800 X94.888 Y107.050 E85.23391
G0 F9000 X94.888 Y107.615
G1 F1800 X105.435 Y118.163 E85.97810
G0 F9000 X105.435 Y118.728
G1 F1800 X94.888 Y108.181 E86.72224
G0 F9000 X94.888 Y108.747
G1 F1800 X105.435 Y119.295 E87.46643
G0 F9000 X105.435 Y119.860
G1 F1800 X94.888 Y109.313 E88.21058
G0 F9000 X94.888 Y109.878
G1 F1800 X105.436 Y120.427 E88.95483
G0 F9000 X105.437 Y120.993
G1 F1800 X94.888 Y110.444 E89.69912
G0 F9000 X94.888 Y111.010
G1 F1800 X105.437 Y121.559 E90.44341
G0 F9000 X105.438 Y122.125
G1 F1800 X94.888 Y111.575 E91.18777
G0 F9000 X94.888 Y112.141
G1 F1800 X105.438 Y122.691 E91.93213
G0 F9000 X104.788 Y122.608
G1 F1800 X94.888 Y112.707 E92.63066
G0 F9000 X94.888 Y113.272
G1 F1800 X104.074 Y122.459 E93.27882
G0 F9000 X103.359 Y122.310
G1 F1800 X94.888 Y113.838 E93.87653
G0 F9000 X94.888 Y114.404
G1 F1800 X102.645 Y122.161 E94.42382
G0 F9000 X101.930 Y122.011
G1 F1800 X94.888 Y114.969 E94.92068
G0 F9000 X94.544 Y115.191
G1 F1800 X101.215 Y121.863 E95.39139
G0 F9000 X100.501 Y121.714
G1 F1800 X93.845 Y115.058 E95.86100
G0 F9000 X93.145 Y114.924
G1 F1800 X99.786 Y121.565 E96.32956
G0 F9000 X99.071 Y121.415
G1 F1800 X92.445 Y114.790 E96.79703
G0 F9000 X91.746 Y114.656
G1 F1800 X98.357 Y121.267 E97.26347
G0 F9000 X97.642 Y121.118
G1 F1800 X91.046 Y114.522 E97.72885
G0 F9000 X90.347 Y114.388
G1 F1800 X96.927 Y120.968 E98.19311
G0 F9000 X96.213 Y120.820
G1 F1800 X89.647 Y114.255 E98.65634
G0 F9000 X88.947 Y114.120
G1 F1800 X95.498 Y120.671 E99.11855
G0 F9000 X94.783 Y120.522
G1 F1800 X88.248 Y113.987 E99.57963
G0 F9000 X87.549 Y113.853
G1 F1800 X94.068 Y120.372 E100.03958
G0 F9000 X93.354 Y120.224
G1 F1800 X86.848 Y113.719 E100.49857
G0 F9000 X86.149 Y113.585
G1 F1800 X92.639 Y120.075 E100.95648
G0 F9000 X91.924 Y119.926
G1 F1800 X85.709 Y113.711 E101.39498
G0 F9000 X85.706 Y114.273
G1 F1800 X91.210 Y119.777 E101.78332
G0 F9000 X90.495 Y119.628
G1 F1800 X85.702 Y114.834 E102.12152
G0 F9000 X85.697 Y115.396
G1 F1800 X89.780 Y119.479 E102.40960
G0 F9000 X89.065 Y119.329
G1 F1800 X85.694 Y115.958 E102.64744
G0 F9000 X85.690 Y116.519
G1 F1800 X88.351 Y119.181 E102.83523
G0 F9000 X87.636 Y119.032
G1 F1800 X85.685 Y117.081 E102.97288
G0 F9000 X85.681 Y117.642
G1 F1800 X86.921 Y118.883 E103.06041
G0 F9000 X86.206 Y118.733
G1 F1800 X85.678 Y118.204 E103.09769
G0 F9000 X94.676 Y115.001
G0 X94.690 Y82.802
G0 X86.279 Y82.602
G1 F1800 X85.808 Y82.131 E103.13093
G0 F9000 X85.808 Y81.565
G1 F1800 X86.845 Y82.602 E103.20409
G0 F9000 X87.411 Y82.602
G1 F1800 X85.808 Y80.999 E103.31719
G0 F9000 X85.808 Y80.434
G1 F1800 X87.976 Y82.602 E103.47016
M107
G1 F2400 E349.19661
G0 F9000 X86.206 Y118.733 Z6.000
; Default end code
;G1 X0 Y0 Z130 ; Get extruder out of way. Uncomment to use!
M107 ; Turn off fan
; Disable all extruder
G91 ; Relative positioning
T0
G1 E-1 ; Reduce filament pressure
M104 T0 S0
G90 ; Absolute positioning
G92 E0 ; Reset extruder position
M140 S0 ; Disable heated bed
M84 ; Turn steppers off