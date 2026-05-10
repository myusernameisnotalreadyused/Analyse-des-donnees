
ns<- c(20,50,100 , 500) 
for(n in ns){
p<- 0.33 
samples <- 10000 
windows()

xn <- rbinom(samples, n, p)


mu <- n * p
sigma <- sqrt(n * p * (1 - p))


hist(xn, 
     prob = TRUE, 
     breaks = 40,
     col = "blue")


x <- seq(min(xn), max(xn), length = 100)
y <- dnorm(x, mean = mu, sd = sigma)

lines(x, y, col = "red", lwd = 3)


zn <- (xn - mu) / sigma


windows()
hist(zn, prob = TRUE, breaks = 40,col = "green")
curve(dnorm(x, 0, 1), add = TRUE, col = "red", lwd = 3)
}
