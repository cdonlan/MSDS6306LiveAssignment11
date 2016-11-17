install.packages(fpp)
library(fpp) #fpp package must be installed first

data(elecequip)
plot(elecequip)

fitd <- decompose(elecequip)
plot(fitd)

fit <- stl(elecequip, s.window=5)
plot(fit)

eeadj <- seasadj(fitd)
plot(eeadj)

elecequip2 <- ts(c(elecequip[1:54],elecequip[55]+200,elecequip[56:191]),start=c(1996,1),frequency=12)
plot(elecequip2)


plot(elecequip, col="gray",
     main="Electrical equipment manufacturing",
     ylab="New orders index", xlab="")
lines(fit$time.series[,2],col="red",ylab="Trend")


data(ukcars)
plot(ukcars)

fitcars <- decompose(ukcars)
plot(fitcars)

