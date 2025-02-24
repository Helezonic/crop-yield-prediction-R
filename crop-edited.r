crop <- readline(prompt = "Enter crop : ")

if (crop == "Coconut") {
  filename <- "Coconut.csv"
} # ... (other crop options)

# Error handling: Check if the file exists
if (!file.exists(filename)) {
  stop(paste("Error: File", filename, "not found."))
}

dataset <- read.csv(filename, header = FALSE)
colnames(dataset) <- c("Location", "Year", "Yield")

# Convert Location to factor (ESSENTIAL!)
dataset$Location <- as.factor(dataset$Location)

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


# Match location with levels in the dataset (essential for prediction)
#location_index <- match(location, levels(dataset$Location))

#Error handling if the entered location doesn't match the dataset
#if (is.na(location_index)) {
#  stop("Error: Location not found in the dataset.")
#}

year <- as.numeric(readline(prompt = "Enter year: ")) #Convert year to numeric

LinearModel <- lm(Yield ~ Location + Year, data = dataset)
coeff <- coef(LinearModel)

predicted_yield <- coeff[1] + coeff[2] * x + coeff[3] * year
print(paste("Predicted Yield:", predicted_yield))

#Optional: Print the coefficients for debugging
print(coeff)
