library(biwavelet)
attach(Variables_Data)
A=IMP
B=FDI
t1=cbind(1:25, IMP)
t2=cbind(1:25, FDI)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: Arms Imports vs FDI", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))

A=IMP
B=GCO
t1=cbind(1:25, IMP)
t2=cbind(1:25, GCO)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: Arms Imports vs Capital Outlay", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))     

A=IMP
B=RD
t1=cbind(1:25, IMP)
t2=cbind(1:25, RD)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: Arms Imports vs R&D Budget", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))    

A=GCO
B=RD
t1=cbind(1:25, GCO)
t2=cbind(1:25, RD)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: Capital Outlay vs R&D Budget", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))   

A=GCO
B=FDI
t1=cbind(1:25, GCO)
t2=cbind(1:25, FDI)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: Capital Outlay vs FDI", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))    

A=RD
B=FDI
t1=cbind(1:25, RD)
t2=cbind(1:25, FDI)
wtc.AB= wtc(t1,t2,nrands=20)
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, plot.phase = TRUE, lty.coi = 1, col.coi = "grey", lwd.coi = 2, 
     lwd.sig = 3, arrow.lwd = 0.04, arrow.len = 0.15, ylab = "Scale", xlab = "Period", 
     plot.cb = TRUE, main = "Wavelet Coherence: R&D Budget vs FDI", xaxt="n")
n=length(t1 [,1])
abline(v= seq(5, n, 5), h=1:8, col="black", lty=1, lwd=1)
axis(side=1, at=c(seq(5,n,5)), labels=c(seq(2001, 2021,5)))    
