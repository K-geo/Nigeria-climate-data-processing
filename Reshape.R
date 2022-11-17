#loading the library
library(tidyr)


#Setting working directory
setwd("E:\\Data_colab\\REshaping")



#Reading the csv file
Rain <- read.csv("Tmax_test2.csv", header = TRUE, sep = ",")
Rain

#deleting a column
#Rain <- subset (Rain, select = -OBJECTID)

#chaing column names
#colnames(sdtest) <- c(0,0,0,4,5,6)
#sdtest



#converting 0 values to NA
#sdata[sdata == 0] <- NA
#sdata


#transforming wide to long
rainlong= gather(Rain, year, val, X1981:X2021, factor_key = TRUE)
View(rainlong)


#Saving
write.csv(rainlong,"E:\\Data_colab\\TEmp_test.csv", row.names = FALSE)

zna <- read.csv("E:\\Data_colab\\ready\\TMFna.csv", header = TRUE, sep = ",")
zna[zna == 0] <- NA
zna
write.csv(zna,"E:\\Data_colab\\TMFzna.csv", row.names = FALSE)
