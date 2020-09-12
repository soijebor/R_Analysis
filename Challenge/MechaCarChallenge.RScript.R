# Import libraries
library(tidyverse)

# Load and read  MechaCar_mpg csv file 
MechaCar <- read.csv("MechaCar_mpg.csv", check.names=TRUE ,stringsAsFactors = F) #import used car dataset

#Generate multiple linear regression model with all variables
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = MechaCar)

#Generate Summary Statistics
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = MechaCar))

#---------------------------------------------------------------#
  
# Load and read Suspension Coil csv file
Suspension_Coil <- read.csv("Suspension_Coil.csv", check.names=TRUE)
Suspension_Coil

#Generate Summary Statistics for Suspension Coil
Suspension_Coil %>% summarize(PSI_Mean = mean(PSI), # Mean = 1500 
                              PSI_Median = median(PSI), # Median = 1500
                              PSI_Variance = var(PSI), # Variance = 76.23459
                              PSI_StandardDeviation = sd(PSI)) # Standard Deviation = 8.731242


# Create summary statistics based on Manufacturing Lots
Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(PSI_Mean = mean(PSI), 
                                                             PSI_Median = median(PSI),
                                                             PSI_Variance = var(PSI), 
                                                             PSI_StandardDeviation = sd(PSI)) 
#          Mean  Median  Variance SD
#Lot1      1500. 1500.   1.15     1.07
#Lot2      1500. 1499.   10.1     3.18
#Lot3      1499. 1498.   220.     14.8 


# -------------------------------------------------------------#
#Suspension_Coil T-test

SuspensionCoil_table <- read.csv("Suspension_Coil.csv",check.names = F,stringsAsFactors = F) #import used car dataset
plt <- ggplot(SuspensionCoil_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

sample_table <- SuspensionCoil_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- SuspensionCoil_table %>% sample_n(50) #generate another 50 randomly sampled data points

t.test(log10(sample_table$PSI),log10(sample_table2$PSI)) #compare means of two samples

#determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch
t.test(SuspensionCoil_table$PSI, mu= 1500) 