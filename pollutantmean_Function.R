## pollutant data sourced from the spectdata directory 

## Each file contains three types of data 

## Date: the date of the observation in YYYY-MM-DD format (year-month-day)
## sulfate: the level of sulfate PM in the air on that date (measured in micrograms per cubic meter)
## nitrate: the level of nitrate PM in the air on that date (measured in micrograms per cubic meter) 



#This file contains the script for the pollutant mean function 

##      Created 15-09-2021 
##      Neelesh Jain 
##      Version 1.0 

pollutantmean <- function(directory, pollutant, id)

{
        setwd (directory)
        Bigdata<- 0      
       ## creating the file name  
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
        
                
         ##print(value)
         
         
      ##reading the data
         ind_data <- read.csv(value);
         Bigdata <- rbind(Bigdata,ind_data)
        
         
        }      
        
       good_data <- complete.cases(Bigdata) 
       if (pollutant == "sulfate")
       {
      mean_val <- mean (Bigdata [good_data,][,2])
       }
       
       if (pollutant == "nitrate")
       {
               mean_val <- mean (Bigdata [good_data,][,3])
       }
       print(mean_val)
       
       setwd("C:/Users/Administrator/Documents/Data Science using R/Projects/datasciencecoursera")          
}