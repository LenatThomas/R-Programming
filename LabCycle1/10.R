reverseList <- function(lst) {
  if (length(lst) <= 1) {
    return(lst)
  } else {
    First <- lst[1]
    Remaining <- lst[-1]
    ReverseRemaining <- reverseList(Remaining)
    return(c(ReverseRemaining, First))
  }
}

lst <- c(1, 2, 3, 4, 5)

Reverse <- reverseList(lst)

cat("\nOriginal list: ", lst)
cat("\nReversed list: ", Reverse)