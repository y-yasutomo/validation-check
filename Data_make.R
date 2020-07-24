

#data for validation check -------------------------------------------------------------------------

 Df<-data.frame(matrix(NA,
                      100,3,dimnames = list(c(),c("ID","CATALOG_ID",
                                                  "NUMBER"))))
 alphabet<-"abcdefghijklmnopqrstuvwxyz"
 alphabet<-toupper(alphabet)
 set.seed(2020)
 idx<-as.integer(runif(100,1,26))
 
#ID 
 for(i in 1:100)Df$ID[i]<-substr(alphabet,idx[i],idx[i])
 id_num<-as.integer(runif(100,100,999))
 Df$ID<-sort(paste0(Df$ID,id_num))
 
#CATALOG_ID
 Df$CATALOG_ID<-""
 for(i in 1:3){
   idx<-as.integer(runif(100,1,26))
   for(j in 1:100)Df$CATALOG_ID[j]<-paste0(Df$CATALOG_ID[j],substr(alphabet,idx[j],idx[j]))
 }
 Df$CATALOG_ID

#NUMBER
 Df$NUMBER<-as.integer(runif(100,100,999))

 #insert error -------------------------------------------------------------------------
 
#ID
 Df$ID[5]<-111
 Df$ID[25]<-"亜345"
 Df$ID[46]<-paste0(substr(Df$ID[46],4,4),substr(Df$ID[46],1,3))
 Df$ID[89]<-" "
 Df$ID[92]<-"　"

#CATALOG_ID
 Df$CATALOG_ID[5]<-Df$CATALOG_ID[58]
 Df$CATALOG_ID[89]<-paste0(Df$CATALOG_ID[89]," ")

#INT
 Df$NUMBER[12]<-"a12"
 
#write.csv(Df,"sample_data.csv",fileEncoding = "Shift-JIS")  
#write.csv(Df,"sample_data.csv")  
 
 
 