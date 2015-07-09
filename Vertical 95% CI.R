#Vertical 95% Confidence Intervals

#Create a dataframe with means and standard deviations
mean.1p = c(455.12,772.51,639.65,847.18,959.3805)
sd.1p= c(157.03,219.3661,133.9827,259.1628,129.0448)
prod1.df<-data.frame(mean.1p,sd.1p)

#Now we add lower and upper levels of confidence intervals
prod1.df$LL <- prod1.df$mean.1p-2*prod1.df$sd.1p
prod1.df$UL <- prod1.df$mean.1p+2*prod1.df$sd.1p

title <- "Throughput of One Producer with 95% Confidence Intervals"
plot(prod1.df$mean.1p, col="red", ylim=c(floor(min(prod1.df$LL)/10)*10, ceiling(max(prod1.df$UL)/10)*10),main=title, xlab= "Batch Interval Size", ylab="Records/s" , type="p", pch=19,cex=2, cex.lab=2, cex.main=2,cex.axis=2)
for (i in 1:nrow(prod1.df)){
  lines(x=c(i,i),y=c(prod1.df$LL[i],prod1.df$UL[i]), lwd=3, col="slateblue3")
}
grid()    #grid() adds an optional grid.
