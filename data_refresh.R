

library(tidyverse)
library(RSocrata)

df <- RSocrata::read.socrata("https://data.winnipeg.ca/resource/qd6b-q49i.json")
print(head(df))
str(df)

readr::write_csv(x = df, file = "data/narcan.csv", append = FALSE)