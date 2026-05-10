E <- c(1:6)
M <- matrix(0, nrow = length(E), ncol = length(E))

for(i in 1:6)
{
 for(j in 1:6)
    {
      if((i+j)%%2 == 0){M[i,j] <- 1}
    }
}

print(M) 


#test de reflexivité
test = TRUE

for(i in 1:6)
{
 for(j in 1:6)
    {
      if(M[i,i] != 1 ){test <- FALSE}
    }
}

reflexive <- test
print(reflexive)
print(test)



# test de symetrie ou anti symetrie
 test <- TRUE

for(i in 1:6)
{
 for(j in 1:6)
    {
      if(M[i,j] != M[j,i] ){test <- FALSE}
    }
}

symetrie <- test
print(symetrie)
print(test)

#test de transivité

test <- FALSE

for(i in 1:6)
{
 for(j in 1:6)
    {
      if(M[i,j] == 1 ){
                        for(k in  1:6){ if((M[j,k] == 1) && ( M[i,k] == 1))
                                           {test <- TRUE}        
                                      }
                      }
    }
}

transitive <- test

 if( (reflexive == TRUE) && ( transitive == TRUE))
 {
        if(symetrie == TRUE){ print(" c est une relation d equivalence") 
            }else{print(" c est une relation d ordre") 
            }
 }else{ print(" c est une relation ni d ordre ni equivalence") }





