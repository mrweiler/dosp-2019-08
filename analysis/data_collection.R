# ---- load libraries
library(ggplot2)
library(gtrendsR)
library(lubridate)

# ---- google trends query
df <- gtrends(keyword = c("depression"),
              geo = c("DE"),
              time = "all")

# ---- get interest over time
df_iot <- df$interest_over_time

# ---- get winter data
winter <- df_iot[month(df_iot$date) == 12 |
                   month(df_iot$date) == 1 |
                   month(df_iot$date) == 2, ]

# ---- get summer data
summer <- df_iot[month(df_iot$date) == 6 |
                   month(df_iot$date) == 7 |
                   month(df_iot$date) == 8, ]

# ---- add variable for season
winter$season <- "winter"
summer$season <- "summer"

# ---- combine summer and winter
df_final <- rbind(summer, winter)
