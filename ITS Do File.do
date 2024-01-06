import excel "C:\Users\shree\OneDrive\Desktop\Publishing\Self Reliance\ITS Data.xlsx", sheet("Sheet1") firstrow
encode Year, gen(year)
tsset year, yearly
prais LnRDReal t T1 T2 POL FDI, rhotype(regress) robust
predict rd
gen counterfdi= 5.576948+0.1034217*t
gen counterpol= 5.576948+(0.1034217*t)+(0.1130142*T2)+(0.2227231*POL)
twoway (scatter LnRDReal t) (line rd t if t<5, sort) (line counterfdi t if t>4 & t<18, sort) (line rd t if t>4 & t<18, sort) (line counterpol t if t>17, sort) (line rd t if t >=18, sort), xline(5) xline(18)
prais LnImp t T1 T2 POL FDI, rhotype(regress) robust
predict imp
gen counterfactual1=21.15548-0.1224338*t
gen counterfactual2=21.15548-0.1224338*t+0.2135045*T2+0.2520847*FDI
twoway (scatter LnImp t) (line imp t if t<5, sort) (line counterfactual1 t if t>4 & t<18, sort) (line imp t if t>4 & t<18, sort) (line counterfactual2 t if t>17, sort) (line imp t if t >=18, sort), xline(5) xline(18)
prais LnRDReal t T1 T2 POL FDI, rhotype(regress) robust
reg LnRDReal t T1 T2 POL FDI,  robust
prais LnImp t T1 T2 POL FDI, rhotype(regress) robust
reg LnImp t T1 T2 POL FDI, robust
prais LnImp t t2 T1 T2 POL FDI T1sq T2sq, rhotype(regress) robust
predict yhat
twoway (scatter LnImp t) (line yhat t if t<5, sort) (line yhat t if t>4 & t<18, sort) (line yhat t if t >=18, sort), xline(5) xline(18)
gen l1=21.71943-(0.7386675*t)+(0.124546*t2)
gen l2=21.71943-(0.7386675*t)+(0.124546*t2)+(0.7102848*FDI)-(0.1101484*T2sq)-(0.3742474*T2)
twoway (scatter LnImp t) (line yhat t if t<5, sort) (line l1 t if t>4 & t<18, sort) (line yhat t if t>4 & t<18, sort) (line l2 t if t>17, sort) (line yhat t if t >=18, sort), xline(5) xline(18)
prais LnRDReal t t2 T1 T2 POL FDI T1sq T2sq, rhotype(regress) robust
predict yhat1
gen l3=5.713499-(0.0273995*t)+(0.0245667*t2)
gen l4=5.713499-(0.0273995*t)+(0.0245667*t2)-(0.127216*FDI)+(0.1862978*T2)-(0.0344959*T2sq)
twoway (scatter LnRDReal t) (line yhat1 t if t<5, sort) (line l3 t if t>4 & t<18, sort) (line yhat1 t if t>4 & t<18, sort) (line l4 t if t>17, sort) (line yhat1 t if t >=18, sort), xline(5) xline(18)
reg LnRDReal t t2 T1 T2 POL FDI T1sq T2sq, robust
reg LnImp t t2 T1 T2 POL FDI T1sq T2sq, robust