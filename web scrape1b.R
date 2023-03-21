library(rvest)
library(xml2)

url <- "C:/mca_4th_sem/MoHFW _ Home.html"

doc <- read_html(url)

table <- html_nodes(doc, "table")[[1]]

headers <- html_nodes(table, "th") %>% html_text() %>% str_trim()

rows <- html_nodes(table, "tr")[-1] %>% 
  lapply(html_nodes, "td") %>% 
  lapply(html_text) %>% 
  lapply(str_trim)

for (row in rows) {
  print(row)
}
