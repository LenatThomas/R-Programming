checkPalindrome <- function(Sentence) {
  CleanString <- tolower(gsub("[[:punct:][:space:]]", "", Sentence))
  
  ReverseString <- rev(strsplit(CleanString, NULL)[[1]])
  
  return(CleanString == ReverseString)
}

Sentence <- readline("\nEnter a string\t: ")

if (all(checkPalindrome(Sentence))) {
  cat("\nThe entered string is a palindrome")
} else {
  cat("\nThe entered string is not a palindrome")
}