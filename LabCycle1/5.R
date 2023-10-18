seriesSum <- function(Terms) {
  SumSeries <- 0
  Denominator <- 1
  Sign <- 1
  
  for (i in 1:Terms) {
    SumSeries <- SumSeries + Sign * i / Denominator
    Denominator <- Denominator + 2
    Sign <- -Sign
  }
  
  return(SumSeries)
}

NTerms <- as.integer(readline("\nEnter the number of Terms in the series\t: "))

if (!is.na(NTerms) || NTerms > 0) {
  SumSeries <- seriesSum(NTerms)
  cat("\nThe sum of the series with", NTerms, "Terms is:", SumSeries)
} else {
  cat("\nInvalid input. Please enter a positive integer.\n")
}