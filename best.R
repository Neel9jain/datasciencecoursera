best <- function(state,outcome) 
{ 
        
        flag = NULL
        
        outcome1 <- read.csv("outcome-of-care-measures.csv")  ## Read outcome data
        
        state_list <- unique(outcome1$State)
        
        for (i in 1:length(state_list))
        { 
                          
           if (state == state_list[i] )
           {
                 
               flag <-1 
               print("here")
                   
           }
           
        }
        
        if (!is.null(flag))
        {
                
                if (outcome == "heart attack"){
                 
                 best_HA <-  min(outcome1[(state == outcome1[][,7] ),][,11])
                 result<- outcome1 [(best_HA == outcome1[][,11]),][,c(2,7)]
                 Best <- result [(state == result[,2]),][,1]
                 print(Best)
                  
                  
                       
                }
                else if(outcome == "heart failure"){
                       best_HF1 <-  outcome1[(state == outcome1[][,7] ),][,17]
                       NUM_HF <- as.numeric(best_HF1)
                       best_HF2 <- complete.cases(best_HF1[NUM_HF])
                     best_HF<- (min(as.numeric(best_HF1[best_HF2])))
                      result<- outcome1 [(best_HF == outcome1[][,17]),][,c(2,7)]
                      Best <- result [(state == result[,2]),][,1]
                     print(Best)
                                                
                              
                }
                else if(outcome == "pneumonia"){
                        best_HF1 <-  outcome1[(state == outcome1[][,7] ),][,23]
                        NUM_HF <- as.numeric(best_HF1)
                        best_HF2 <- complete.cases(best_HF1[NUM_HF])
                        best_HF<- (min(as.numeric(best_HF1[best_HF2])))
                        result<- outcome1 [(best_HF == outcome1[][,23]),][,c(2,7)]
                        Best <- result [(state == result[,2]),][,1]
                        print(Best)
                        
                }
                else{stop("Invalid Outcome")}                 
                
            
                    
        }
        else if ( is.null(flag))
        {
                stop("Invalid State")
        }
        
        
        
        flag <- NULL
        
        
}