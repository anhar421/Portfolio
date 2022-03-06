## COLLECT VOTER REGISTRATION DATA FROM RAW SOURCES. FILES PROVIDED BY FL DEPT
## OF ELECTIONS

library(tabulizer)

# Extract the table
dec_table <- extract_tables('2015/dec_2015_monthly.pdf', output = 'data.frame')
# Extract each page into a variable
dec_1 <- dec_table[[1]]
dec_2 <- dec_table[[2]]
dec_3 <- dec_table[[3]]
#Merge dfs together into single df
dec15 <- rbind(dec_1, dec_2, dec_3)

#Function to do the above for different files
extract_pdf <- function(month_file) {
  month_table <- extract_tables(month_file, output = 'data.frame')
  reg_1 <- month_table[[1]]
  reg_2 <- month_table[[2]]
  reg_3 <- month_table[[3]]
  total <- rbind(reg_1, reg_2, reg_3)
  return(total)
}
# Extract 2015 data
dec15_p <- extract_pdf('2015/dec_2015_monthly.pdf')
nov15_p <- extract_pdf('2015/nov_2015_monthly.pdf')
oct15_p <- extract_pdf('2015/oct_2015_monthly.pdf')
sep15_p <- extract_pdf('2015/sep_2015_monthly.pdf')
aug15_p <- extract_pdf('2015/aug_2015_monthly.pdf')
jul15_p <- extract_pdf('2015/jul_2015_monthly.pdf')
jun15_p <- extract_pdf('2015/jun_2015_monthly.pdf')
may15_p <- extract_pdf('2015/may_2015_monthly.pdf')
apr15_p <- extract_pdf('2015/apr_2015_monthly.pdf')
mar15_p <- extract_pdf('2015/mar_2015_monthly.pdf')
feb15_p <- extract_pdf('2015/feb_2015_monthly.pdf')
jan15_p <- extract_pdf('2015/jan_2015_monthly.pdf')

# Extract 2016 data
dec16_p <- extract_pdf('2016/dec_2016_monthly.pdf')
nov16_p <- extract_pdf('2016/nov_2016_monthly.pdf')
oct16_p <- extract_pdf('2016/oct_2016_monthly.pdf')
sep16_p <- extract_pdf('2016/sep_2016_monthly.pdf')
aug16_p <- extract_pdf('2016/aug_2016_monthly.pdf')
jul16_p <- extract_pdf('2016/jul_2016_monthly.pdf')
jun16_p <- extract_pdf('2016/jun_2016_monthly.pdf')
may16_p <- extract_pdf('2016/may_2016_monthly.pdf')
apr16_p <- extract_pdf('2016/apr_2016_monthly.pdf')
mar16_p <- extract_pdf('2016/mar_2016_monthly.pdf')
feb16_p <- extract_pdf('2016/feb_2016_monthly.pdf')
jan16_p <- extract_pdf('2016/jan_2016_monthly.pdf')

#Format 2015/2016 data to remove commas and convert to numeric
convert_pdf <- function(month_file) {
  month_file$REPUBLICAN <- as.numeric(gsub(",","",month_file$REPUBLICAN))
  month_file$DEMOCRAT <- as.numeric(gsub(",","",month_file$DEMOCRAT))
  month_file$MINOR <- as.numeric(gsub(",","",month_file$MINOR))
  month_file$NONE <- as.numeric(gsub(",","",month_file$NONE))
  return(month_file)
}

dec15 <- convert_pdf(dec15_p)
nov15 <- convert_pdf(nov15_p)
oct15 <- convert_pdf(oct15_p)
sep15 <- convert_pdf(sep15_p)
aug15 <- convert_pdf(aug15_p)
jul15 <- convert_pdf(jul15_p)
jun15 <- convert_pdf(jun15_p)
may15 <- convert_pdf(may15_p)
apr15 <- convert_pdf(apr15_p)
mar15 <- convert_pdf(mar15_p)
feb15 <- convert_pdf(feb15_p)
jan15 <- convert_pdf(jan15_p)

dec16 <- convert_pdf(dec16_p)
nov16 <- convert_pdf(nov16_p)
oct16 <- convert_pdf(oct16_p)
sep16 <- convert_pdf(sep16_p)
aug16 <- convert_pdf(aug16_p)
jul16 <- convert_pdf(jul16_p)
jun16 <- convert_pdf(jun16_p)
may16 <- convert_pdf(may16_p)
apr16 <- convert_pdf(apr16_p)
mar16 <- convert_pdf(mar16_p)
feb16 <- convert_pdf(feb16_p)
jan16 <- convert_pdf(jan16_p)

# In 2017, reporting changed from PDFs to Excel files
#install.packages('openxlsx')
library(openxlsx)

dec17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 12)
nov17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 11)
oct17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 10)
sep17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 9)
aug17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 8)
jul17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 7)
jun17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 6)
may17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 5)
apr17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 4)
mar17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 3)
feb17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 2)
jan17 <- read.xlsx('2017/party2017_clean.xlsx', sheet = 1)

