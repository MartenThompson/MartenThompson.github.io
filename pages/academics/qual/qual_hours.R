require(ggplot2)

weekly_study_data <- data.frame(week = 1:13,
                                hours= c(10.5, 15, 22.5, 25.25, 8.75, 20, 25.75, 21, 27.25, 32, 34.25, 34, 38.5))



ggplot(data=weekly_study_data, aes(x=week, y=hours, fill=hours)) + 
  geom_bar(stat='identity', color='white') +
  theme_classic() + 
  theme(axis.line = element_blank(),
        axis.title = element_blank(),
        legend.position = 'none',
        plot.title = element_text(hjust=0.5, size=16)) +
  labs(title='Hours Studied per Week') + 
  scale_x_continuous(breaks = c(0, 3, 7, 11), labels=c('May', 'June', 'July', 'August'))
