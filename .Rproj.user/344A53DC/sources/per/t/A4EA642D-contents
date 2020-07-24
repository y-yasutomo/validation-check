 
 library(tidyverse)

# -------------------------------------------------------------------------

 Df<-read_csv("sample_data.csv")
 Df<-Df[,-1]
 args(read_csv)
 summary(Df)
 
#data count
 Df %>% count()

 min_val<-function(x)min(x,na.rm = T)
 max_val<-function(x)max(x,na.rm = T)
 max_len<-function(x)max(nchar(x),na.rm = T)
 min_len<-function(x)min(nchar(x),na.rm = T)

 res_validation<-
   data.frame(matrix(NA,ncol(Df),6,
                     dimnames = list(colnames(Df),
                                     c("val_min","val_max","len_min","len_max",
                                       "unique_num","na_num"))))

 res_validation$val_min<-apply(Df,2,min_val)
 res_validation$val_max<-apply(Df,2,max_val)
 res_validation$len_min<-apply(Df,2,min_len)
 res_validation$len_max<-apply(Df,2,max_len)
 res_validation$unique_num<-apply(Df,2,function(x)length(unique(x)))
 res_validation$na_num<-apply(Df,2,function(x)sum(is.na(x)))
 #結果の確認
 res_validation
 
# https://id.fnshr.info/2015/05/03/r-windows-accent/
# https://kitamix.net/archives/save-cdv-file-in-r/1096

# encode
 #Df<-read_csv("sample_data.csv",locale = locale(encoding = "CP932"))
 #Df<-read_csv("sample_data.csv",locale = locale(encoding = "Shift-JIS"))
 Df<-read_csv("sample_data.csv")
 Df<-Df[,-1]
 Df[25,]
 res_validation<-
    data.frame(matrix(NA,ncol(Df),6,
                      dimnames = list(colnames(Df),
                                      c("val_min","val_max","len_min","len_max",
                                        "unique_num","na_num"))))
 
 res_validation$val_min<-apply(Df,2,min_val)
 res_validation$val_max<-apply(Df,2,max_val)
 res_validation$len_min<-apply(Df,2,min_len)
 res_validation$len_max<-apply(Df,2,max_len)
 res_validation$unique_num<-apply(Df,2,function(x)length(unique(x)))
 res_validation$na_num<-apply(Df,2,function(x)sum(is.na(x)))
 #結果の確認
 res_validation
 