##Cada elemento de la lista asocia un certificado a las operaciones maliciosos en el que los atacantes utilizaron. 
##Los abusos incluyen redes de bots , campañas de malware y malware bancario.
##Muchas entradas están asociados con populares redes de bots y malware- basados 
##​​ataques, incluyendo Zeus ,  Shylock  y  parentescos .
##https://www.abuse.ch/?p=8180

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

getRow <- function(log = "") {
  df <- data.frame()
  
  return(df)
}

#separar en filas
strsplit (x=htmlCode, split=" ")

#cabecera
head(htmlCodena)

#eliminar filas
htmlCode[-8]

#Separar en columnas
dfInfo <- within(data=df, P<-data.frame (do.call('rbind',strsplit(as.character(a)," ",fixed=TRUE))))

#tambien sirve y está mejor
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

#Arregla tablas cpon valores que nos interesan
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

#convertir ip en decimal
k <- lapply(ip, function(x) net.basic::ip2long(x))
