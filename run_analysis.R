## -----------------------------------------------------------------------------------------------------------------------------------------------
#set working directory
#read the X,y train data, and subject number separately and combine together
X_train<-read.delim('./UCI\ HAR\ Dataset/train/X_train.txt',header = F,sep = '')
#dim(X_train)  #each X variable has 561 features,there are 7352 train records
y_train<-read.delim('./UCI\ HAR\ Dataset/train/y_train.txt',header = F,sep = '')
names(y_train)='label'  #set the column name for easier identification



subject_train<-read.delim('./UCI\ HAR\ Dataset/train/subject_train.txt',header = F,sep = '')
        

names(subject_train)='subject'    
train<-cbind(subject_train,y_train,X_train) #combine the train        X,y data



#read the X,y test data, and subject numbe  separately and combine together
X_test<-read.delim('./UCI\ HAR\ Dataset/test/X_test.txt',header = F,sep = '')
#dim(X_test) #there are 2947 test records
y_test<-read.delim('./UCI\ HAR\ Dataset/test/y_test.txt',header = F,sep = '')

subject_test<-read.delim('./UCI\ HAR\ Dataset/test/subject_test.txt',header = F,sep = '')


names(y_test)='label'  #set the column name 
names(subject_test)='subject'    
#combine the test X,y data
test<-cbind(subject_test,y_test,X_test) 

head(test)

#combine train and test sets
combined=rbind(train,test) 
head(combined)



## -----------------------------------------------------------------------------------------------------------------------------------------------
#load the features
feature<-read.delim('./UCI\ HAR\ Dataset/features.txt',header = F,sep = '')
head(feature)


#Q4
names(combined)<-c('subject','label',feature$V2)#rename the columns of combined data
head(combined)


## -----------------------------------------------------------------------------------------------------------------------------------------------
#select features related to mean() and std()
selectedMeasures<-combined[,grepl('mean()|std()|subject|label',names(combined))]

selectedMeasures


## -----------------------------------------------------------------------------------------------------------------------------------------------

actLable<-read.delim('./UCI\ HAR\ Dataset/activity_labels.txt',header = F,sep='')
actLable


#look up the label in the activity_labels file and replace it with descriptive names
selectedMeasures$label<-sapply(combined$label,FUN =function(x) {actLable[x,]$V2})
#combined$label
head(selectedMeasures)



## -----------------------------------------------------------------------------------------------------------------------------------------------
#name the feature names unique
index=which(duplicated(names(selectedMeasures))) #find the duplicated index
#names(selectedMeasures[,index])
colnames(selectedMeasures)[index]=make.names(names(selectedMeasures[,index]))#for the duplicated index, make new names for each of them so they are unique
#duplicated(names(selectedMeasures)) #check, make sure colnames are unique



library(dplyr)
dataMean=selectedMeasures%>%
        group_by(subject,label)%>%
        summarise_all(.funs = mean)
dataMean


## -----------------------------------------------------------------------------------------------------------------------------------------------



## -----------------------------------------------------------------------------------------------------------------------------------------------
write.table(selectedMeasures,file = 'tidy_combined.txt')
write.table(dataMean, row.name=FALSE,file = 'dataMean.txt')


## -----------------------------------------------------------------------------------------------------------------------------------------------
knitr::purl('project1.Rmd','run_analysis.R')


## -----------------------------------------------------------------------------------------------------------------------------------------------



## -----------------------------------------------------------------------------------------------------------------------------------------------



## -----------------------------------------------------------------------------------------------------------------------------------------------


