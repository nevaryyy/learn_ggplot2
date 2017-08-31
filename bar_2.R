set.seed(1234)
x <- sample(c(1, 2, 4, 6, 7), size = 1000, replace = TRUE, prob = c(0.1, 0.2, 0.2, 0.3, 0.2))
ggplot(data = data.frame(x = x), aes(x = factor(x), y = ..count..)) + geom_bar(stae = 'count')
ggplot(data = data.frame(x = x), aes(x = factor(x), y = ..count..)) + geom_bar(stae = 'count', fill = 'steelblue', color = 'darkred')

# get all red color
colors()[grep('red', colors())]
