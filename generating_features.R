library(plyr)
library(dplyr)

# Return a feature matrix.
# Given exercises and a directory containing data.
generate_features <- function(exercise, dir) {
  
  myfiles = list.files(path=dir, pattern="*.txt", full.names=TRUE)
  tbl <- sapply(myfiles, read.table, header = FALSE, comment.char=";", sep=",")
  
  # Subset all the values in the table i.e. PID, Timestamp, Ax, Ay, Az for only exercise A.
  exercise_sub <- sapply(tbl, subset, tbl[[2]] == exercise)
  exercise_sub_mean <- sapply(exercise_sub, mean)
  
  # Form the final feature matrix.
  features <- matrix(exercise_sub_mean, nrow=51, byrow = TRUE)
  features[,2] = exercise
  
  return(features)
}

club_features_generated <- function(file1, file2, file3){
  file1 <- read.table(file1, header = TRUE, sep="," )
  file2 <- read.table(file2, header = TRUE, sep="," )
  file3 <- read.table(file3, header = TRUE, sep="," )
  feature_matrix = rbind(file1, file2, file3)
  return(feature_matrix)
}

exercise = "P"
mydir_acc_phone = "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel"
mydir_gry_phone = "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro"

mydir_acc_watch = "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel"
mydir_gyro_watch = "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro"

features_acc_phone <- generate_features(exercise, mydir_acc_phone)
features_gry_phone <- generate_features(exercise, mydir_gry_phone)

features_acc_watch <- generate_features(exercise, mydir_acc_watch)
features_gyro_watch <- generate_features(exercise, mydir_gyro_watch)


feature_matrix_A = rbind(features_acc_phone, features_gry_phone, features_acc_watch, features_gyro_watch)

device <- matrix(data = NA, nrow = dim(feature_matrix_A)[1], ncol = 1)
added_device <- cbind(feature_matrix_A, device)

added_device[1:102,7] <- "Phone"
added_device[102:204,7] <- "Watch"

write.table(added_device, file = "/Users/shehjarsadhu/Desktop/exercise_P.csv", sep = ",",
            row.names = TRUE, col.names = NA)

file1 <-  "/Users/shehjarsadhu/Desktop/exercise_P.csv"
file2 <- "/Users/shehjarsadhu/Desktop/exercise_J.csv"
file3 <- "/Users/shehjarsadhu/Desktop/exercise_A.csv"
feature_matrix <- club_features_generated(file1,file2,file3)
write.table(feature_matrix, file = "/Users/shehjarsadhu/Desktop/feature_table_A_J_P.csv", sep = ",",
            row.names = TRUE, col.names = NA)

