##This function takes a directory of data files and a threshold for complete 
##cases and calculates the correlation between sulfate and nitrate for monitor 
##locations where the number of completely observed cases (on all variables) is 
##greater than the threshold

#This file contains the script for the corr function 

##      Created 15-09-2021 
##      Neelesh Jain 
##      Version 1.0 

corr <- function (directory , threshold = 0 )
{       
        setwd (directory)
        ##correlation <- NULL
        final <- NULL
        for (i in 1:332)
        {
                if(i < 10 )
                {
                        value <-paste("00",i,".csv",sep="")
                } 
                else if(i < 100 && i >=10)
                {
                        value <-paste("0",i,".csv",sep="")
                }
                else {value <-paste(i,".csv",sep="")}
                
                ind_data <- read.csv(value);
                good<- complete.cases(ind_data)
                comp_case <- length(ind_data[good,][,4])
                correlation <- NULL
                
         if (comp_case > threshold)
         { 
               sulphate <- ind_data[good,][,2]
               nitrate  <- ind_data[good,][,3]
               correlation <- cor(sulphate,nitrate)
         }
               final <- c(final,correlation)
        }
        
        setwd("C:/Users/Administrator/Documents/Data Science using R/Projects/datasciencecoursera")            
        return(final)
}