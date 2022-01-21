# Import source data into dataframe
library(dplyr)
car_data<-read.csv("Resources/MechaCar_mpg.csv",check.names = F)
suspension_data<-read.csv("Resources/Suspension_Coil.csv",check.names = F)

# Deliverable 1 - Analyse relationship using linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+
     ground_clearance+AWD,car_data)
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+
             ground_clearance+AWD,car_data))

# Deliverable 2 - Create summary statistics
total_summary<-suspension_data %>% summarize(Mean=mean(PSI),
                          Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary<-suspension_data %>%group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3 - Calculate t-test statistic
overall<-t.test(x=suspension_data$PSI,mu=1500)
lot1_ttest<-t.test(PSI~1,data=suspension_data,
                   subset=Manufacturing_Lot=="Lot1",mu=1500)
lot2_ttest<-t.test(PSI~1,data=suspension_data,
                   subset=Manufacturing_Lot=="Lot2",mu=1500)
lot3_ttest<-t.test(PSI~1,data=suspension_data,
                   subset=Manufacturing_Lot=="Lot3",mu=1500)


