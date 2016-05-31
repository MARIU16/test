## Helloworld
# displ= consumo ; hwy= millas/galon
library(ggplot2)
str(mpg) # http://docs.ggplot2.org/current/mpg.html
qplot(x = displ, y = hwy, data = mpg)

## Añadimos color (aesthetic)
library(ggplot2)
qplot(x = displ, y = hwy, data = mpg, color = drv)

## Añadimos objetos de tipo geometric
library(ggplot2)
qplot(x = displ, y = hwy, data = mpg, geom= c("point","smooth"))

## Histograma
library(ggplot2)
qplot(x = hwy, data = mpg, fill= drv)

## Facets(múltiples gráficas)
library(ggplot2)
qplot(x = displ, y = hwy, data = mpg, facets= .~drv)

## Añadimos objetos de tipo geometric
library(ggplot2)
qplot(x = displ, y = hwy, data = mpg, color = drv) + geom_smooth(method="lm")

## Histograma
library(ggplot2)
qplot(x = hwy, data = mpg, fill= drv)

## Facets(múltiples gráficas)
library(ggplot2)
qplot(x = displ, y = hwy, data = mpg, facets= .~drv)

## Facets(múltiples gráficas)
library(ggplot2)
qplot(x = hwy,
        data = mpg,
        facets= drv~.,
        binwidth= 2,
        color = drv,
      
                )

## Densidad
qplot(x = hwy, data = mpg, geom= "density")
qplot(x = hwy, data = mpg, geom= "density", color = drv)

#Gráficos complejos: Composición -Geom
ggplot(mpg, aes(displ, hwy, color = class)) + geom_point()


