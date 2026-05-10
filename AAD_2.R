omega <- 1:4

A <- list(
  integer(0),
  omega,
  c(1,2),
  c(3,4)
)

appar <- function(x, F) {
  for (i in F) {
    if (setequal(x, i)) {
      return(TRUE)
    }
  }
  return(FALSE)
}


cond1 <- appar(omega, A)

# stabilité par rapport au complement
cond2 <- TRUE
for (i in A) {
  comp <- setdiff(omega, i)
  if (!appar(comp, A)) {
    cond2 <- FALSE
  }
}

#  stabilité par rapport a l union
cond3 <- TRUE
for (i in A) {
  for (j in A) {
    if(!(setequal(i,j))){
    un <- union(i, j)
    if (!appar(un, A)) {
      cond3 <- FALSE
    }}
  }
}

cond1
cond2
cond3

if(cond1 && cond2 && cond3)
{print(" A est  tribue de omega")
}else{print(" A n'est  pas  tribue de omega")}
