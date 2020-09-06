rm(list=ls())
set.seed(12)
X <- runif(10^4, min=0, max=5)  #uniformly distributed variable X
hist(X, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), breaks = seq(0,5, by=0.1), ylim = c(0,0.30))  #histogram1 of X 


X_dum <- sort(X)  #sorting X for creating trend(x-co-ordinate) over histogram1
Y_dum <- rep(0.2, length(X_dum))  #sorting Y for creating trend(y-co-ordinate) over histogram1
lines(X_dum,Y_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram1


Y <- 1/X #  1/uniformly_distributed variable
hist(Y, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), xlim = c(0,5), breaks = seq(0,5000, by=0.05)) #histogram2 of 1/X

X2_dum <- sort(Y)  #sorting X^2 for creating trend(x-co-ordinate) over histogram2
Y2_dum <- 1/(5*X2_dum^2)   ##sorting Y(X^2) for creating trend(y-co-ordinate) over histogram2
lines(X2_dum,Y2_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram2
 min(Y)
 