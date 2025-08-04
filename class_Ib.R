#create folder

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

#import csv file
data <- read.csv(file.choose())
View(data)

#check the structure of the file
str(data)

#identify inconsistent variables

#convert gender to factor
data$gender <- as.factor(data$gender)
#convert diagnosis to factor
data$diagnosis <- as.factor(data$diagnosis)
#convert smoker to factor
data$smoker <- as.factor(data$smoker)
str(data)

#create new variable for smoking status
data$smoker_binary_status <- ifelse(data$smoker == "Yes", 1, 0)

#save file in csv 
write.csv(data, file = "clean_data/patient_info_clean.csv")

# save workspace
save.image(file = "full_workspace.RData")
