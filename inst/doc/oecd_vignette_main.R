## ----options, echo=FALSE-------------------------------------------------
knitr::opts_chunk$set(cache = FALSE, warning = FALSE, error = FALSE, fig.path = "./figures", eval = FALSE)
library(OECD)

## ----loadLibrary---------------------------------------------------------
#  library(devtools)
#  install_github("expersso/OECD")
#  library(OECD)

## ----get_datasets--------------------------------------------------------
#  data <- get_datasets()
#  search_dataset(string = "unemployment", data = data)

## ----dataset-------------------------------------------------------------
#  dataset <- "DUR_D"

## ----get_data_structure--------------------------------------------------
#  dstruc <- get_data_structure(dataset)
#  str(dstruc, max.level = 1)

## ----show_var_desc-------------------------------------------------------
#  dstruc$VAR_DESC

## ----breakdowns----------------------------------------------------------
#  dstruc$SEX
#  dstruc$AGE

## ----get_dataset---------------------------------------------------------
#  filter_list <- list(c("DEU", "FRA"), "MW", "2024")
#  df <- get_dataset(dataset = dataset, filter = filter_list)
#  head(df)

## ----duration------------------------------------------------------------
#  unique(df$DURATION)
#  dstruc$DURATION

## ----plot, cache = FALSE, fig.width = 7, fig.height = 4, fig.cap = "Unemployment rates of foreign- and native-born populations"----
#  library(dplyr)
#  library(ggplot2)
#  
#  df %>%
#    filter(DURATION == "UN5") %>%
#    mutate(obsTime = as.numeric(obsTime)) %>%
#    qplot(data = ., x = obsTime, y = obsValue, color = COUNTRY, geom = "line") +
#    labs(x = NULL, y = "Persons, thousands", color = NULL,
#         title = "Number of long-term unemployed men, aged 20-24")

## ----browse_metadata-----------------------------------------------------
#  browse_metadata(dataset)

## ----example-------------------------------------------------------------
#  df <- get_dataset("PATS_REGION", filter = "PCT_A.INVENTORS.BEL+BE10.TOTAL+BIOTECH",
#                    pre_formatted = TRUE)
#  head(df)

