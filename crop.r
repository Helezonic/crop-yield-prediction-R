#library(caret)

crop <- readline(prompt="Enter crop : ")

crop
if(crop=="Coconut"){filename <- "Coconut.csv"}
#if(crop=="Arecanut"){filename <- "Arecanut.csv"}
#if(crop=="Plantain"){filename <- "Plantain.csv"}
#if(crop=="Tapioca"){filename <- "Tapioca.csv"}
#if(crop=="Cashewnut"){filename <- "Cashewnut.csv"}
#if(crop=="Pepper"){filename <- "Pepper.csv"}
#if(crop=="Jackfruit"){filename <- "Jackfruit.csv"}

# Error handling: Check if the file exists
if (!file.exists(filename)) {
  stop(paste("Error: File", filename, "not found."))
}

dataset <- read.csv(filename, header =FALSE)
colnames(dataset) <- c("Location", "Year", "Yield")

location<-readline(prompt="Enter location : ")

location
if(location=="Trivandrum") {x=1}
if(location=="Kollam") {x=2}
if(location=="Pathanamthitta") {x=3}
if(location=="Alappuzha") {x=4}
if(location=="Kottayam") {x=5}
if(location=="Idukki") {x=6}
if(location=="Ernakulam") {x=7}
if(location=="Thrissur") {x=8}
if(location=="Palakkad") {x=9}
if(location=="Malappuram") {x=10}
if(location=="Kozhikode") {x=11}
if(location=="Wayanad") {x=12}
if(location=="Kannur") {x=13}
if(location=="Kasargod") {x=14}
print(x)

year <- as.numeric(readline(prompt="Enter Year :"))

y=(year-2003)
print(y)

LinearModel = lm(Yield~Location+Year, data=dataset)
LinearModel 

summary(LinearModel)

coeff <- coef(LinearModel)

predicted_yield = coeff[1] + coeff[2] * x + coeff[3] * y
predicted_yield 

plot(LinearModel)

