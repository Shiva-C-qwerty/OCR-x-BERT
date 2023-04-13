#install.packages("tesseract")
#install.packages("imager")
#install.packages("pdftools")

library(tesseract)
library(imager)
library(tidyverse)
library(pdftools)
library(tm)
library(remotes)

# function to remove non-alphanumeric characters, convert to lowercase, remove stopwords, and remove whitespace
clean_text <- function(text){
  text <- gsub("[^[:alnum:][:space:]]", "", text)
  text <- tolower(text)
  stopwords <- c("the", "and", "of", "to", "in", "a", "for", "is")
  text <- removeWords(text, stopwords)
  text <- trimws(text)
  return(text)
}

args <- commandArgs(TRUE)
if (length(args) < 1) {
  stop("Please specify a file name.")
}

file_name <- args[1]
file_ext <- tools::file_ext(file_name)

#for images
ocr_img <- function(){
  
  imgd <- imager::load.image(file_name)

  text <- ocr(imgd)
  
  text_clean <- clean_text(text)
  writeLines(text_clean, "output.txt")
  return(text_clean)
  
}

# call the appropriate OCR function based on user input
#if (file_type == "image"){
 # text <- ocr_img()
#} else if (file_type == "pdf"){
 # text <- ocr_pdf()
#} else {
 # stop("Invalid file type.")
#}

#cat(text,sep = "\n")

#file_name <- "output.txt"

#file_con <- file(file_name, "w")

#writeLines(text, file_con)
#close(file_con)
