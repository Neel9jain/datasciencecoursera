## outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
## head(outcome)

best <- function(state) 
{
        outcome1 <- read.csv("outcome-of-care-measures")  ## Read outcome data
        
        for (i in length(outcome1$State)) 
                {
                
                if (state ==  outcome1$State)
                {
                   print("good")
                        
                }
                else {
                        stop("invalid state")
                }
        }
        
}
        
        
        
       
      
             
         
          
                





