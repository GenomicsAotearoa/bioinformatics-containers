# R script to load dependencies
local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org"
       options(repos=r)})


install.packages("BiocManager")

BiocManager::install("DNAcopy")
install.packages("wmtsa")