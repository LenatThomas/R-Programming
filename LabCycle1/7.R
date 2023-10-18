ConstructFibonocciSeries <- function(x , y , z , Terms) {
  Series <- numeric(Terms)

  Series[1] = x
  Series[2] = y
  Series[3] = z

  for (i in 4:Terms) {
    Series[i] = Series[i - 1] + Series[i - 2] + Series[i - 3]
  }

  return(Series)
}

cat("\nEnter three staring numbers\t: ")
x <- as.integer(readline(prompt = "\nX\t: "))
y <- as.integer(readline(prompt = "\nY\t: "))
z <- as.integer(readline(prompt = "\nZ\t: "))
Terms = as.integer(readline(prompt = "\nEnter the number of terms\t: "))

if (is.na(x) && is.na(y) && is.na(z) && is.na(Terms) && Terms < 0) {
  cat("\nInvalid Inputs")
}

Fibonocci <- ConstructFibonocciSeries(x , y , z , Terms)
cat("The modified Fibonacci series\t: \n")
cat(Fibonocci, sep = ", ", "\n")