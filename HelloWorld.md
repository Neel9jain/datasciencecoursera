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

## factors 

x <- factor (c(T,F,T,T,F) , 
levels = c(T,F))
x

## missing values 
x <- c (1,2,3,NA,5)
is.na(x)
is.nan(x)
x <- c (1,2,3,4,NaN)
is.na(x)
is.nan(x) 


## data frames 

x <- data.frame( k = 1:4 , bar = c("hi", "i", "am" , "neelesh"))
x
nrow (x)
ncol(x)
row.names(x)

## names attributes 
x <- 1:3
x
names(x)
names(x) <- c("anty", "Bunty","shunty")
names(x)
x

