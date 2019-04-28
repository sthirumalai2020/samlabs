library(tidyverse)
source_file <- "projects/murders/data/murders.csv"
dest_file<-"projects/murders/rdata/murders.rda"
murders<-read.csv(source_file)
murders<-murders%>%mutate(region=factor(region),rate=total/population * 10^5)
print(murders)
save(murders,file=dest_file)


