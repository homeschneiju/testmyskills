install.packages("WikipediR")
install.packages("devtools")
install.packages("XML")
library(XML)
  library(devtools)
library(WikipediR)



# devtools::install_github("ironholds/WikipediR")
#Retrieve the categories for the "New Age" article on en.wiki
cats <- categories_in_page("en", "wikipedia", pages = "New Age")
#Retrieve the categories for the "New Age" article on rationalwiki.
rw_cats <- categories_in_page(domain = "rationalwiki.org", pages = "New Age")
View(cats)

top_editors_page <- "http://en.wikipedia.org/wiki/Wikipedia:List_of_Wikipedians_by_number_of_edits"

top_editors_table <- readHTMLTable(top_editors_page)
very_top_editors <- as.character(top_editors_table[[3]][1:5,]$User)
#funktioniert nicht