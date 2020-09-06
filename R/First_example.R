rm(list=ls())
set.seed(11) #for reproducibility
X <- runif(10000, min=0, max = 10) #uniformly distributed variable X
hist(X, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), breaks = seq(0,10, by=0.2), ylim = c(0,0.14)) #histogram1 of X 

X_dum <- sort(X) #sorting X for creating trend(x-co-ordinate) over histogram1
Y_dum <- rep(0.10, length(X_dum)) #sorting Y for creating trend(y-co-ordinate) over histogram1
lines(X_dum,Y_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram1


Y <- X^2 #uniformly_distributed variable squared
hist(Y, prob=T, border = F, col=rgb(0.3,0.3,1,0.3), breaks = seq(0,100, by=0.5), ylim = c(0,0.14)) #histogram2 of X^2

X2_dum <- sort(Y)  #sorting X^2 for creating trend(x-co-ordinate) over histogram2
Y2_dum <- 1/(20*sqrt(X2_dum))   ##sorting Y(X^2) for creating trend(y-co-ordinate) over histogram2
lines(X2_dum,Y2_dum, lwd=2, col=rgb(0.3,0.3,1,0.5)) #create trend over histogram2

