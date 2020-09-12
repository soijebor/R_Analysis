printHello <- function(){
  print("Hello")
}

printHello()

Sonia_mean <- function(someNumbervector){
  sum <- 0
  for(number in someNumbervector){
    sum <- number + sum
  }
  return(sum / length(someNumbervector))
}

someNumbervector <- c(0,1,2,3)

Sonia_mean(someNumbervector = someNumbervector)

OneLine_mean <- function(someNumbervector){
  return( (1:sum(someNumbervector))/length(someNumbervector) )
}

OneLine_mean(someNumbervector)

dieRandomVariable <- c(1,2,3,4,5,6)

Sonia_mean(dieRandomVariable)

weightedCrookedDievalues <- c(0.02, .2, .05, .33, .2, .2)

Sonia_weieghtedMean <- function(randomVariable, weightVector){
  sumOfweightsAndvariables <- 0
  sumOfweights <- 0
  for (i in 1:length(randomVariable)){
    sumOfweightsAndvariables <- (randomVariable[i] * weightVector[i] ) + sumOfweightsAndvariables
    sumOfweights = weightVector[i]
  }
  
  return (sumOfweightsAndvariables/sumOfweights)
}

Sonia_weieghtedMean(dieRandomVariable,weightedCrookedDievalues)

Sonia_weieghtedVariance <- function(randomVariable, weightVector){
  sumOfweightsAndvariables <- 0
  sumOfweights <- 0
  mean <- Sonia_weieghtedMean(randomVariable, weightVector)
  for (i in 1:length(randomVariable)){
    sumOfweightsAndvariables <- (weightVector[i] * randomVariable[i] - mean**2 ) + sumOfweightsAndvariables
    sumOfweights = weightVector[i] + sumOfweights
  }
  return (sumOfweightsAndvariables/sumOfweights)
}

Sonia_weieghtedVariance(dieRandomVariable, weightedCrookedDievalues)
