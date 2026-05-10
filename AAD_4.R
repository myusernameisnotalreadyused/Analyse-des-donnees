set.seed(123)
n <- c(10,100,1000,10000,100000,1000000)

moy <- c()
for(i in n)
{ 
   x <- rbinom(i,1,0.3)
   moy <- c(moy,mean(x))
  
}
print(moy)
windows()
plot(1:6,moy,col ="blue",pch =19, ylab = "moyenne", xlab="sample sizes",main="bernouli")
abline(h=0.3,col ="red")

n <- c(10,100,1000,10000,100000,1000000)

moy <- c()
for(i in n)
{ 
   x <- rnorm(i,mean=0,sd=1)
   moy <- c(moy,mean(x))
  
}
print(moy)
windows()
plot(1:6,moy,col ="blue",pch =19, ylab = "moyenne", xlab="sample sizes",main="normal")
abline(h=0,col ="red")

