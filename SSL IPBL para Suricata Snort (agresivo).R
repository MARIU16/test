##Cada elemento de la lista asocia un certificado a las operaciones maliciosas los atacantes utilizaron. 
##Los abusos incluyen redes de bots, campañas de malware y malware bancario.
##Muchas entradas están asociados con populares redes de bots y malware- basados en 
##ataques, incluyendo Zeus,  Shylock  y  parentescos.
## la fuente origen se actualiza cada 15 minutos.
##https://www.abuse.ch/?p=8180
## Objetivo: cruzar listas de ip's maliciosas con rangos de ip por paises para determinar focos de origenes.
## Las listas de Ip's maliciosas pueden ser usadas para comparar con cualquier log de ip y saber quien visita una página, entre otras.

## Lectura de una pagina web
con <- url("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules")
htmlCode <- readLines(con)
close(con)
htmlCode

## Parseando con XML
library(XML)
url <- "https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules"
html <- htmlTreeParse(url, useInternalNodes=TRUE)
xpathSApply(html, "//font", xmlValue)

#separar en filas
strsplit (x=htmlCode, split=" ")

#Ver cabecera
head(htmlCodena)

#eliminar filas
htmlCode[-8]

#Separar en columnas
dfInfo <- within(data=df, P<-data.frame (do.call('rbind',strsplit(as.character(a)," ",fixed=TRUE))))

#tambien sirve y está mejor. Es la que al final usamos
l <- read.table("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules", header = TRUE, sep = " ")

#probar que sale la columna seleccionada
rbind(l[6])

#probar la clase del objeto
class(l)

#ver nombres de colunas
colnames(l)

#Renombrar columnas
colnames(l)<-c("a","Protocolo","c","d","e","IP","Puerto")

#quitar datos
SC<-dfInfo[-c(1:7), ]

#separar en filas
strsplit (x=dff, split=" ")

#contenido de la columna
l[6]

#Arregla tablas con valores que nos interesan
tabla1<-data.frame(protocolo,ip,puerto)
protocolo<-l[,2]

#convertir cada columna en una variable para usar la que deseamos
ip<-l[,6]
protocolo<-l[,2]
puerto<-l[,7]

#luego unimos cada variable y la convertimos en tabla
tabla1<-data.frame(protocolo,ip,puerto)

#creando función de tabla final
tablafinal<-function(protocolo,ip,puerto) {
  l <- read.table("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules", header = TRUE, sep = " ")
  ip<-substring(as.character(l[,6]),2,nchar(as.character(l[,6]))-1)
  protocolo<-l[,2]
  puerto<-l[,7]
  tabla1<-data.frame(protocolo,ip,puerto)
  View(tabla1)
}
install.packages("net.basic")

#convertir ip en decimal Uso de la función net.basic
k <- lapply(ip, function(x) net.basic::ip2long(x))

#Queremos cruzar nuestas ip maliciosas con el listado de ip por paises 
#descargar listado de ip por paises
 pais<-download.file(url="http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip", destfile="paises.zip")

#descargar archivo
 unzip("paises.zip")
#ordenar archivo descargado volvemos a usar el read.table (es la mejor)
> p <- read.table("GeoIPCountryWhois.csv",header = TRUE, sep = ",")
> View(p)

#más pruebas y funcionó!
pais<-download.file(url="http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip", destfile="paises.zip")
 unzip("paises.zip")
> p <- read.table("GeoIPCountryWhois.csv",header = TRUE, sep = ",")
> View(p)
> de1<-p[,3]
> de2<-p[,4]
> pa<-p[,5]
> psa<-p[,6]
 tabla2<-data.frame(de1,de2,pa,psa)
