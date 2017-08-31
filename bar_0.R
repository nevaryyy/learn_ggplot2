x <- c('A', 'B', 'C', 'D', 'E')
y <- c(13, 22, 16, 31, 8)
df <- data.frame(x = x, y = y)
ggplot(data = df, mapping = aes(x = x, y = y)) + geom_bar(stat = 'identity')
