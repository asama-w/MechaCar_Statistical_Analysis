library(dplyr)

# Deliverable 1
# Import and read MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

#--------------
# Deliverable 2
# Import and read the Suspension_Coil.csv file as a table
SuspensionCoil_table <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe
total_summary <- SuspensionCoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), Num_Coils=n(), .groups = 'keep')

# Create lot_summary dataframe by each manufacturing lot
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), Num_Coils=n(), .groups = 'keep')

#--------------
# Deliverable 3
# Determine t-test of PSI of all manufacturing lots vs population mean of 1,500 pounds per square inch.
t.test(SuspensionCoil_table$PSI,mu=1500)

# Determine t-test of PSI of each manufacturing lot vs population mean of 1,500 pounds per square inch.
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500) #Lot1
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500) #Lot2
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500) #Lot3
