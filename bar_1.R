set.seed(1234)
x <- sample(c('A', 'B', 'C', 'D'), size = 1000, replace = TRUE, prob = c(0.2, 0.3, 0.3, 0.2))
y <- rnorm(1000) * 1000
df = data.frame(x = x, y = y)
ggplot(data = df, mapping = aes(x = factor(x), y = ..count..)) + geom_bar(stat = 'count')
