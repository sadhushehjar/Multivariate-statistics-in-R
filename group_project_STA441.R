
library(rgl)

mydir = "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel"

myfiles = list.files(path=mydir, pattern="*.txt", full.names=TRUE)

tbl <- sapply(myfiles, read.table, comment.char=";",sep=",")

exercise = "A"

subset(tbl[[4]], tbl[[2]] == "A")



watch_gyro_df1 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1607_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df2 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1609_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df3 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1611_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df4 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1613_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df5 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1615_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df6 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1619_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df7 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1621_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df8 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1623_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df9 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1625_gyro_watch.txt", header = F, comment.char=";", sep=",")
watch_gyro_df10 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/gyro/data_1627_gyro_watch.txt", header = F, comment.char=";", sep=",")

watch_acc_df1 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1607_accel_watch.tx", header = F, comment.char=";", sep=",")
watch_acc_df2 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1609_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df3 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1611_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df4 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1613_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df5 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1615_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df6 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1619_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df7 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1621_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df8 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1623_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df9 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1625_accel_watch.txt", header = F, comment.char=";", sep=",")
watch_acc_df10 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/watch/accel/data_1627_accel_watch.txt", header = F, comment.char=";", sep=",")

phone_gryo_df1 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1607_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df2 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1609_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df3 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1611_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df4 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1613_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df5 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1615_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df6 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1619_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df7 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1621_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df8 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1623_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df9 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1625_gyro_phone.txt", header = F, comment.char=";", sep=",")
phone_gryo_df10 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/gyro/data_1627_gyro_phone.txt", header = F, comment.char=";", sep=",")

# Phone Acceleration values
phone_acc_df1 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1607_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df2 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1609_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df3 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1611_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df4 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1613_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df5 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1615_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df6 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1619_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df7 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1621_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df8 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1623_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df9 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1625_accel_phone.txt", header = F, comment.char=";", sep=",")
phone_acc_df10 <- read.table("/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/wisdm-dataset/raw/phone/accel/data_1627_accel_phone.txt", header = F, comment.char=";", sep=",")


# Calculating means...
exercise = "A"

accX = rbind(subset(df1["V4"], df1["V2"] == exercise) , subset(df2["V4"], df2["V2"] == exercise) , subset(df3["V4"], df3["V2"] == exercise) , subset(df4["V4"], df4["V2"] == exercise) , subset(df5["V4"], df5["V2"] == exercise) , subset(df6["V4"], df6["V2"] == exercise) ,  subset(df7["V4"], df7["V2"] == exercise) , subset(df8["V4"], df8["V2"] == exercise) , subset(df9["V4"], df9["V2"] == exercise) , subset(df10["V4"], df10["V2"] == exercise) )
accY = rbind(subset(df1["V5"], df1["V2"] == exercise) , subset(df2["V5"], df2["V2"] == exercise) , subset(df3["V5"], df3["V2"] == exercise) , subset(df4["V5"], df4["V2"] == exercise) , subset(df5["V5"], df5["V2"] == exercise) , subset(df6["V5"], df6["V2"] == exercise) ,  subset(df7["V5"], df7["V2"] == exercise) , subset(df8["V5"], df8["V2"] == exercise) , subset(df9["V5"], df9["V2"] == exercise) , subset(df10["V5"], df10["V2"] == exercise) )
accZ = rbind(subset(df1["V6"], df1["V2"] == exercise) , subset(df2["V6"], df2["V2"] == exercise) , subset(df3["V6"], df3["V2"] == exercise) , subset(df4["V6"], df4["V2"] == exercise) , subset(df5["V6"], df5["V2"] == exercise) , subset(df6["V6"], df6["V2"] == exercise) ,  subset(df7["V6"], df7["V2"] == exercise) , subset(df8["V6"], df8["V2"] == exercise) , subset(df9["V6"], df9["V2"] == exercise) , subset(df10["V6"], df10["V6"] == exercise) )

meanAccX <- lapply(accX, mean)
meanAccY <- lapply(accY, mean)
meanAccZ <- lapply(accZ, mean)

# Change the dataset for this ......
groX = rbind(subset(df1["V4"], df1["V2"] == exercise) , subset(df2["V4"], df2["V2"] == exercise) , subset(df3["V4"], df3["V2"] == exercise) , subset(df4["V4"], df4["V2"] == exercise) , subset(df5["V4"], df5["V2"] == exercise) , subset(df6["V4"], df6["V2"] == exercise) ,  subset(df7["V4"], df7["V2"] == exercise) , subset(df8["V4"], df8["V2"] == exercise) , subset(df9["V4"], df9["V2"] == exercise) , subset(df10["V4"], df10["V2"] == exercise) )
groY = rbind(subset(df1["V5"], df1["V2"] == exercise) , subset(df2["V5"], df2["V2"] == exercise) , subset(df3["V5"], df3["V2"] == exercise) , subset(df4["V5"], df4["V2"] == exercise) , subset(df5["V5"], df5["V2"] == exercise) , subset(df6["V5"], df6["V2"] == exercise) ,  subset(df7["V5"], df7["V2"] == exercise) , subset(df8["V5"], df8["V2"] == exercise) , subset(df9["V5"], df9["V2"] == exercise) , subset(df10["V5"], df10["V2"] == exercise) )
groZ = rbind(subset(df1["V6"], df1["V2"] == exercise) , subset(df2["V6"], df2["V2"] == exercise) , subset(df3["V6"], df3["V2"] == exercise) , subset(df4["V6"], df4["V2"] == exercise) , subset(df5["V6"], df5["V2"] == exercise) , subset(df6["V6"], df6["V2"] == exercise) ,  subset(df7["V6"], df7["V2"] == exercise) , subset(df8["V6"], df8["V2"] == exercise) , subset(df9["V6"], df9["V2"] == exercise) , subset(df10["V6"], df10["V6"] == exercise) )

meanGroX <- lapply(groX, mean)
meanGroY <- lapply(groY, mean)
meanGroZ <- lapply(groZ, mean)

dim(df)
summary(df)


x <- subset(df["V4"], df["V2"] == exercise)
y <- subset(df["V5"], df["V2"] == exercise)
z <- subset(df["V6"], df["V2"] == exercise)
timestamp_data <- subset(df["V3"], df["V2"] == exercise)

numeric_x <- as.numeric(unlist(x))
numeric_y <- as.numeric(unlist(y))
numeric_z <- as.numeric(unlist(z))

numeric_timestamp_data <- as.numeric(unlist(timestamp_data))

# 3D plots -> x,y,z.

plot3d(numeric_x, numeric_y, numeric_z, xlab = " Acc X " , ylab = " Acc Y "  , zlab = " Acc Z ")

par(mfrow=c(3,1))
plot(numeric_timestamp_data, numeric_x, type="l", main = "Exercise: P" , xlab = "Timestamp", ylab="Acc in X", cex.main=1.75, cex.lab=1.25, cex.axis=1.20)
plot(numeric_timestamp_data, numeric_y, type="l", main = "Exercise: P"  , xlab = "Timestamp", ylab="Acc in Y", cex.main=1.75, cex.lab=1.25, cex.axis=1.20)
plot(numeric_timestamp_data, numeric_z, type="l", main = "Exercise: P" , xlab = "Timestamp", ylab="Acc in Z", cex.main=1.75, cex.lab=1.25, cex.axis=1.20)
