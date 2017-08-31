set.seed(12)
x <- 1980 + 1:35
y <- round(100 * rnorm(35))
df <- data.frame(x = x, y = y)
df <- transform(df, judge = ifelse(y > 0, "YES", "NO"))
ggplot(df, aes(x = x, y = y, fill = judge)) + geom_bar(stat = 'identity') + theme(legend.position = "") + xlab("Year") + scale_fill_manual(values = c("darkred", "blue"))
