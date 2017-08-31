x <- c('A', 'B', 'C', 'D', 'E', 'F', 'G')
y <- c('xx', 'yy', 'yy', 'xx', 'xx', 'xx', 'yy')
z <- c(10, 33, 12, 9, 16, 23, 11)
df <- data.frame(x = x, y = y, z = z)
ggplot(data = df, aes(x = x, y = z, fill = y)) + geom_bar(stat = 'identity')

ggplot(data = df, aes(x = reorder(x, z), y = z, fill = y)) + geom_bar(stat = 'identity') + xlab('x')
