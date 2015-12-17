﻿G90
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
G1 F1200
G1 Z0.1
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
G1 X10.000000 Y0.200000 E12.423489
G1 X40.000000 Y0.200000 E14.505297
G1 X40.000000 Y0.400000 E14.519175
G1 X10.000000 Y0.400000 E16.600983
G1 X10.000000 Y0.600000 E16.614862
G1 X40.000000 Y0.600000 E18.696670
G1 X40.000000 Y0.800000 E18.710548
G1 X10.000000 Y0.800000 E20.792356
G1 X10.000000 Y1.000000 E20.806235
G1 X40.000000 Y1.000000 E22.888043
G1 X40.000000 Y1.200000 E22.901921
G1 X10.000000 Y1.200000 E24.983729
G1 X10.000000 Y1.400000 E24.997608
G1 X40.000000 Y1.400000 E27.079416
G1 X40.000000 Y1.600000 E27.093294
G1 X10.000000 Y1.600000 E29.175102
G1 X10.000000 Y1.800000 E29.188981
G1 X40.000000 Y1.800000 E31.270789
G1 X40.000000 Y2.000000 E31.284668
G1 X10.000000 Y2.000000 E33.366475
G1 X10.000000 Y2.200000 E33.380354
G1 X40.000000 Y2.200000 E35.462162
G1 X40.000000 Y2.400000 E35.476041
G1 X10.000000 Y2.400000 E37.557848
G1 X10.000000 Y2.600000 E37.571727
G1 X40.000000 Y2.600000 E39.653535
G1 X40.000000 Y2.800000 E39.667414
G1 X10.000000 Y2.800000 E41.749221
G1 X10.000000 Y3.000000 E41.763100
G1 X40.000000 Y3.000000 E43.844908
G1 X40.000000 Y3.200000 E43.858787
G1 X10.000000 Y3.200000 E45.940595
G1 X10.000000 Y3.400000 E45.954473
G1 X40.000000 Y3.400000 E48.036281
G1 X40.000000 Y3.600000 E48.050160
G1 X10.000000 Y3.600000 E50.131968
G1 X10.000000 Y3.800000 E50.145846
G1 X40.000000 Y3.800000 E52.227654
G1 X40.000000 Y4.000000 E52.241533
G1 X10.000000 Y4.000000 E54.323341
G1 X10.000000 Y4.200000 E54.337219
G1 X40.000000 Y4.200000 E56.419027
G1 X40.000000 Y4.400000 E56.432906
G1 X10.000000 Y4.400000 E58.514714
G1 X10.000000 Y4.600000 E58.528592
G1 X40.000000 Y4.600000 E60.610400
G1 X40.000000 Y4.800000 E60.624279
G1 X10.000000 Y4.800000 E62.706087
G1 X10.000000 Y5.000000 E62.719966
G1 X40.000000 Y5.000000 E64.801773
G1 X40.000000 Y5.200000 E64.815652
G1 X10.000000 Y5.200000 E66.897460
G1 X10.000000 Y5.400000 E66.911339
G1 X40.000000 Y5.400000 E68.993146
G1 X40.000000 Y5.600000 E69.007025
G1 X10.000000 Y5.600000 E71.088833
G1 X10.000000 Y5.800000 E71.102712
G1 X40.000000 Y5.800000 E73.184519
G1 X40.000000 Y6.000000 E73.198398
G1 X10.000000 Y6.000000 E75.280206
G1 X10.000000 Y6.200000 E75.294085
G1 X40.000000 Y6.200000 E77.375893
G1 X40.000000 Y6.400000 E77.389771
G1 X10.000000 Y6.400000 E79.471579
G1 X10.000000 Y6.600000 E79.485458
G1 X40.000000 Y6.600000 E81.567266
G1 X40.000000 Y6.800000 E81.581144
G1 X10.000000 Y6.800000 E83.662952
G1 X10.000000 Y7.000000 E83.676831
G0 X19.000000 Y7.000000 
G1 X19.000000 Y7.000000 E84.301373
G1 X19.000000 Y7.200000 E84.315252
G1 X31.000000 Y7.200000 E85.147975
G1 X31.000000 Y7.400000 E85.161854
G1 X19.000000 Y7.400000 E85.994577
G1 X19.000000 Y7.600000 E86.008456
G1 X31.000000 Y7.600000 E86.841179
G1 X31.000000 Y7.800000 E86.855057
G1 X19.000000 Y7.800000 E87.687781
G1 X19.000000 Y8.000000 E87.701659
G1 X31.000000 Y8.000000 E88.534382
G1 X31.000000 Y8.200000 E88.548261
G1 X19.000000 Y8.200000 E89.380984
G1 X19.000000 Y8.400000 E89.394863
G1 X31.000000 Y8.400000 E90.227586
G1 X31.000000 Y8.600000 E90.241465
G1 X19.000000 Y8.600000 E91.074188
G1 X19.000000 Y8.800000 E91.088067
G1 X31.000000 Y8.800000 E91.920790
G1 X31.000000 Y9.000000 E91.934669
G1 X19.000000 Y9.000000 E92.767392
G1 X19.000000 Y9.200000 E92.781270
G1 X31.000000 Y9.200000 E93.613994
G1 X31.000000 Y9.400000 E93.627872
G1 X19.000000 Y9.400000 E94.460595
G1 X19.000000 Y9.600000 E94.474474
G1 X31.000000 Y9.600000 E95.307197
G1 X31.000000 Y9.800000 E95.321076
G1 X19.000000 Y9.800000 E96.153799
G1 X19.000000 Y10.000000 E96.167678
G1 X31.000000 Y10.000000 E97.000401
G1 X31.000000 Y10.200000 E97.014280
G1 X19.000000 Y10.200000 E97.847003
G1 X19.000000 Y10.400000 E97.860881
G1 X31.000000 Y10.400000 E98.693605
G1 X31.000000 Y10.600000 E98.707483
G1 X19.000000 Y10.600000 E99.540206
G1 X19.000000 Y10.800000 E99.554085
G1 X31.000000 Y10.800000 E100.386808
G1 X31.000000 Y11.000000 E100.400687
G1 X19.000000 Y11.000000 E101.233410
G1 X19.000000 Y11.200000 E101.247289
G1 X31.000000 Y11.200000 E102.080012
G1 X31.000000 Y11.400000 E102.093891
G1 X19.000000 Y11.400000 E102.926614
G1 X19.000000 Y11.600000 E102.940493
G1 X31.000000 Y11.600000 E103.773216
G1 X31.000000 Y11.800000 E103.787094
G1 X19.000000 Y11.800000 E104.619817
G1 X19.000000 Y12.000000 E104.633696
G1 X31.000000 Y12.000000 E105.466419
G1 X31.000000 Y12.200000 E105.480298
G1 X19.000000 Y12.200000 E106.313021
G1 X19.000000 Y12.400000 E106.326900
G1 X31.000000 Y12.400000 E107.159623
G1 X31.000000 Y12.600000 E107.173502
G1 X19.000000 Y12.600000 E108.006225
G1 X19.000000 Y12.800000 E108.020104
G1 X31.000000 Y12.800000 E108.852827
G1 X31.000000 Y13.000000 E108.866705
G1 X19.000000 Y13.000000 E109.699429
G1 X19.000000 Y13.200000 E109.713307
G1 X31.000000 Y13.200000 E110.546030
G1 X31.000000 Y13.400000 E110.559909
G1 X19.000000 Y13.400000 E111.392632
G1 X19.000000 Y13.600000 E111.406511
G1 X31.000000 Y13.600000 E112.239234
G1 X31.000000 Y13.800000 E112.253113
G1 X19.000000 Y13.800000 E113.085836
G1 X19.000000 Y14.000000 E113.099715
G1 X31.000000 Y14.000000 E113.932438
G1 X31.000000 Y14.200000 E113.946316
G1 X19.000000 Y14.200000 E114.779040
G1 X19.000000 Y14.400000 E114.792918
G1 X31.000000 Y14.400000 E115.625641
G1 X31.000000 Y14.600000 E115.639520
G1 X19.000000 Y14.600000 E116.472243
G1 X19.000000 Y14.800000 E116.486122
G1 X31.000000 Y14.800000 E117.318845
G1 X31.000000 Y15.000000 E117.332724
G1 X19.000000 Y15.000000 E118.165447
G1 X19.000000 Y15.200000 E118.179326
G1 X31.000000 Y15.200000 E119.012049
G1 X31.000000 Y15.400000 E119.025928
G1 X19.000000 Y15.400000 E119.858651
G1 X19.000000 Y15.600000 E119.872529
G1 X31.000000 Y15.600000 E120.705253
G1 X31.000000 Y15.800000 E120.719131
G1 X19.000000 Y15.800000 E121.551854
G1 X19.000000 Y16.000000 E121.565733
G1 X31.000000 Y16.000000 E122.398456
G1 X31.000000 Y16.200000 E122.412335
G1 X19.000000 Y16.200000 E123.245058
G1 X19.000000 Y16.400000 E123.258937
G1 X31.000000 Y16.400000 E124.091660
G1 X31.000000 Y16.600000 E124.105539
G1 X19.000000 Y16.600000 E124.938262
G1 X19.000000 Y16.800000 E124.952140
G1 X31.000000 Y16.800000 E125.784864
G1 X31.000000 Y17.000000 E125.798742
G1 X19.000000 Y17.000000 E126.631465
G1 X19.000000 Y17.200000 E126.645344
G1 X31.000000 Y17.200000 E127.478067
G1 X31.000000 Y17.400000 E127.491946
G1 X19.000000 Y17.400000 E128.324669
G1 X19.000000 Y17.600000 E128.338548
G1 X31.000000 Y17.600000 E129.171271
G1 X31.000000 Y17.800000 E129.185150
G1 X19.000000 Y17.800000 E130.017873
G1 X19.000000 Y18.000000 E130.031752
G1 X31.000000 Y18.000000 E130.864475
G1 X31.000000 Y18.200000 E130.878353
G1 X19.000000 Y18.200000 E131.711076
G1 X19.000000 Y18.400000 E131.724955
G1 X31.000000 Y18.400000 E132.557678
G1 X31.000000 Y18.600000 E132.571557
G1 X19.000000 Y18.600000 E133.404280
G1 X19.000000 Y18.800000 E133.418159
G1 X31.000000 Y18.800000 E134.250882
G1 X31.000000 Y19.000000 E134.264761
G1 X19.000000 Y19.000000 E135.097484
G1 X19.000000 Y19.200000 E135.111363
G1 X31.000000 Y19.200000 E135.944086
G1 X31.000000 Y19.400000 E135.957964
G1 X19.000000 Y19.400000 E136.790688
G1 X19.000000 Y19.600000 E136.804566
G1 X31.000000 Y19.600000 E137.637289
G1 X31.000000 Y19.800000 E137.651168
G1 X19.000000 Y19.800000 E138.483891
G1 X19.000000 Y20.000000 E138.497770
G1 X31.000000 Y20.000000 E139.330493
G1 X31.000000 Y20.200000 E139.344372
G1 X19.000000 Y20.200000 E140.177095
G1 X19.000000 Y20.400000 E140.190974
G1 X31.000000 Y20.400000 E141.023697
G1 X31.000000 Y20.600000 E141.037576
G1 X19.000000 Y20.600000 E141.870299
G1 X19.000000 Y20.800000 E141.884177
G1 X31.000000 Y20.800000 E142.716900
G1 X31.000000 Y21.000000 E142.730779
G1 X19.000000 Y21.000000 E143.563502
G1 X19.000000 Y21.200000 E143.577381
G1 X31.000000 Y21.200000 E144.410104
G1 X31.000000 Y21.400000 E144.423983
G1 X19.000000 Y21.400000 E145.256706
G1 X19.000000 Y21.600000 E145.270585
G1 X31.000000 Y21.600000 E146.103308
G1 X31.000000 Y21.800000 E146.117187
G1 X19.000000 Y21.800000 E146.949910
G1 X19.000000 Y22.000000 E146.963788
G1 X31.000000 Y22.000000 E147.796512
G1 X31.000000 Y22.200000 E147.810390
G1 X19.000000 Y22.200000 E148.643113
G1 X19.000000 Y22.400000 E148.656992
G1 X31.000000 Y22.400000 E149.489715
G1 X31.000000 Y22.600000 E149.503594
G1 X19.000000 Y22.600000 E150.336317
G1 X19.000000 Y22.800000 E150.350196
G1 X31.000000 Y22.800000 E151.182919
G1 X31.000000 Y23.000000 E151.196798
G1 X19.000000 Y23.000000 E152.029521
G1 X19.000000 Y23.200000 E152.043399
G1 X31.000000 Y23.200000 E152.876123
G1 X31.000000 Y23.400000 E152.890001
G1 X19.000000 Y23.400000 E153.722724
G1 X19.000000 Y23.600000 E153.736603
G1 X31.000000 Y23.600000 E154.569326
G1 X31.000000 Y23.800000 E154.583205
G1 X19.000000 Y23.800000 E155.415928
G1 X19.000000 Y24.000000 E155.429807
G1 X31.000000 Y24.000000 E156.262530
G1 X31.000000 Y24.200000 E156.276409
G1 X19.000000 Y24.200000 E157.109132
G1 X19.000000 Y24.400000 E157.123011
G1 X31.000000 Y24.400000 E157.955734
G1 X31.000000 Y24.600000 E157.969612
G1 X19.000000 Y24.600000 E158.802336
G1 X19.000000 Y24.800000 E158.816214
G1 X31.000000 Y24.800000 E159.648937
G1 X31.000000 Y25.000000 E159.662816
G1 X19.000000 Y25.000000 E160.495539
G1 X19.000000 Y25.200000 E160.509418
G1 X31.000000 Y25.200000 E161.342141
G1 X31.000000 Y25.400000 E161.356020
G1 X19.000000 Y25.400000 E162.188743
G1 X19.000000 Y25.600000 E162.202622
G1 X31.000000 Y25.600000 E163.035345
G1 X31.000000 Y25.800000 E163.049223
G1 X19.000000 Y25.800000 E163.881947
G1 X19.000000 Y26.000000 E163.895825
G1 X31.000000 Y26.000000 E164.728548
G1 X31.000000 Y26.200000 E164.742427
G1 X19.000000 Y26.200000 E165.575150
G1 X19.000000 Y26.400000 E165.589029
G1 X31.000000 Y26.400000 E166.421752
G1 X31.000000 Y26.600000 E166.435631
G1 X19.000000 Y26.600000 E167.268354
G1 X19.000000 Y26.800000 E167.282233
G1 X31.000000 Y26.800000 E168.114956
G1 X31.000000 Y27.000000 E168.128835
G1 X19.000000 Y27.000000 E168.961558
G1 X19.000000 Y27.200000 E168.975436
G1 X31.000000 Y27.200000 E169.808159
G1 X31.000000 Y27.400000 E169.822038
G1 X19.000000 Y27.400000 E170.654761
G1 X19.000000 Y27.600000 E170.668640
G1 X31.000000 Y27.600000 E171.501363
G1 X31.000000 Y27.800000 E171.515242
G1 X19.000000 Y27.800000 E172.347965
G1 X19.000000 Y28.000000 E172.361844
G1 X31.000000 Y28.000000 E173.194567
G1 X31.000000 Y28.200000 E173.208446
G1 X19.000000 Y28.200000 E174.041169
G1 X19.000000 Y28.400000 E174.055047
G1 X31.000000 Y28.400000 E174.887771
G1 X31.000000 Y28.600000 E174.901649
G1 X19.000000 Y28.600000 E175.734372
G1 X19.000000 Y28.800000 E175.748251
G1 X31.000000 Y28.800000 E176.580974
G1 X31.000000 Y29.000000 E176.594853
G1 X19.000000 Y29.000000 E177.427576
G1 X19.000000 Y29.200000 E177.441455
G1 X31.000000 Y29.200000 E178.274178
G1 X31.000000 Y29.400000 E178.288057
G1 X19.000000 Y29.400000 E179.120780
G1 X19.000000 Y29.600000 E179.134658
G1 X31.000000 Y29.600000 E179.967382
G1 X31.000000 Y29.800000 E179.981260
G1 X19.000000 Y29.800000 E180.813983
G1 X19.000000 Y30.000000 E180.827862
G1 X31.000000 Y30.000000 E181.660585
G1 X31.000000 Y30.200000 E181.674464
G1 X19.000000 Y30.200000 E182.507187
G1 X19.000000 Y30.400000 E182.521066
G1 X31.000000 Y30.400000 E183.353789
G1 X31.000000 Y30.600000 E183.367668
G1 X19.000000 Y30.600000 E184.200391
G1 X19.000000 Y30.800000 E184.214270
G1 X31.000000 Y30.800000 E185.046993
G1 X31.000000 Y31.000000 E185.060871
G1 X19.000000 Y31.000000 E185.893595
G1 X19.000000 Y31.200000 E185.907473
G1 X31.000000 Y31.200000 E186.740196
G1 X31.000000 Y31.400000 E186.754075
G1 X19.000000 Y31.400000 E187.586798
G1 X19.000000 Y31.600000 E187.600677
G1 X31.000000 Y31.600000 E188.433400
G1 X31.000000 Y31.800000 E188.447279
G1 X19.000000 Y31.800000 E189.280002
G1 X19.000000 Y32.000000 E189.293881
G1 X31.000000 Y32.000000 E190.126604
G1 X31.000000 Y32.200000 E190.140482
G1 X19.000000 Y32.200000 E190.973206
G1 X19.000000 Y32.400000 E190.987084
G1 X31.000000 Y32.400000 E191.819807
G1 X31.000000 Y32.600000 E191.833686
G1 X19.000000 Y32.600000 E192.666409
G1 X19.000000 Y32.800000 E192.680288
G1 X31.000000 Y32.800000 E193.513011
G1 X31.000000 Y33.000000 E193.526890
G1 X19.000000 Y33.000000 E194.359613
G1 X19.000000 Y33.200000 E194.373492
G1 X31.000000 Y33.200000 E195.206215
G1 X31.000000 Y33.400000 E195.220094
G1 X19.000000 Y33.400000 E196.052817
G1 X19.000000 Y33.600000 E196.066695
G1 X31.000000 Y33.600000 E196.899419
G1 X31.000000 Y33.800000 E196.913297
G1 X19.000000 Y33.800000 E197.746020
G1 X19.000000 Y34.000000 E197.759899
G1 X31.000000 Y34.000000 E198.592622
G1 X31.000000 Y34.200000 E198.606501
G1 X19.000000 Y34.200000 E199.439224
G1 X19.000000 Y34.400000 E199.453103
G1 X31.000000 Y34.400000 E200.285826
G1 X31.000000 Y34.600000 E200.299705
G1 X19.000000 Y34.600000 E201.132428
G1 X19.000000 Y34.800000 E201.146306
G1 X31.000000 Y34.800000 E201.979030
G1 X31.000000 Y35.000000 E201.992908
G1 X19.000000 Y35.000000 E202.825631
G1 X19.000000 Y35.200000 E202.839510
G1 X31.000000 Y35.200000 E203.672233
G1 X31.000000 Y35.400000 E203.686112
G1 X19.000000 Y35.400000 E204.518835
G1 X19.000000 Y35.600000 E204.532714
G1 X31.000000 Y35.600000 E205.365437
G1 X31.000000 Y35.800000 E205.379316
G1 X19.000000 Y35.800000 E206.212039
G1 X19.000000 Y36.000000 E206.225918
G1 X31.000000 Y36.000000 E207.058641
G1 X31.000000 Y36.200000 E207.072519
G1 X19.000000 Y36.200000 E207.905242
G1 X19.000000 Y36.400000 E207.919121
G1 X31.000000 Y36.400000 E208.751844
G1 X31.000000 Y36.600000 E208.765723
G1 X19.000000 Y36.600000 E209.598446
G1 X19.000000 Y36.800000 E209.612325
G1 X31.000000 Y36.800000 E210.445048
G1 X31.000000 Y37.000000 E210.458927
G1 X19.000000 Y37.000000 E211.291650
G1 X19.000000 Y37.200000 E211.305529
G1 X31.000000 Y37.200000 E212.138252
G1 X31.000000 Y37.400000 E212.152130
G1 X19.000000 Y37.400000 E212.984854
G1 X19.000000 Y37.600000 E212.998732
G1 X31.000000 Y37.600000 E213.831455
G1 X31.000000 Y37.800000 E213.845334
G1 X19.000000 Y37.800000 E214.678057
G1 X19.000000 Y38.000000 E214.691936
G1 X31.000000 Y38.000000 E215.524659
G1 X31.000000 Y38.200000 E215.538538
G0 X19.000000 Y38.000000 
G1 X31.000000 Y38.000000 E215.545477
G1 X31.000000 Y38.200000 E215.552417
G1 X20.200000 Y38.200000 E215.927142
G1 X20.200000 Y38.400000 E215.934081
G1 X31.000000 Y38.400000 E216.308807
G1 X31.000000 Y38.600000 E216.315746
G1 X21.400000 Y38.600000 E216.648835
G1 X21.400000 Y38.800000 E216.655775
G1 X31.000000 Y38.800000 E216.988864
G1 X31.000000 Y39.000000 E216.995803
G1 X22.600000 Y39.000000 E217.287256
G1 X22.600000 Y39.200000 E217.294196
G1 X31.000000 Y39.200000 E217.585649
G1 X31.000000 Y39.400000 E217.592588
G1 X23.800000 Y39.400000 E217.842405
G1 X23.800000 Y39.600000 E217.849344
G1 X31.000000 Y39.600000 E218.099161
G1 X31.000000 Y39.800000 E218.106101
G1 X25.000000 Y39.800000 E218.314282
G1 X25.000000 Y40.000000 E218.321221
G1 X31.000000 Y40.000000 E218.529402
G1 X31.000000 Y40.200000 E218.536341
G1 X26.200000 Y40.200000 E218.702886
G1 X26.200000 Y40.400000 E218.709825
G1 X31.000000 Y40.400000 E218.876370
G1 X31.000000 Y40.600000 E218.883309
G1 X27.400000 Y40.600000 E219.008217
G1 X27.400000 Y40.800000 E219.015157
G1 X31.000000 Y40.800000 E219.140065
G1 X31.000000 Y41.000000 E219.147005
G1 X28.600000 Y41.000000 E219.230277
G1 X28.600000 Y41.200000 E219.237216
G1 X31.000000 Y41.200000 E219.320489
G1 X31.000000 Y41.400000 E219.327428
G1 X29.800000 Y41.400000 E219.369064
G1 X29.800000 Y41.600000 E219.376004
G1 X31.000000 Y41.600000 E219.417640
G1 X31.000000 Y41.800000 E219.424579
G1 X31.000000 Y41.800000 E219.424579
G1 X31.000000 Y42.000000 E219.431518
G0 X10.000000 Y42.000000 
G1 X31.000000 Y42.000000 E219.431518
G1 X31.000000 Y42.200000 E219.438458
G1 X11.200000 Y42.200000 E220.125454
G1 X11.200000 Y42.400000 E220.132394
G1 X31.000000 Y42.400000 E220.819390
G1 X31.000000 Y42.600000 E220.826330
G1 X12.400000 Y42.600000 E221.471690
G1 X12.400000 Y42.800000 E221.478629
G1 X31.000000 Y42.800000 E222.123990
G1 X31.000000 Y43.000000 E222.130929
G1 X13.600000 Y43.000000 E222.734653
G1 X13.600000 Y43.200000 E222.741593
G1 X31.000000 Y43.200000 E223.345317
G1 X31.000000 Y43.400000 E223.352256
G1 X14.800000 Y43.400000 E223.914345
G1 X14.800000 Y43.600000 E223.921284
G1 X31.000000 Y43.600000 E224.483372
G1 X31.000000 Y43.800000 E224.490311
G1 X16.000000 Y43.800000 E225.010763
G1 X16.000000 Y44.000000 E225.017703
G1 X31.000000 Y44.000000 E225.538155
G1 X31.000000 Y44.200000 E225.545094
G1 X17.200000 Y44.200000 E226.023910
G1 X17.200000 Y44.400000 E226.030849
G1 X31.000000 Y44.400000 E226.509665
G1 X31.000000 Y44.600000 E226.516604
G1 X18.400000 Y44.600000 E226.953784
G1 X18.400000 Y44.800000 E226.960723
G1 X31.000000 Y44.800000 E227.397903
G1 X31.000000 Y45.000000 E227.404842
G1 X19.600000 Y45.000000 E227.800386
G1 X19.600000 Y45.200000 E227.807325
G1 X31.000000 Y45.200000 E228.202869
G1 X31.000000 Y45.400000 E228.209808
G1 X20.800000 Y45.400000 E228.563715
G1 X20.800000 Y45.600000 E228.570655
G1 X31.000000 Y45.600000 E228.924562
G1 X31.000000 Y45.800000 E228.931501
G1 X22.000000 Y45.800000 E229.243773
G1 X22.000000 Y46.000000 E229.250712
G1 X31.000000 Y46.000000 E229.562983
G1 X31.000000 Y46.200000 E229.569922
G1 X23.200000 Y46.200000 E229.840557
G1 X23.200000 Y46.400000 E229.847497
G1 X31.000000 Y46.400000 E230.118132
G1 X31.000000 Y46.600000 E230.125071
G1 X24.400000 Y46.600000 E230.354070
G1 X24.400000 Y46.800000 E230.361009
G1 X31.000000 Y46.800000 E230.590008
G1 X31.000000 Y47.000000 E230.596948
G1 X25.600000 Y47.000000 E230.784310
G1 X25.600000 Y47.200000 E230.791250
G1 X31.000000 Y47.200000 E230.978612
G1 X31.000000 Y47.400000 E230.985552
G1 X26.800000 Y47.400000 E231.131278
G1 X26.800000 Y47.600000 E231.138218
G1 X31.000000 Y47.600000 E231.283944
G1 X31.000000 Y47.800000 E231.290884
G1 X28.000000 Y47.800000 E231.394974
G1 X28.000000 Y48.000000 E231.401913
G1 X31.000000 Y48.000000 E231.506004
G1 X31.000000 Y48.200000 E231.512943
G1 X29.200000 Y48.200000 E231.575397
G1 X29.200000 Y48.400000 E231.582337
G1 X31.000000 Y48.400000 E231.644791
G1 X31.000000 Y48.600000 E231.651730
G1 X30.400000 Y48.600000 E231.672548
G1 X30.400000 Y48.800000 E231.679488
G1 X31.000000 Y48.800000 E231.700306
G1 X31.000000 Y49.000000 E231.707245
G0 X10.000000 Y35.000000 
G1 X10.000000 Y35.000000 E232.582953
G1 X10.000000 Y35.200000 E232.589892
G1 X10.000000 Y35.200000 E232.589892
G1 X10.000000 Y35.400000 E232.596831
G1 X11.200000 Y35.400000 E232.638468
G1 X11.200000 Y35.600000 E232.645407
G1 X10.000000 Y35.600000 E232.687043
G1 X10.000000 Y35.800000 E232.693982
G1 X12.400000 Y35.800000 E232.777255
G1 X12.400000 Y36.000000 E232.784194
G1 X10.000000 Y36.000000 E232.867466
G1 X10.000000 Y36.200000 E232.874406
G1 X13.600000 Y36.200000 E232.999314
G1 X13.600000 Y36.400000 E233.006254
G1 X10.000000 Y36.400000 E233.131162
G1 X10.000000 Y36.600000 E233.138101
G1 X14.800000 Y36.600000 E233.304646
G1 X14.800000 Y36.800000 E233.311585
G1 X10.000000 Y36.800000 E233.478130
G1 X10.000000 Y37.000000 E233.485069
G1 X16.000000 Y37.000000 E233.693250
G1 X16.000000 Y37.200000 E233.700190
G1 X10.000000 Y37.200000 E233.908370
G1 X10.000000 Y37.400000 E233.915310
G1 X17.200000 Y37.400000 E234.165127
G1 X17.200000 Y37.600000 E234.172066
G1 X10.000000 Y37.600000 E234.421883
G1 X10.000000 Y37.800000 E234.428822
G1 X18.400000 Y37.800000 E234.720275
G1 X18.400000 Y38.000000 E234.727215
G1 X10.000000 Y38.000000 E235.018668
G1 X10.000000 Y38.200000 E235.025607
G1 X19.600000 Y38.200000 E235.358696
G1 X19.600000 Y38.400000 E235.365636
G1 X10.000000 Y38.400000 E235.698725
G1 X10.000000 Y38.600000 E235.705664
G1 X20.800000 Y38.600000 E236.080390
G1 X20.800000 Y38.800000 E236.087329
G1 X10.000000 Y38.800000 E236.462055
G1 X10.000000 Y39.000000 E236.468994
G1 X22.000000 Y39.000000 E236.885356
G1 X22.000000 Y39.200000 E236.892295
G1 X10.000000 Y39.200000 E237.308656
G1 X10.000000 Y39.400000 E237.315596
G1 X23.200000 Y39.400000 E237.773594
G1 X23.200000 Y39.600000 E237.780533
G1 X10.000000 Y39.600000 E238.238531
G1 X10.000000 Y39.800000 E238.245470
G1 X24.400000 Y39.800000 E238.745104
G1 X24.400000 Y40.000000 E238.752043
G1 X10.000000 Y40.000000 E239.251677
G1 X10.000000 Y40.200000 E239.258616
G1 X25.600000 Y40.200000 E239.799886
G1 X25.600000 Y40.400000 E239.806826
G1 X10.000000 Y40.400000 E240.348096
G1 X10.000000 Y40.600000 E240.355035
G1 X26.800000 Y40.600000 E240.937941
G1 X26.800000 Y40.800000 E240.944881
G1 X10.000000 Y40.800000 E241.527787
G1 X10.000000 Y41.000000 E241.534726
G1 X28.000000 Y41.000000 E242.159269
G1 X28.000000 Y41.200000 E242.166208
G1 X10.000000 Y41.200000 E242.790750
G1 X10.000000 Y41.400000 E242.797690
G1 X29.200000 Y41.400000 E243.463868
G1 X29.200000 Y41.600000 E243.470808
G1 X10.000000 Y41.600000 E244.136986
G1 X10.000000 Y41.800000 E244.143925
G1 X30.400000 Y41.800000 E244.851740
G1 X30.400000 Y42.000000 E244.858679
M104 S0 T0
M104 S0 T1
M140 S0
G0 Z100 F1200
G28 X0
M84