#2018 data
dec18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 12)
nov18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 11)
oct18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 10)
sep18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 9)
aug18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 8)
jul18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 7)
jun18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 6)
may18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 5)
apr18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 4)
mar18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 3)
feb18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 2)
jan18 <- read.xlsx('2018/party2018_clean.xlsx', sheet = 1)

#2019 data
dec19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 12)
nov19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 11)
oct19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 10)
sep19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 9)
aug19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 8)
jul19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 7)
jun19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 6)
may19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 5)
apr19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 4)
mar19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 3)
feb19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 2)
jan19 <- read.xlsx('2019/party2019_clean.xlsx', sheet = 1)

#2020 data
dec20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 12)
nov20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 11)
oct20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 10)
sep20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 9)
aug20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 8)
jul20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 7)
jun20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 6)
may20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 5)
apr20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 4)
mar20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 3)
feb20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 2)
jan20 <- read.xlsx('2020/party2020_clean.xlsx', sheet = 1)

#2021 data
dec21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 12)
nov21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 11)
oct21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 10)
sep21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 9)
aug21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 8)
jul21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 7)
jun21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 6)
may21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 5)
apr21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 4)
mar21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 3)
feb21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 2)
jan21 <- read.xlsx('2021/party2021_clean.xlsx', sheet = 1)

# Put monthly party totals into single dataframe
month_list <- list(jan17,feb17,mar17,apr17,may17,jun17,jul17,aug17,sep17,oct17,nov17,dec17,
                   jan18,feb18,mar18,apr18,may18,jun18,jul18,aug18,sep18,oct18,nov18,dec18,
                   jan19,feb19,mar19,apr19,may19,jun19,jul19,aug19,sep19,oct19,nov19,dec19,
                   jan20,feb20,mar20,apr20,may20,jun20,jul20,aug20,sep20,oct20,nov20,dec20,
                   jan21,feb21,mar21,apr21,may21,jun21,jul21,aug21,sep21,oct21,nov21,dec21)

month_names <- c('2017/01/31','2017/02/28','2017/03/31','2017/04/30','2017/05/31','2017/06/30',
                 '2017/07/31','2017/08/31','2017/09/30','2017/10/31','2017/11/30','2017/12/31',
                 '2018/01/31','2018/02/28','2018/03/31','2018/04/30','2018/05/31','2018/06/30',
                 '2018/07/31','2018/08/31','2018/09/30','2018/10/31','2018/11/30','2018/12/31',
                 '2019/01/31','2019/02/28','2019/03/31','2019/04/30','2019/05/31','2019/06/30',
                 '2019/07/31','2019/08/31','2019/09/30','2019/10/31','2019/11/30','2019/12/31',
                 '2020/01/31','2020/02/29','2020/03/31','2020/04/30','2020/05/31','2020/06/30',
                 '2020/07/31','2020/08/31','2020/09/30','2020/10/31','2020/11/30','2020/12/31',
                 '2021/01/31','2021/02/28','2021/03/31','2021/04/30','2021/05/31','2021/06/30',
                 '2021/07/31','2021/08/31','2021/09/30','2021/10/31','2021/11/30','2021/12/31')

#2015 and 2016 months need to be handled differently
month_list1516 <- list(jan15,feb15,mar15,apr15,may15,jun15,jul15,aug15,sep15,oct15,nov15,dec15,
                       jan16,feb16,mar16,apr16,may16,jun16,jul16,aug16,sep16,oct16,nov16,dec16)

month_names1516 <- c('2015/01/31','2015/02/28','2015/03/31','2015/04/30','2015/05/31','2015/06/30',
                     '2015/07/31','2015/08/31','2015/09/30','2015/10/31','2015/11/30','2015/12/31',
                     '2016/01/31','2016/02/28','2016/03/31','2016/04/30','2016/05/31','2016/06/30',
                     '2016/07/31','2016/08/31','2016/09/30','2016/10/31','2016/11/30','2016/12/31')

# Convert month names to datetime 
month_dates <- as.Date(month_names, "%Y/%m/%d")

month_dates1516 <- as.Date(month_names1516, "%Y/%m/%d")

#install.packages("dplyr")
library(dplyr)

all_months <- data.frame()
for (i in month_list) {
  data <- i[68,2:6]
  all_months <- rbind(all_months, data)
}

all_months1516 <- data.frame()
for (i in month_list1516) {
  data1516 <- i[68,2:5]
  all_months1516 <- rbind(all_months1516, data1516)
}

# Insert month date column
all_months$MONTH <- month_dates

all_months1516$MONTH <- month_dates1516

#Insert totals column for total number of registrations in 2015/2016 data
all_months1516$TOTALS <- rowSums(all_months1516[ , c("REPUBLICAN", "DEMOCRAT", "MINOR", "NONE")])

#Combine both data frames
total_months1521 <- rbind(all_months1516, all_months)

#Write all_months df to csv for external visualization
write.csv(total_months1521,"fl_voter_reg_master.csv", row.names = FALSE)
