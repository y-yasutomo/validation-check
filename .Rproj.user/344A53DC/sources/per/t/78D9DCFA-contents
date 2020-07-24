#validation check using R

library(tidyverse)
library(readxl)
# -------------------------------------------------------------------------

#space check

 Data<-read_csv("sample1_csv.csv")
 Data

 Data2<-read_excel("sample1_excel.xlsx")
 Data2 

 Data<-read_csv("sample2_csv.csv")
 Data

 Data2<-read_excel("sample2_excel.xlsx")
 Data2

#半角をうめこむ 
 Data<-read_csv("sample3_csv.csv")
 Data
 
 Data2<-read_excel("sample3_excel.xlsx")
 Data2

#文字前後の半角
 Data<-read_csv("sample4_csv.csv")
 Data

 Data2<-read_excel("sample4_excel.xlsx")
 Data2

 #文字前後の半角は自動的に削除される
 Data<-read_csv("sample4_csv.csv",trim_ws = F)
 Data

 Data2<-read_xlsx("sample4_excel.xlsx",trim_ws = F)
 Data2
 