> View(tabla2

##funciones finales 
tablafinal<-function(protocolo,ip,puerto) {
  l <- read.table("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules", header = TRUE, sep = " ")
  ip<-substring(as.character(l[,6]),2,nchar(as.character(l[,6]))-1)
  protocolo<-l[,2]
  puerto<-l[,7]
  tabla1<-data.frame(protocolo,ip,puerto)
  View(tabla1)
  nrow(tabla1)
}


tablapais<-function(de1,de2,pa,psa){

download.file(url="http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip", destfile="paises.zip")
unzip("paises.zip")
p <- read.table("GeoIPCountryWhois.csv",header = TRUE, sep = ",")
View(p)
de1<-p[,3]
de2<-p[,4]
pa<-p[,5]
psa<-p[,6]
tabla2<-data.frame(de1,de2,pa,psa)
View(tabla2)
}

#Pruebas para poder ahora obtener resultado cruzando ip's
#convertir ip a decimal función net.basic
ipdec<-lapply(as.character(tabla1[,2]), function (x) net.basic::ip2long(ip=x)))

#comparar pais
compare <- ((tabla2$de1 <= tabla1$ipdec[1]) & (tabla1$ipdec[1] <= tabla2$de2))
any(compare)

#mas pruebas con compare
compare <- ((tabla2$de1 <= tabla1$ipdec[1]) & (tabla1$ipdec[1] <= tabla2$de2))
any(compare)
pais<-tabla2[compare,]
pais2<-pais[,4]
pais2
compare <- lapply(tabla1$ipdec, function (x) ((tabla2$de1 <= x) & (x <= tabla2$de2)))

## convertir ips a decimal, almaceno en variable ipd, luego la funcion ip_to_numeric(mi variabledonde estan las ip)
library(iptools)
ipd<-ip_to_numeric(ip)
#mas info en https://cran.r-project.org/web/packages/iptools/iptools.pdf

##con las ips en decimal :)
##funciones finales 
tablafinal<-function(protocolo,ip,puerto) {
  l <- read.table("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules", header = TRUE, sep = " ")
  ip<-substring(as.character(l[,6]),2,nchar(as.character(l[,6]))-1)
  ip_to_numeric(ip)
  ipd<-ip_to_numeric(ip)
  protocolo<-l[,2]
  puerto<-l[,7]
  tabla1<-data.frame(protocolo,ip,puerto,ipd)
  View(tabla1)
  nrow(tabla1)
}


tablapais<-function(de1,de2,pa,psa){
  
  download.file(url="http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip", destfile="paises.zip")
  unzip("paises.zip")
  p <- read.table("GeoIPCountryWhois.csv",header = TRUE, sep = ",")
  View(p)
  de1<-p[,3]
  de2<-p[,4]
  pa<-p[,5]
  psa<-p[,6]
  tabla2<-data.frame(de1,de2,pa,psa)
  View(tabla2)
}

#completo con país incluído
##funciones finales 
get_blacklist_abuse<-function() {
  l <- read.table("https://sslbl.abuse.ch/blacklist/sslipblacklist_aggressive.rules", header = TRUE, sep = " ")
  ip<- substring(as.character(l[,6]),2,nchar(as.character(l[,6]))-1)
  ip_decimal<-ip_to_numeric(ip)
  protocolo<-l[,2]
  puerto<-l[,7]
  tabla1<-data.frame(ip_decimal,ip,protocolo,puerto, stringsAsFactors = FALSE)
  }

get_ip_countries<-function(){
  download.file(url="http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip", destfile="paises.zip")
  unzip("paises.zip")
  p <- read.table("GeoIPCountryWhois.csv",header = TRUE, sep = ",")
  de1<-p[,3]
  de2<-p[,4]
  pa<-as.character(p[,5])
  psa<-as.character(p[,6])
  tabla2<-data.frame(de1,de2,pa,psa, stringsAsFactors = FALSE)
}


blacklist_countries<-function(){
  pais<-matrix(nrow = nrow(tabla1),ncol = 1)
  for (i in 1:nrow(tabla1)){
    compare <- ((tabla2$de1 <= tabla1$ip_decimal[i]) & (tabla1$ip_decimal[i] <= tabla2$de2))
    pais[i,1]<-tabla2[compare,4]
  }
  pais<-data.frame(pais)
  tabla1<-cbind(tabla1,pais)
}
##Sumar por pais fuente: https://view.officeapps.live.com/op/view.aspx?src=http://personales.unican.es/gonzaleof/Itop/jaime/Pract_1_R.doc
> tt<-summary.factor(pais, data=tabla1)
> total_pais<-data.frame(tt)
> View(total_pais)
