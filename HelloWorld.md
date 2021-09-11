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