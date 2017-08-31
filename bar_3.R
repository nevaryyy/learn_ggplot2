x <- rep(1:5, each = 3)
y <- rep(c('A', 'B', 'C'), times = 5)
set.seed(1234)
z <- round(runif(min = 10, max = 20, n = 15))
df <- data.frame(x = x, y = y, z = z)
ggplot(data = df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', position = 'dodge')

ggplot(data = df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', position = 'stack')

ggplot(data = df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', position = 'fill')

ggplot(data = df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', position = 'dodge') + scale_fill_brewer(palette = 'Accent')

col <- c('darkred', 'skyblue', 'purple')
ggplot(data = df, aes(x = factor(x), y = z, fill = y)) + geom_bar(stat = 'identity', color = 'black', position = 'dodge') + scale_fill_manual(values = col, limits = c('B', 'C', 'A')) + xlab('x')
