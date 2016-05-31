## Helloworld
# displ= consumo ; hwy= millas/galon
library(ggplot2)
str(mpg) # http://docs.ggplot2.org/current/mpg.html
qplot(x = displ, y = hwy, data = mpg)