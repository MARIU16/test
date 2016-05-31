# Coloreandoprovincias
library("raster")
adm<-getData('GADM', country='ESP', level=4)
cat<-(adm[adm$NAME_1=="Cataluña",])
plot(cat, bg="dodgerblue", axes=T)
plot(cat, lwd=10, border="skyblue", add=T)
plot(cat,col="green4", add=T)
grid()
cat$data<-rnorm(1:length(cat$NAME_4), 10, 3)

# Solo latitud y longitud
library(ggmap)
ej<-get_map(location="Mexico", source="google", maptype="terrain", zoom=5)
ggmap(ej)
ej<-get_map(location=c(right=-85, left=-121, bottom=13, top=33), source="osm", color="bw")
ggmap(ej)