

 #1  fonction normal
  
fonction <- function(x,mu,sigma)
{
  y = (1/(sigma*sqrt(6.28)))* exp((-1*(x-mu)*(x-mu))/(2*sigma*sigma))
  return (y)
}

mu <- 0
sigma <- 1
x <- seq(mu-4*sigma,mu+4*sigma,length = 1000)
windows()
y <- fonction(x,mu,sigma)
plot(x,y,col="red")

 y2 <- dnorm(x, mean = 0, sd = 1, log = FALSE)

lines(x,y2,col = "black" , lwd =3)


######################################################################

#2 loi binomiale


binomial <- function(n,p,k)
{
  coef <- factorial(n)/(factorial(k)*factorial(n-k))
  y <- coef * (p^k) * ((1-p)^(n-k))
  return(y)
}

n <- 10
p <- 0.5
k <- 0:n
windows()
y <- binomial(n,p,k)
plot(k,y,col="blue",type="h")

y2 <- dbinom(k, size=n, prob=p)

points(k,y2,col="red")

#3 loi de Poisson



poisson <- function(k,lamda)
{
  y <- (lamda^k * exp(-lamda)) / factorial(k)
  return(y)
}

lamda <- 4
k <- 0:15

windows()
y <- poisson(k,lamda)
plot(k,y,col="black",type="h")

y2 <- dpois(k, lamda)

points(k,y2,col="green")


#4 loi exponentielle
expo <- function(x, lamda) {
  y <- c()  
  
  for(i in x) {
    if(i >= 0) {
      y <- c(y, (lamda * exp(-lamda * i)))
    } else {
      y <- c(t,0)
    }
  }
  return(y)
}

lamda <- 1
x <- seq(0,10,length=1000)

windows()
y <- expo(x, lamda)
plot(x, y, col="blue", type="l", lwd=2,)

y2 <- dexp(x, rate=lamda)
lines(x, y2, col="red", lwd=3)




#5 loi uniforme


uniforme <- function(x, a, b) {
  y <- c() 
  
  for(i in x) {
    if(i >= a & i <= b) {
      y <- c(y,1/(b-a))
    } else {
      y <- c(y,0)
    }
  }
  return(y)
}

a <- 0
b <- 5
x <- seq(-1,6,length=1000)

windows()
y <- uniforme(x, a, b)
plot(x, y, col="blue", type="l", lwd=2)

y2 <- dunif(x, min=a, max=b)
lines(x, y2, col="red", lwd=3)
