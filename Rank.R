




rankhospital <- function(state, outcome, num = "best") {
        flag = NULL
        
        outcome1 <- read.csv("outcome-of-care-measures.csv")  ## Read outcome data
        
        state_list <- unique(outcome1$State)
        
        for (i in 1:length(state_list))
        { 
                
                if (state == state_list[i] )
                {
                        
                        flag <-1 
                        
                        
                }
                
        }
        
        if (!is.null(flag))
        {
                
                if (outcome == "heart attack"){
                        
                        HA <-outcome1[][,c(2,7,11)]      ## make a new data frame         
                        HAC <- complete.cases(as.numeric(HA[,3])) ## extract complete cases
                        COMP_HA <- HA[HAC,] ## new data set with complete cases 
                        state_HA <- (state == COMP_HA[,2])
                        good_HA <-  COMP_HA[state_HA,]
                        if(num == "worst")
                        {       
                                num <- length(good_HA[,3])
                            
                                
                        }
                        if(num == "best")
                        {       
                                num <- 1
                                
                                
                        }
                        rank_ha <- good_HA[order(as.numeric(good_HA[][,3])),][1:num,]
                        final_ha<- rank_ha[order(as.numeric(rank_ha$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),rank_ha$Hospital.Name),]
                        print(final_ha[1:num,1])
                   
                   
                        
                }
                else if(outcome == "heart failure"){
                        HA <-outcome1[][,c(2,7,17)]      ## make a new data frame         
                        HAC <- complete.cases(as.numeric(HA[,3])) ## extract complete cases
                        COMP_HA <- HA[HAC,] ## new data set with complete cases 
                        
                        state_HA <- (state == COMP_HA[,2])
                        good_HA <-  COMP_HA[state_HA,]
                        if(num == "worst")
                        {       
                                num <- length(good_HA[,3])
                                
                                
                        }
                        if(num == "best")
                        {       
                                num <- 1
                                
                                
                        }
                        rank_ha <- good_HA[order(as.numeric(good_HA[][,3])),][1:num,]
                        final_ha<- rank_ha[order(as.numeric(rank_ha$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure),rank_ha$Hospital.Name),]
                        print(final_ha[num,1])
        
                        
                }
                else if(outcome == "pneumonia"){
                        HA <-outcome1[][,c(2,7,23)]      ## make a new data frame         
                        HAC <- complete.cases(as.numeric(HA[,3])) ## extract complete cases
                        COMP_HA <- HA[HAC,] ## new data set with complete cases 
                        state_HA <- (state == COMP_HA[,2])
                        good_HA <-  COMP_HA[state_HA,]
                        if(num == "worst")
                        {       
                                num <- length(good_HA[,3])
                               
                                
                        }
                        if(num == "best")
                        {       
                                num <- 1
                                
                                
                        }
                        print(num)
                        rank_ha <- good_HA[order(as.numeric(good_HA[][,3])),][1:num,]
                        final_ha<- rank_ha[order(as.numeric(rank_ha$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia),rank_ha$Hospital.Name),]
                        print(final_ha[num,1])
                        
                }
                else{stop("Invalid Outcome")}                 
                
                
                
        }
        else if ( is.null(flag))
        {
                stop("Invalid State")
        }
        
        
        
        flag <- NULL
        
}
