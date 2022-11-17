#Setting working directory
setwd("E:\\Climate_New\\allex\\03")

#Show all the files
list.files(path=".", pattern=NULL, all.files=FALSE,
           full.names=FALSE)


install.packages("readxl")






#Reading the xlsx file
a1 <- read_excel("1.xls")
a2 <- read_excel("2.xls")
a3 <- read_excel("3.xls")
a4 <- read_excel("4.xls")
a5 <- read_excel("5.xls")
a6 <- read_excel("6.xls")
a7 <- read_excel("7.xls")
a8 <- read_excel("8.xls")
a9 <- read_excel("9.xls")
a10 <- read_excel("10.xls")
a11 <- read_excel("11.xls")
a12 <- read_excel("12.xls")

#Adding
s <- a1$MEAN+a2$MEAN

#Export                          
write.table(s,"E:\\Data_colab\\sum2.csv", row.names = FALSE,  col.names = 20)



