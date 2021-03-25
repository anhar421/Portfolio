setwd("/users/Anna/Documents/GitHub/dsc520")
#For dataframe creation and manipulation
library(dplyr)
#For plots
library(ggplot2)
library(tidyverse)

#Import 2018 Florida data as dataframe
fl_2018 <- read.csv("FL_ACSDP1Y2018.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2018_econ <- select(fl_2018, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2017 Florida data
fl_2017 <- read.csv("FL_ACSDP1Y2017.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2017_econ <- select(fl_2017, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2016 Florida data
fl_2016 <- read.csv("FL_ACSDP1Y2016.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2016_econ <- select(fl_2016, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Florida data
fl_2015 <- read.csv("FL_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2015_econ <- select(fl_2015, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Florida data
fl_2014 <- read.csv("FL_ACSDP1Y2014.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2014_econ <- select(fl_2014, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

fl_econ_5yr <- rbind(fl_2014_econ, fl_2015_econ, fl_2016_econ, 
                          fl_2017_econ, fl_2018_econ)

#Remove unneccesary metadata
fl_econ_5yr <- fl_econ_5yr[-c(1, 3, 5, 7, 9), ]

#Rename columns
colnames(fl_econ_5yr) <- c("Total_households","MarginofError_TH", "Median_household_income",
                           "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")
rownames(fl_econ_5yr) <- c("2014", "2015", "2016", "2017", "2018")


#2018 New York data
ny_2018 <- read.csv("NY_ACSDP1Y2018.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2018_econ <- select(ny_2018, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2017 New York data
ny_2017 <- read.csv("NY_ACSDP1Y2017.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2017_econ <- select(ny_2017, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2016 New York data
ny_2016 <- read.csv("NY_ACSDP1Y2016.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2016_econ <- select(ny_2016, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 New York data
ny_2015 <- read.csv("NY_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2015_econ <- select(ny_2015, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2014 New York data
ny_2014 <- read.csv("NY_ACSDP1Y2014.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2014_econ <- select(ny_2014, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

ny_econ_5yr <- rbind(ny_2014_econ, ny_2015_econ, ny_2016_econ, 
                     ny_2017_econ, ny_2018_econ)

#Remove unneccesary metadata
ny_econ_5yr <- ny_econ_5yr[-c(1, 3, 5, 7, 9), ]

#Rename columns
colnames(ny_econ_5yr) <- c("Total_households","MarginofError_TH", "Median_household_income",
                           "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")
rownames(ny_econ_5yr) <- c("2014", "2015", "2016", "2017", "2018")


#Import 2018 Washington data as dataframe
wa_2018 <- read.csv("ACSDP1Y2018.DP03_data_with_overlays_2020-07-30T170401.csv")
wa_2018_econ <- select(wa_2018, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2017 Washington data
wa_2017 <- read.csv("ACSDP1Y2017.DP03_data_with_overlays_2020-07-30T170401.csv")
wa_2017_econ <- select(wa_2017, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2016 Washington data
wa_2016 <- read.csv("ACSDP1Y2016.DP03_data_with_overlays_2020-07-30T170401.csv")
wa_2016_econ <- select(wa_2016, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Washington data
wa_2015 <- read.csv("ACSDP1Y2015.DP03_data_with_overlays_2020-07-30T170401.csv")
wa_2015_econ <- select(wa_2015, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Washington data
wa_2014 <- read.csv("ACSDP1Y2014.DP03_data_with_overlays_2020-07-30T170401.csv")
wa_2014_econ <- select(wa_2014, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

wa_econ_5yr <- rbind(wa_2014_econ, wa_2015_econ, wa_2016_econ, 
                     wa_2017_econ, wa_2018_econ)

#Remove unneccesary metadata
wa_econ_5yr <- wa_econ_5yr[-c(1, 3, 5, 7, 9), ]

#Rename columns
colnames(wa_econ_5yr) <- c("Total_households","MarginofError_TH", "Median_household_income",
                           "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")
rownames(wa_econ_5yr) <- c("2014", "2015", "2016", "2017", "2018")

#HOUSEHOLD DATA
#Florida
flhh_2018 <- read.csv("Household data/FL_ACSST1Y2018.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2018_smol <- select(flhh_2018, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2017 <- read.csv("Household data/FL_ACSST1Y2017.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2017_smol <- select(flhh_2017, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2016 <- read.csv("Household data/FL_ACSST1Y2016.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2016_smol <- select(flhh_2016, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2015 <- read.csv("Household data/FL_ACSST1Y2015.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2015_smol <- select(flhh_2015, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2014 <- read.csv("Household data/FL_ACSST1Y2014.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2014_smol <- select(flhh_2014, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

fl_hh_5yr <- rbind(flhh_2014_smol, flhh_2015_smol, flhh_2016_smol, 
                   flhh_2017_smol, flhh_2018_smol)

fl_hh_5yr <- fl_hh_5yr[-c(1, 3, 5, 7, 9), ]

colnames(fl_hh_5yr) <- c("Total_households","MarginofError_TH", "Avg_household_size",
                           "MarginofError_AvgHHsz")
rownames(fl_hh_5yr) <- c("2014", "2015", "2016", "2017", "2018")


#New York
nyhh_2018 <- read.csv("Household data/NY_ACSST1Y2018.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2018_smol <- select(nyhh_2018, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2017 <- read.csv("Household data/NY_ACSST1Y2017.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2017_smol <- select(nyhh_2017, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2016 <- read.csv("Household data/NY_ACSST1Y2016.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2016_smol <- select(nyhh_2016, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2015 <- read.csv("Household data/NY_ACSST1Y2015.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2015_smol <- select(nyhh_2015, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2014 <- read.csv("Household data/NY_ACSST1Y2014.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2014_smol <- select(nyhh_2014, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

ny_hh_5yr <- rbind(nyhh_2014_smol, nyhh_2015_smol, nyhh_2016_smol, 
                   nyhh_2017_smol, nyhh_2018_smol)

ny_hh_5yr <- ny_hh_5yr[-c(1, 3, 5, 7, 9), ]

colnames(ny_hh_5yr) <- c("Total_households","MarginofError_TH", "Avg_household_size",
                         "MarginofError_AvgHHsz")
rownames(ny_hh_5yr) <- c("2014", "2015", "2016", "2017", "2018")

#Washington
wahh_2018 <- read.csv("Household data/ACSST1Y2018.S1101_data_with_overlays_2020-07-30T170119.csv")
wahh_2018_smol <- select(wahh_2018, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

wahh_2017 <- read.csv("Household data/ACSST1Y2017.S1101_data_with_overlays_2020-07-30T170119.csv")
wahh_2017_smol <- select(wahh_2017, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

wahh_2016 <- read.csv("Household data/ACSST1Y2016.S1101_data_with_overlays_2020-07-30T170119.csv")
wahh_2016_smol <- select(wahh_2016, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

wahh_2015 <- read.csv("Household data/ACSST1Y2015.S1101_data_with_overlays_2020-07-30T170119.csv")
wahh_2015_smol <- select(wahh_2015, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

wahh_2014 <- read.csv("Household data/ACSST1Y2014.S1101_data_with_overlays_2020-07-30T170119.csv")
wahh_2014_smol <- select(wahh_2014, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

wa_hh_5yr <- rbind(wahh_2014_smol, wahh_2015_smol, wahh_2016_smol, 
                   wahh_2017_smol, wahh_2018_smol)

wa_hh_5yr <- wa_hh_5yr[-c(1, 3, 5, 7, 9), ]

colnames(wa_hh_5yr) <- c("Total_households","MarginofError_TH", "Avg_household_size",
                         "MarginofError_AvgHHsz")
rownames(wa_hh_5yr) <- c("2014", "2015", "2016", "2017", "2018")


#OCCUPATION INFORMATION
#Florida
fl_occ_2018 <- select(fl_2018, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

fl_occ_2017 <- select(fl_2017, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

fl_occ_2016 <- select(fl_2016, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

fl_occ_2015 <- select(fl_2015, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

fl_occ_2014 <- select(fl_2014, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

fl_occ_5yr <- rbind(fl_occ_2014, fl_occ_2015, fl_occ_2016, fl_occ_2017, fl_occ_2018)
fl_occ_5yr <- fl_occ_5yr[-c(1, 3, 5, 7, 9), ]
rownames(fl_occ_5yr) <- c("2014", "2015", "2016", "2017", "2018")

#New York
ny_occ_2018 <- select(ny_2018, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

ny_occ_2017 <- select(ny_2017, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

ny_occ_2016 <- select(ny_2016, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

ny_occ_2015 <- select(ny_2015, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

ny_occ_2014 <- select(ny_2014, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

ny_occ_5yr <- rbind(ny_occ_2014, ny_occ_2015, ny_occ_2016, ny_occ_2017, ny_occ_2018)
ny_occ_5yr <- ny_occ_5yr[-c(1, 3, 5, 7, 9), ]
rownames(ny_occ_5yr) <- c("2014", "2015", "2016", "2017", "2018")

#Washington
wa_occ_2018 <- select(wa_2018, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

wa_occ_2017 <- select(wa_2017, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

wa_occ_2016 <- select(wa_2016, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

wa_occ_2015 <- select(wa_2015, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

wa_occ_2014 <- select(wa_2014, DP03_0027E, DP03_0028E,
                      DP03_0029E, DP03_0030E, DP03_0031E)

wa_occ_5yr <- rbind(wa_occ_2014, wa_occ_2015, wa_occ_2016, wa_occ_2017, wa_occ_2018)
wa_occ_5yr <- wa_occ_5yr[-c(1, 3, 5, 7, 9), ]
wa_occ_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
                              


#Put all relevant data into single dataframe for household and income variables
summary_5yr <- as.data.frame(cbind(ny_econ_5yr$Median_household_income, 
                           fl_econ_5yr$Median_household_income, wa_econ_5yr$Median_household_income,
                           ny_econ_5yr$Mean_household_income,fl_econ_5yr$Mean_household_income,
                           wa_econ_5yr$Mean_household_income, ny_econ_5yr$Total_households,
                           fl_econ_5yr$Total_households, wa_econ_5yr$Total_households,
                           ny_hh_5yr$Avg_household_size,fl_hh_5yr$Avg_household_size, 
                           wa_hh_5yr$Avg_household_size))

summary_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
colnames(summary_5yr) <- c("NY_Med_Inc", "FL_Med_Inc", "WA_Med_Inc", "NY_Mn_Inc", 
                           "FL_Mn_Inc", "WA_Mn_Inc", "NY_Total_HH", "FL_Total_HH",
                           "WA_Total_HH", "NY_HH_size","FL_HH_size", "WA_HH_size", "Year")
rownames(summary_5yr) <- c("2014", "2015", "2016", "2017", "2018")

#Put all relevant occupation information into dataframes by year
summary_occ_2014 <- as.data.frame((rbind(ny_occ_2014, fl_occ_2014, wa_occ_2014)))
summary_occ_2014 <- summary_occ_2014[-c(1, 3, 5), ]
rownames(summary_occ_2014) <- c("NY", "FL", "WA")

summary_occ_2015 <- as.data.frame((rbind(ny_occ_2015, fl_occ_2015, wa_occ_2015)))
summary_occ_2015 <- summary_occ_2015[-c(1, 3, 5), ]
rownames(summary_occ_2015) <- c("NY", "FL", "WA")

summary_occ_2016 <- as.data.frame((rbind(ny_occ_2016, fl_occ_2016, wa_occ_2016)))
summary_occ_2016 <- summary_occ_2016[-c(1, 3, 5), ]
rownames(summary_occ_2016) <- c("NY", "FL", "WA")

summary_occ_2017 <- as.data.frame((rbind(ny_occ_2017, fl_occ_2017, wa_occ_2017)))
summary_occ_2017 <- summary_occ_2017[-c(1, 3, 5), ]
rownames(summary_occ_2017) <- c("NY", "FL", "WA")

summary_occ_2018 <- as.data.frame((rbind(ny_occ_2018, fl_occ_2018, wa_occ_2018)))
summary_occ_2018 <- summary_occ_2018[-c(1, 3, 5), ]
rownames(summary_occ_2018) <- c("NY", "FL", "WA")

#Rotate dataframes
summary_occ_2014 <- as.data.frame(t(summary_occ_2014))
summary_occ_2015 <- as.data.frame(t(summary_occ_2015))
summary_occ_2016 <- as.data.frame(t(summary_occ_2016))
summary_occ_2017 <- as.data.frame(t(summary_occ_2017))
summary_occ_2018 <- as.data.frame(t(summary_occ_2018))
summary_occ <- as.data.frame((rbind(summary_occ_2018, summary_occ_2017, summary_occ_2016,
                                    summary_occ_2015, summary_occ_2014)))
summary_occ$year <- c("2018", "2018", "2018", "2018", "2018", "2017", "2017", "2017",
                      "2017", "2017", "2016", "2016", "2016", "2016", "2016", "2015",
                      "2015", "2015", "2015", "2015", "2014", "2014", "2014", "2014",
                      "2014")
summary_occ$occupation <- c("DP03_0027E", "DP03_0028E", "DP03_0029E", "DP03_0030E", "DP03_0031E")


#Create line graphs for linear changes for median income, household total, and household size
ggplot(summary_5yr) + 
    geom_line(aes(x = Year, y = NY_Med_Inc, group = 1, color ="blue")) +
    geom_line(aes(x = Year, y = FL_Med_Inc, group = 1, color = "red")) +
    geom_line(aes(x = Year, y = WA_Med_Inc, group = 1, color = "green")) +
    labs(title = "Median Income Trends", x = "Year", y = "Median Income (USD)") +
    scale_color_manual(values=c("blue", "red", "green"), name = "State",
                       labels=c("New York", "Washington", "Florida"))

ggplot(summary_5yr) + 
    geom_line(aes(x = Year, y = NY_Total_HH, group = 1, color ="blue")) +
    geom_line(aes(x = Year, y = FL_Total_HH, group = 1, color = "red")) +
    geom_line(aes(x = Year, y = WA_Total_HH, group = 1, color = "green")) +
    labs(title = "Number of Households", x = "Year", y = "Total # of Households") +
    scale_color_manual(values=c("blue", "red", "green"), name = "State",
                       labels=c("New York", "Washington", "Florida"))

ggplot(summary_5yr) + 
    geom_line(aes(x = Year, y = NY_HH_size, group = 1, color ="blue")) +
    geom_line(aes(x = Year, y = FL_HH_size, group = 1, color = "red")) +
    geom_line(aes(x = Year, y = WA_HH_size, group = 1, color = "green")) +
    labs(title = "Average Household Size", x = "Year", y = "# of People in Household") +
    scale_color_manual(values=c("blue", "red", "green"), name = "State",
                       labels=c("New York", "Washington", "Florida"))

#Create bar graphs for occupation trends for each state
ggplot(summary_occ, aes(x = year, y = WA, fill = occupation)) +
    geom_col(position = "dodge") + labs(title ="Occupation distribution - WA",
                                        x = "Year", y = "# of People") +
    theme(legend.position = "bottom", legend.key.size = unit(0.5,"line"), legend.direction = "vertical") +
    scale_fill_discrete(name="Occupation", labels = c("Management, business, science, and arts",
                                                      "Service", "Sales and office",
                                                      "Natural resources, construction, and maintenance",
                                                      "Production, transportation, and material moving"))

ggplot(summary_occ, aes(x = year, y = NY, fill = occupation)) +
    geom_col(position = "dodge") + labs(title ="Occupation distribution - NY",
                                        x = "Year", y = "# of People") +
    theme(legend.position = "bottom", legend.key.size = unit(0.5,"line"), legend.direction = "vertical") +
    scale_fill_discrete(name="Occupation", labels = c("Management, business, science, and arts",
                                                      "Service", "Sales and office",
                                                      "Natural resources, construction, and maintenance",
                                                      "Production, transportation, and material moving"))

ggplot(summary_occ, aes(x = year, y = FL, fill = occupation)) +
    geom_col(position = "dodge") + labs(title ="Occupation distribution - FL",
                                        x = "Year", y = "# of People") +
    theme(legend.position = "bottom") +
    scale_fill_discrete(name="Occupation", labels = c("Management, business, science, and arts",
                                                      "Service", "Sales and office",
                                                      "Natural resources, construction, and maintenance",
                                                      "Production, transportation, and material moving"))
