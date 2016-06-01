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