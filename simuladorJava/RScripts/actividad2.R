trace <- read.table("c:/r/ejecucion3.dat")
names(trace) = c("tiempo","evento")
trace
newdata <- subset(trace, evento=="machine_failure" ,select=tiempo:evento) 
newdata
total1 = nrow(newdata[newdata$evento=="machine_failure",])
res1 = sum(newdata$tiempo)
newdata1 <- subset(trace, evento=="finishing_repair" ,select=tiempo:evento) 
newdata1
res2= sum(newdata1$tiempo)
downtime =(res2-res1)/total1
cat("El promedio de downtime es: ", downtime)



