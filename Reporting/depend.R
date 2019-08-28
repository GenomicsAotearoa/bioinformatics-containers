# R script to load dependencies
local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org"
       options(repos=r)})


install.packages("BiocManager")
install.packages("VariantAnnotation")
install.packages("tidyverse")
install.packages("here")
install.packages("httr")
install.packages("jsonlite")
install.packages("reticulate")
install.packages("knitr")
install.packages("markdown")
install.packages("rmarkdown")