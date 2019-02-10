
#************************************************
# Master file to schedule the Rmarkdown report 
#************************************************

library(here)
library(taskscheduleR)
library(rmarkdown)


# call the rmarkdown doc: 
rmarkdown::render(here("src", 
                       "01-rmarkdown-report.Rmd"))



# now schedule this R script using taskscheduleR: 
script <- here("src",
               "02-master.R")

# taskscheduler_create(taskname = "schedule_rmarkdown",
#                      rscript = script,
#                      schedule = "MINUTE",
#                      starttime = "20:58",
#                      modifier = 1)

# [1] "SUCCESS: The scheduled task \"test\" has successfully
# been created."
