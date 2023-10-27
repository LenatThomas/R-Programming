getwd()
IrisData <- read.csv('iris.csv')
png("IrisScatter.png", width = 1000 , height = 500 , res=100)
plot(IrisData$sepal_length , IrisData$petal_length , xlab = 'Sepal Length',  ylab = 'Petal Length' , main = 'Sepal Length vs Petal Length')
