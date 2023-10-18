runLengthEncode <- function(Sentence) {
  if (nchar(Sentence) == 0) {
    return("") 
  }
  
  Compress <- ""
  Current <- substr(Sentence, 1, 1)
  Count <- 1
  
  for (i in 2:nchar(Sentence)) {
    if (substr(Sentence, i, i) == Current) {
      Count <- Count + 1
    } else {
      Compress <- paste0(Compress, Current, Count)
      Current <- substr(Sentence, i, i)
      Count <- 1
    }
  }
  
  Compress <- paste0(Compress, Current, Count)
  return(Compress)
}

Sentence <- readline("\nEnter a string\t: ")

Compress <- runLengthEncode(Sentence)

cat("\nCompressed string:", Compress)