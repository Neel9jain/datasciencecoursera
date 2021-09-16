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
x <- list (a=1,b=2,c=3)


## reading tabular data

## y <- read.table("read.txt")


getOption("max.print")
y <- read.table("read.txt", nrows=3)
y


## textual data formats 

x <- data.frame(a = 1 , b = "b")
y <- c(1,2)
dump(c("x","y"), file="dump.R")
x
dput(x)
dput(x , file = "dput.R")
y <- dget("dput.R")
y 


## subsetting 
a <- list (aunty= "x" , shunty = c(1,2,3,4),bunty = "hello")
a

a [1] 
a $bunty 

a [c(1,3)]


c <- matrix (1:6 ,3,2)
c  

## removing missing valies 
z = c (1,2,NA,4,5)
z

bad = is.na(z)
bad 

z[!bad]

mgood <-  complete.cases(read.csv("hw1_data.csv")
) 

msg <- read.csv("hw1_data.csv")

msg[good,][1, ]

##return first column 
msg[,1]
good <- complete.cases (msg[,1])
msg[good,][,1]  ## returns good values 
k <- msg[good,][,1] >31
may <-msg [good][,5] = 6



d[d %in% 1:5] <- 0





x[!is.na(x) & x > 0] 

## if condition 

if (x > 3)
{
y<-3
print ("hereaaa")
} else 
{
print ("here tooaaa")

}


## for loop 
for (i in c(1,2,3))
{print(i)}



x<- matrix(1:6,nrow =2 , ncol=3)
for(i in seq_len(nrow(x)))
{
for(j in seq_len(ncol(x))) 
{
print (x[i,j]) 
}
}



## while loop

count <-0
while (count < 10)
{
print(count)
count <- count+1
} 


z<-5

while (z>=3 && z<10)
{
print (z)
coin <- rbinom (1,1,0.5)
}
if (coin == 1 )
{
z <- z+1 
} else 
{
z<- z-1 
}






for (i in 1:1000)
{
if (i ==20)
{
print (i)
break  
}
print (i)
}

default <-10 
check_great <- function (x,default)
{
use <-  x>y 
x[use]   

}




x <- 1:20
check_great(x,12)




##lazy evaluation 
lazy <- function (a,b)
{
a^67

}



lazy1 <- function(a,b)
{
print(a)
b<-a
print(b)


}


#dates in R

x<- as.Date("1986-04-09")



x<- Sys.time()
p <- as.POSIXlt(x)
names(unclass(p)) 

## r proxy 
library(httr)
set_config(use_proxy(url="http://10.145.10.30",port = 80,username = "neelesh_jain", password = "Nel941986"))


## lapply 

## requires a list of variables and the function you want to run on it  
x<- list(a = 1:5,b = rnorm(10))
lapply(x,mean)


x <- list(a=1:4)
lapply(x,runif, min =0 , max =10 )

x <- 1:4 
lapply(x,runif, min =0 , max =10 )


## anonymous functions with lappy 
a <- matrix (1:6,3,2)
b <- matrix (1:4,2,2)
k<- list (a,b)
lapply(k ,function(elt) elt[,1])



## sapply just simplifies the results 
x<- list(a = 1:5,b = rnorm(10))
 sapply(x, mean)
 
 
##apply 
x <- matrix(rnorm(200),20,10)

apply(x, 2,mean) 
## here 1 or 2 is the number of rows of colums 


## col/row sums and means 

rowSums(x)
rowMeans(x)
colSums(x) 
colMeans(x)


## mapply function 
mapply(rep,1:4,4:1)   
## rep(a,b) here a will be taken from first 1:4 for each of 4 runs and b would be taken from second 4:1 for the values 


## tapply function 

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
tapply(x,f,mean)

tapply(x,f,range)

## split function 
## slpits the variables in the leveles as mentioned in factor variable

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)

split(x,f)
