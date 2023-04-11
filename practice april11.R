#mehr's first r

#importing packages
library(tidyverse)

# reading in the data----

Ch_free_percent <- read_csv("mehr_transposed_data.csv") %>% 
  select(-TAXA, -Core, -`Section Depth`)
Ch_free_percent <- Ch_free_percent[-nrow(Ch_free_percent),]
names(Ch_free_percent) <- gsub(" ", "_", names(Ch_free_percent))


Ch_free_percent_long <- Ch_free_percent %>%
  pivot_longer(cols = -Master_Composite,
               names_to = "genus_species",
               values_to = "percent")
names(Ch_free_percent_long)[1] <- "depth_cm"




# Look into ggplot; r4ds is a great reference 



View(Ch_free_percent)




# make prelim plots----