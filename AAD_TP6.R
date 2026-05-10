x_bars <- replicate(5000, mean(rnorm(25, mean = 10, sd = 2)))
windows()

hist(x_bars,prob=TRUE)
curve(dnorm(x, mean = 10, sd = (2/5)), 
      add = TRUE,         
      col = "red",         
      lwd = 2)             




z <- (x_bars - 10) / (2/5)

windows()


hist(z,prob = TRUE)


curve(dnorm(x, mean = 0, sd = 1), 
      add = TRUE,          
      col = "red",         
      lwd = 2)