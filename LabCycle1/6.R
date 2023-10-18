checkPrime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n == 2) {
    return(TRUE)
  }
  if (n %% 2 == 0) {
    return(FALSE)
  }
  for (i in 3:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

Num <- as.integer(readline("\nEnter a Number\t: "))

if (checkPrime(Num)) {
  cat(Num, "is a prime Number.\n")
} else {
  cat(Num, "is not a prime Number.\n")
}

Start <- as.integer(readline("\nEnter the start of the range: "))
End <- as.integer(readline("\nEnter the end of the range: "))

if (is.na(Start) || is.na(End)) {
  cat("Invalid input. Please enter valid positive integer ranges.\n")
} 

if (End < Start) {
  Temp = Start
  Start = End
  End = Start
}

cat("\nPrime Numbers in the range from", Start, "to", End, "are:\n")
for (i in Start:End) {
  if (checkPrime(i)) {
    cat(i, " ")
  }
}
cat("\n")
