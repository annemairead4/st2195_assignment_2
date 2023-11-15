install.packages("rvest")
library(rvest)
csv_wiki<-read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
csv_tables<-csv_wiki%>%html_nodes(xpath='//h2[contains(.,"Example")]//following-sibling::pre')%>%html_text()
csv_tables
csv_table<-csv_tables[1]
write.table(csv_table,file="car.csv",quote = FALSE,col.names = FALSE,row.names = FALSE)

