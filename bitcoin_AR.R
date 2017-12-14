bitcoin = read.csv("G:/AIUB/bitopen.csv", header=TRUE)
plot.ts(bitcoin)
plot.ts(bitcoin, xlab="Half hour time", ylab = "Price (in USD)") # edit axis label
plot.ts(bitcoin, xlab="Half hour time", ylab = "Price (in USD)", col=4) # change color of line plot

library(forecast)
fit = Arima(bitcoin,c(1,0,0))
plot( forecast(fit, 24)  )