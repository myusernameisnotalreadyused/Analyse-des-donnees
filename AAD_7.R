set.seed(123)
taill <- c(10, 100, 1000, 10000, 100000)
X <- c()
Z <- c()
z1 <- qnorm((0.05 / 2))
z2 <- qnorm((0.975))
par(mfrow = c(2, 3))
for (n in taill)
{
    x <- rnorm(n, 3.01, 1)
    X <- c(X, x)
    z <- (mean(x) - 3) / (1 / sqrt(n))
    Z <- c(Z, z)
    if (z <= z2 && z >= z1) {
        print("on accepte pour :")
        print(n)
    } else {
        print("on refuse pour :")
        print(n)
    }

    xgrid <- seq(-4, 4, length(1000))
    ygrid <- dnorm(xgrid, 0, 1)
    plot(xgrid, ygrid, lwd = 2, type = "b")
    abline(v = z1, col = "red")
    abline(v = z2, col = "red")
    abline(v = z, col = "blue")
}
