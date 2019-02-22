# from page 197-198 on google drive research notebook
library(tidyverse)
trace <- rep(1:4, each = 5)
distance <- rep(c(0, 0.5, 1, 2, 3), times = 4)
power <- c(0.0425, 0.61, 0.8575, 0.935, 0.985,
           0.0575, 0.96, 1, 1, 1,
           0.05, 0.4175, 0.6375, 0.7725, 0.8775,
           0.0425, 0.8125, 0.98, 1, 1
           )
partition <- rep(c("ABCD:EFGH", "F:ABCDEGH"), each = 10)
effect <- rep(c(1, 2, 1, 2), each = 5)
interaction <- paste(effect, partition, sep = ", ") %>% as.factor()

tibble(trace, distance, power, effect, partition, interaction) -> mytib



mytib %>%
  #group_by(trace) %>%
  ggplot() + geom_line(aes(x = distance, 
                           y = power, 
                           colour = interaction, 
                           linetype = interaction)) +
  broman::theme_karl() +
  theme(legend.position = c(0.85, 0.23
                            )) + 
  xlab("Distance (cM)") + ylab("Power") +
  scale_linetype_manual("Effect size, Allele partitioning", values=c(1, 2, 1, 2)) +
  scale_colour_manual("Effect size, Allele partitioning", values=c(1, 1, 2, 2)) + 
  theme(
        legend.title=element_text(size=8), 
        legend.text=element_text(size=7))
 ggsave("R/power-curves.eps", height=4, width=7.5)
 ggsave("R/power-curves.svg", height = 4, width = 7.5)