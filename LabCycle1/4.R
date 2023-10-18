generatePassword <- function(Length) {

  LowerCase <- letters
  UpperCase <- LETTERS
  Digits <- 0:9
  SpecialCharacters <- c("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+", "=")
  
  AllCharacter <- c(LowerCase, UpperCase, Digits, SpecialCharacters)
  
  password <- sample(AllCharacter, Length, replace = TRUE)
  
  return(paste(password, collapse = ""))
}

PasswordLength <- as.integer(readline("\nEnter the desired password Length\t: "))

if (!is.na(PasswordLength) || PasswordLength > 3) {
  Password <- generatePassword(PasswordLength)
  cat("\nYour random password is: ", Password)
} else {
  cat("\nInvalid password Length. Please enter a positive integer.\n")
}