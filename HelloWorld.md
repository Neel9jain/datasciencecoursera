##concat
x <- c("hi" , "i" ,"am" ,"neelesh") 

## Vector 
x <- vector("numeric", 10)
x

##List

list (1,c("a","b"),TRUE,10.23)

## Matrices 
m <- matrix (nrow = 2 , ncol = 3)
attributes(m)
attributes(x)
m <- matrix (1:6,nrow = 2 , ncol = 3 )
m

## cbinding matrix 
x <- 1:3
y <- 10:12
m <- cbind (x,y)
m
## rbinding matrix 
x <- 1:3
y <- 10:12
m <- rbind (x,y)
m

