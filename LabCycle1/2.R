encrypt <- function(Letter, Shift) {
  if (is.na(Letter)) {
    return(NA)
  }
  if (Letter %in% letters) {
    Alphabet <- letters
  } else if (Letter %in% LETTERS) {
    Alphabet <- LETTERS
  } else {
    return(Letter)
  }
  LetterIndex <- match(Letter, Alphabet)
  EncryptionIndex <- (LetterIndex + Shift - 1) %% 26 + 1
  return(Alphabet[EncryptionIndex])
}

encryptSentence <- function(Sentence, Shift) {
  Word <- unlist(strsplit(Sentence, ""))
  EncryptionWord <- sapply(Word, encrypt , Shift = Shift)
  EncryptionSentence <- paste(EncryptionWord, collapse = "")
  return(EncryptionSentence)
}

Sentence <- readline("\nEnter a Sentence to encrypt: ")
ShiftValue <- as.integer(readline("\nEnter the Shift value: "))

EncryptionSentence <- encryptSentence(Sentence, ShiftValue)

cat("\nEncrypted Sentence:", EncryptionSentence, "\n")