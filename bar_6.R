x <- rep(1:5, each = 3)
y <- rep(c('A', 'B', 'C'), times = 5)
set.seed(12)
z <- round(runif(min = 10, max = 20, n = 15))
df <- data.frame(x = x, y = y, z = z)
ggplot(df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', position = 'dodge')

ggplot(df, aes(x = interaction(x, y), y = z, fill = y)) + geom_bar(stat = 'identity') + geom_text(aes(label = z))

ggplot(df, aes(x = interaction(x, y), y = z, fill = y)) + geom_bar(stat = 'identity') + geom_text(aes(label = z), size = 8, color = 'orange', vjust = 1)

ggplot(df, aes(x = x, y = z, fill = y)) + geom_bar(stat = 'identity', position = 'dodge') + geom_text(aes(label = z), size = 5, color = 'black', vjust = 1, hjust = .5, position = position_dodge(0.9))

ggplot(df, aes(x = x, y = z, fill = y)) + geom_bar(stat = 'identity', position = 'stack') + geom_text(aes(label = z), size = 5, color = 'black', vjust = 3.5, hjust = .5, position = position_stack())
