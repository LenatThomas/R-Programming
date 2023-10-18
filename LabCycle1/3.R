validGrade <- function(Grade){
  ValidGrades = list("A" , "B" , "C" , "D" , "E")
  return(!is.na(Grade) && Grade %in% ValidGrades) 
}

validAge <- function(Age){
  return(!is.na(Age) && is.numeric(Age) && Age > 0 && Age == round(Age)) 
}

Records <- list()
NRecords <- 0
TotalAge <- 0

repeat{
  Name <- readline("\nEnter the name of the student (or press Enter to stop)\t: ")
  if (nchar(Name) == 0) {
    break
  }

  Age <- as.integer(readline("\nEnter the age of the student\t: "))
  if (!validAge(Age)){
    cat("Invalid Age")
    next
  }

  Grade <- readline("\nEnter the grade of the student\t: ")
  if (!validGrade(Grade)){
    cat("Invalid Grade")
    next
  }

  Records <- c(Records, list(Name = Name, Age = Age, Grade = Grade))

  TotalAge <- TotalAge + Age
  NRecords <- NRecords + 1
}

if (NRecords > 0) {
  cat("\nThe average age is\t: " , TotalAge %/% NRecords)
} else {
  cat("\nNo valid Records entered")
}