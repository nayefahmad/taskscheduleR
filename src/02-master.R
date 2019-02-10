
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
# taskscheduler_create(taskname = "test",
#                      rscript = here("src", 
#                                     "02-master.R"), 
#                      schedule = "MINUTE", 
#                      starttime = "20:10", 
#                      modifier = 5)

# [1] "SUCCESS: The scheduled task \"test\" has successfully
# been created."
