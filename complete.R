## reads the data from the specdata directory and returns the number of complete
## cases 

#This file contains the script for the complete function 

##      Created 15-09-2021 
##      Neelesh Jain 
##      Version 1.0 

complete <-  function(directory, id)
{
        setwd (directory)
        
        for (i in id)
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
                print(paste(value ,comp_case)) 
                
        }
        
        setwd("C:/Users/Administrator/Documents/Data Science using R/Projects/datasciencecoursera")          
}