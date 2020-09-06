rm(list=ls())

##create the random uniform distribution and plot its hstogram and amplitude###################################################################
set.seed(13)
X <- runif(10^4, min=-5, max=5)  #uniformly distributed variable X
hist(X, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), breaks = seq(-5,5, by=0.1), ylim = c(0,0.30))  #histogram1 of X 


X_dum <- sort(X)  #sorting X for creating trend(x-co-ordinate) over histogram1
Y_dum <- rep(0.1, length(X_dum))  #sorting Y for creating trend(y-co-ordinate) over histogram1
lines(X_dum,Y_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram1
##############################################################################################################################################

##plot Y versus X##############################################################################################################################

X_plot <- sort(X)
Y_plot <- (X_plot)^4+3

#start plotting the functional map in R
plot(X_plot,Y_plot, type = 'l', col='red', lwd=3, xlab = 'X', ylab = 'Y=f(X)' )


#legend('top', legend = c('X','Y=f(X)'), text.col=c(rgb(0.3,0.3,1,0.3),rgb(0.3,1,0.3,0.5)), pch = c(19,19), col=c(rgb(0.3,0.3,1,0.3),rgb(0.3,1,0.3,0.5)) ) 




###############################################################################################################################################

##create histogram of function Y=f(X)#########################################################################################################
Y <- X^4+3 #  map of the uniformly_distributed variable
hist(Y, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), xlim = c(0,650), breaks = seq(0,630, by=5)) #histogram2 of Y

X2_dum <- sort(Y)  #sorting Y for creating trend(x-co-ordinate) over histogram2
Y2_dum <- (1/20)*((X2_dum-3)^(-3/4))   ##sorting Y(X^2) for creating trend(y-co-ordinate) over histogram2
lines(X2_dum,Y2_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram2
##############################################################################################################################################