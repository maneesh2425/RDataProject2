# setwd("C:\\Users\\cools\\Desktop\\R\\Course3\\Week4\\Project\\UCI HAR Dataset\\test")
# TestFiles <- list.files(pattern='*.txt', recursive=T)
# setwd("C:\\Users\\cools\\Desktop\\R\\Course3\\Week4\\Project\\UCI HAR Dataset\\train")
# TrainFiles <- list.files(pattern='*.txt', recursive=T)


# Read all the Data
dir <- "C:\\Users\\cools\\Desktop\\R\\Course3\\Week4\\Project\\UCI HAR Dataset\\"
# Test Data
test_sub <- read.table(paste0(dir,"test\\subject_test.txt"))
test_X   <- read.table(paste0(dir,"test\\subject_test.txt"))
test_Y   <- read.table(paste0(dir,"test\\Y_test.txt"))

# Training Data
train_sub <- read.table(paste0(dir,"train\\subject_train.txt"))
train_X   <- read.table(paste0(dir,"train\\subject_train.txt"))
train_Y   <- read.table(paste0(dir,"train\\Y_train.txt"))

# Combine Test and Training Data
sub <- rbind(test_sub,train_sub)
X   <- rbind(test_X,train_X)
Y   <- rbind(test_Y,train_Y)

rm(test_sub,test_X,test_Y)
rm(train_sub,train_X,train_Y)


# Combine into Dataframe by columns
Data <- cbind(sub,X,Y)
names(Data) <-c("Subject","X","Y")

rm(sub,X,Y)

Means <- colMeans(Data)