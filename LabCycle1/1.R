File <- readLines("RandomParagraph.txt")
Words <- unlist(strsplit(File , " "))
cat("The original Paragraph\t: " , File , "\n")
Nwords <- length(Words)
cat("\nTotal Number of Words\t: " , Nwords)
AverageLength <- (sum(nchar(unlist(Words)))) %/% Nwords
cat("\nAverage Word Length\t: " , AverageLength)
WordLengths <- sapply(Words , nchar)
LongestWord <- Words[which.max(WordLengths)] 
cat("\nThe Longest Word\t: " , LongestWord)

ReplacingWord <- readline(prompt = "\nEnter the word to replace\t: ")
ReplacementWord <- readline(prompt = "\nEnter the replacing word\t: ")

ModifiedParagraph <- gsub(ReplacingWord , ReplacementWord , File)
cat("\nThe Modified Paragraph\t: " , ModifiedParagraph)