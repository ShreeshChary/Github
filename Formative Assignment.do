tsset yw
dfuller R_TPX
dfuller DY_TPX
pperron R_TPX
pperron DY_TPX
varsoc R_TPX
varsoc DY_TPX
ac R_TPX
pac R_TPX
arima R_TPX DY_TPX if tin(, 2016w1), arima (4,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,3) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,1) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,0) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (2,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,4) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,3) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,1) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,0) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,3) nolog
estat  ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,3) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (2,0,3) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (2,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (2,0,1) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (2,0,0) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,1) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,0) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,1) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,3) nolog
estat ic
predict res3 if tin(, 2015q52), res
estat aroots
wntestq res3, lag(12)
kdensity res3, normal
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,3) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,2) nolog
estat ic
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,4) nolog
estat ic
estat aroots
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,3) nolog
estat ic
estat aroots
predict res4 if tin(, 2015q52), res
wntestq res4, lag(12)
dfuller R_TPX
pperron DY_TPX
dfuller DY_TPX
pperron R_TPX
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,3) nolog
predict f1 if tin(2016w1,)
newey R_TPX f1, lag(4)
test (_cons=0) (f1=1)
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,3) nolog
predict f2 if tin(2016w1,)
newey R_TPX f2, lag(4)
test (_cons=0) (f2=1)
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,1) nolog
predict f3 if tin(2016w1,)
newey R_TPX f3, lag(4)
test (_cons=0) (f3=1)
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,1) nolog
predict f4 if tin(2016w1,)
newey R_TPX f4, lag(4)
test (_cons=0) (f4=1)
twoway (line R_TPX f1 f2 f3 f4 yw in 470/515)
label variable f1 "ARMA (4,3) Prediction"
label variable f2 "ARMA (3,3) prediction "
label variable f3 "ARMA (1,1) Prediction"
label variable f4 "ARMA (0,1) Prediction"
twoway (line R_TPX f1 f2 f3 f4 yw in 470/515)
label variable R_TPX "Returns"
twoway (line R_TPX f1 f2 f3 f4 yw in 470/515)
gen u1= R_TPX-f1 if tin(2016q1,)
gen u2= R_TPX-f2 if tin(2016q1,)
gen u3= R_TPX-f3 if tin(2016q1,)
gen u4= R_TPX-f4 if tin(2016q1,)
gen d12= u1^2 - u2^2
newey d12 if tin(2016q1,), lag(4)
gen d13= u1^2 - u3^2
newey d13 if tin(2016q1,), lag(4)
gen d14= u1^2 - u4^2
newey d14 if tin(2016q1,), lag(4)
gen d23= u2^2 - u3^2
newey d23 if tin(2016q1,), lag(4)
gen d24= u2^2 - u4^2
newey d24 if tin(2016q1,), lag(4)
gen d34= u3^2 - u4^2
newey d34 if tin(2016q1,), lag(4)
tsline R_TPX res3
tsline R_TPX f3 in 470/515
tsline R_TPX f1 in 470/515
su R_TPX R_TPX DY_TPX
su R_TPX DY_TPX
varsoc DY_TPX
varsoc DY_TPX
arima R_TPX DY_TPX if tin(, 2015w52), arima (1,0,1) nolog
estat aroots
estat aroots
arima R_TPX DY_TPX if tin(, 2015w52), arima (0,0,1) nolog
estat aroots
arima R_TPX DY_TPX if tin(, 2015w52), arima (3,0,3) nolog
estat aroots
arima R_TPX DY_TPX if tin(, 2015w52), arima (4,0,3) nolog
estat aroots