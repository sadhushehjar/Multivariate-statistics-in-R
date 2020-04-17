
library(plotly)

filePath <- "/Users/shehjarsadhu/Desktop/Spring2020/STA441/Final_Project/Featuretables/feature_table_A_J_P.csv"

df <- read.csv(filePath, header = TRUE,  sep = ",")

exerciseA <- subset(df,df["V2"]== "A")
exerciseP <- subset(df,df["V2"]== "P")

phone_sub <- subset(df,df["V7"] == "Phone")

fig <- plot_ly(phone_sub, x = ~V5, y = ~V6, z = ~V7, color = ~V2, colors = c('#1DE8C7', '#22E313','#1219F2'))
fig <- fig %>% add_markers()
fig <- fig %>% layout(scene = list(xaxis = list(title = 'Acceleration x'),
                                   yaxis = list(title = 'Acceleration y'),
                                   zaxis = list(title = 'Acceleration z')))

fig

watch_sub <- subset(df,df["V7"] == "Watch")
fig1 <- plot_ly(watch_sub, x = ~V5, y = ~V6, z = ~V7, color = ~V2, colors = c('#1DE8C7', '#22E313','#1219F2'))
fig1 <- fig1 %>% add_markers()
fig1 <- fig1 %>% layout(scene = list(xaxis = list(title = 'Acceleration x'),
                                   yaxis = list(title = 'Acceleration y'),
                                   zaxis = list(title = 'Acceleration z')))

fig1


