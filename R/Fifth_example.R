rm(list=ls())

##create the random uniform distribution and plot its hstogram and amplitude###################################################################
set.seed(15)
X <- runif(10^4, min=0, max=2*pi)  #uniformly distributed variable X
hist(X, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), breaks = seq(0,2*pi, by=pi/50), ylim = c(0,0.30))  #histogram1 of X 


X_dum <- sort(X)  #sorting X for creating trend(x-co-ordinate) over histogram1
Y_dum <- rep(1/(2*pi), length(X_dum))  #sorting Y for creating trend(y-co-ordinate) over histogram1
lines(X_dum,Y_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram1
##############################################################################################################################################

##plot Y versus X##############################################################################################################################

X_plot <- sort(X)
Y_plot <- (sin(X_plot))^2

#start plotting the functional map in R
plot(X_plot,Y_plot, type = 'l', col='red', lwd=3, xlab = 'X', ylab = 'Y=f(X)' )


#legend('top', legend = c('X','Y=f(X)'), text.col=c(rgb(0.3,0.3,1,0.3),rgb(0.3,1,0.3,0.5)), pch = c(19,19), col=c(rgb(0.3,0.3,1,0.3),rgb(0.3,1,0.3,0.5)) ) 




###############################################################################################################################################

##create histogram of function Y=f(X)#########################################################################################################
Y <- (sin(X))^2 #  map of the uniformly_distributed variable
hist(Y, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), xlim = c(-0.2,1.2), breaks = seq(0,1, by=0.0125)) #histogram2 of Y

X2_dum <- sort(Y)  #sorting Y for creating trend(x-co-ordinate) over histogram2
Y2_dum <- (1)/(pi*sqrt(X2_dum*(1-X2_dum)))   ##sorting Y for creating trend(y-co-ordinate) over histogram2
lines(X2_dum,Y2_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram2
##############################################################################################################################################