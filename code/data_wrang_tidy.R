MyData <- as.matrix(
  read.csv("data/pound_hill_data.csv", header = FALSE)
)

MyMetaData <- read.csv(
  "data/pound_hill_meta_data.csv",
  header = TRUE,
  sep = ";"
)

head(MyData)
dim(MyData)
str(MyData)

head(MyMetaData)

MyData <- t(MyData)

head(MyData)
dim(MyData)

MyData[MyData == ""] <- 0

TempData <- as.data.frame(
  MyData[-1, ],
  stringsAsFactors = FALSE
)

colnames(TempData) <- MyData[1, ]
rownames(TempData) <- NULL

head(TempData)
str(TempData)

library(dplyr)
library(tidyr)

MyWrangledData <- TempData |>
  pivot_longer(
    cols = -c(Cultivation, Block, Plot, Quadrat),
    names_to = "Species",
    values_to = "Count"
  )

MyWrangledData$Cultivation <- as.factor(MyWrangledData$Cultivation)
MyWrangledData$Block <- as.factor(MyWrangledData$Block)
MyWrangledData$Plot <- as.factor(MyWrangledData$Plot)
MyWrangledData$Quadrat <- as.factor(MyWrangledData$Quadrat)

MyWrangledData$Count <- as.integer(MyWrangledData$Count)

head(MyWrangledData)
str(MyWrangledData)
dim(MyWrangledData)

dir.create("results", showWarnings = FALSE)

write.csv(
  MyWrangledData,
  "results/pound_hill_long_tidy.csv",
  row.names = FALSE
)
