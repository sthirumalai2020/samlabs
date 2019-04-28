library(tidyverse)
src_file<-"projects/murders/rdata/murders.rda"
dest_file<-"projects/murders/figs/barplot.jpg"
load(src_file)

murders%>%mutate(add=reorder(abb,rate)) %>% ggplot(aes(abb,rate)) +
  geom_bar(width=0.5,stat="identity",color="red") +
  coord_flip()
ggsave(dest_file)