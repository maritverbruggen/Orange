#load data

library(writexl)
library(haven)
library(sjmisc)
library(readxl)
library(dplyr)
library(stringr)
library(tidyr)

rm(list=ls())
data <- read_excel("../Full Data/all_coffee_data0809.xlsx")

data <- data.frame(data)

data <- data %>% drop_na()

View(data)


#Combine retailer to Country 

for (i in seq(1, length(data$Brand))){
  if (data$Retailer[i] == "Albert Heijn"){
    data$Country[i] <- "Nederland"
  }else if (data$Retailer[i] == "Albaladi Qatar"){
    data$Country[i] <- "Qatar"
  }else if (data$Retailer[i] == "Aldi Australia"){
    data$Country[i] <- "Australie"
  }else if (data$Retailer[i] == "Aldi Duitsland"){
    data$Country[i] <- "Duitsland"
  }else if (data$Retailer[i] == "Aljazira"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Amazon"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "Auchan"){
    data$Country[i] <- "Frankrijk"
  }else if (data$Retailer[i] == "Auchan Polen"){
    data$Country[i] <- "Polen"
  }else if (data$Retailer[i] == "BigBasket"){
    data$Country[i] <- "India"
  }else if (data$Retailer[i] == "Bompreco"){
    data$Country[i] <- "Brazilie"
  }else if (data$Retailer[i] == "Carrefour Tunesie"){
    data$Country[i] <- "Tunesie"
  }else if (data$Retailer[i] == "Carrefour_Arabie"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Carrefour_Brazilie"){
    data$Country[i] <- "Brazilie"
  }else if (data$Retailer[i] == "Carrefour_Emirates"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "Carrefour_Qatar"){
    data$Country[i] <- "Qatar"
  }else if (data$Retailer[i] == "Chata Polska"){
    data$Country[i] <- "Polen"
  }else if (data$Retailer[i] == "Choithrams"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "CIA Market Litouwen"){
    data$Country[i] <- "Litouwen"
  }else if (data$Retailer[i] == "Cityflower Arabia"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Combi"){
    data$Country[i] <- "Duitsland"
  }else if (data$Retailer[i] == "Condor"){
    data$Country[i] <- "Brazilie"
  }else if (data$Retailer[i] == "Costco"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "Danube"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Drive Polen"){
    data$Country[i] <- "Polen"
  }else if (data$Retailer[i] == "Food_Lion"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "Gopuff"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "Gruste Litouwen"){
    data$Country[i] <- "Litouwen"
  }else if (data$Retailer[i] == "Hannaford"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "Harris Teeter"){
    data$Country[i] <- "Amerika"
  }else if (data$Retailer[i] == "IGA Australia"){
    data$Country[i] <- "Australie"
  }else if (data$Retailer[i] == "JD.JD"){
    data$Country[i] <- "Indonesie"
  }else if (data$Retailer[i] == "Jumbo"){
    data$Country[i] <- "Nederland"
  }else if (data$Retailer[i] == "Kaffee24"){
    data$Country[i] <- "Duitsland"
  }else if (data$Retailer[i] == "Kaufland"){
    data$Country[i] <- "Duitsland"
  }else if (data$Retailer[i] == "Leclerc Polen"){
    data$Country[i] <- "Polen"
  }else if (data$Retailer[i] == "Lulu Emirates"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "Lulu Indonesia"){
    data$Country[i] <- "Indonesie"
  }else if (data$Retailer[i] == "Lulu Saudi Arabie"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Monoprix Tunesie"){
    data$Country[i] <- "Tunesie"
  }else if (data$Retailer[i] == "Netto"){
    data$Country[i] <- "Duitsland"
  }else if (data$Retailer[i] == "Othaim Arabia"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Pao de Acucar"){
    data$Country[i] <- "Brazilie"
  }else if (data$Retailer[i] == "Rimi Litouwen"){
    data$Country[i] <- "Litouwen"
  }else if (data$Retailer[i] == "Safari Emirates"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "Safari Qatar"){
    data$Country[i] <- "Qatar"
  }else if (data$Retailer[i] == "Spar Nederland"){
    data$Country[i] <- "Nederland"
  }else if (data$Retailer[i] == "Spar Qatar"){
    data$Country[i] <- "Qatar"
  }else if (data$Retailer[i] == "Spinneys"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "Tahimi_Arabie"){
    data$Country[i] <- "Saudi Arabie"
  }else if (data$Retailer[i] == "Tiptop"){
    data$Country[i] <- "Indonesie"
  }else if (data$Retailer[i] == "Tops_Thailand"){
    data$Country[i] <- "Thailand"
  }else if (data$Retailer[i] == "Utenos Litouwen"){
    data$Country[i] <- "Litouwen"
  }else if (data$Retailer[i] == "Waitrose"){
    data$Country[i] <- "Dubai"
  }else if (data$Retailer[i] == "Woolworths"){
    data$Country[i] <- "Australie"
  }else if (data$Retailer[i] == "Yogya"){
    data$Country[i] <- "Indonesie"
  }else{
    data$Country[i] <- "No Country Found"
  }
}

View(data)


#Match Country to Valuta 

for (i in seq(1, length(data$Brand))){
  if (data$Country[i] == "Amerika"){
    data$Valuta[i] <- "Amerikaanse Dollar"
  }else if (data$Country[i] == "Australie"){
    data$Valuta[i] <- "Australische Dollar"
  }else if (data$Country[i] == "Brazilie"){
    data$Valuta[i] <- "Braziliaanse Reaal"
  }else if (data$Country[i] == "Dubai"){
    data$Valuta[i] <- "VAE-dirham"
  }else if (data$Country[i] == "Duitsland"){
    data$Valuta[i] <- "Euro"
  }else if (data$Country[i] == "Frankrijk"){
    data$Valuta[i] <- "Euro"
  }else if (data$Country[i] == "India"){
    data$Valuta[i] <- "Indiase Roepie"
  }else if (data$Country[i] == "Indonesie"){
    data$Valuta[i] <- "Indonesische Roepia"
  }else if (data$Country[i] == "Litouwen"){
    data$Valuta[i] <- "Euro"
  }else if (data$Country[i] == "Nederland"){
    data$Valuta[i] <- "Euro"
  }else if (data$Country[i] == "Polen"){
    data$Valuta[i] <- "Zloty"
  }else if (data$Country[i] == "Qatar"){
    data$Valuta[i] <- "Qatarese Rial"
  }else if (data$Country[i] =="Saudi Arabie"){
    data$Valuta[i] <- "Saudi Arabische Rial"
  }else if (data$Country[i] == "Thailand"){
    data$Valuta[i] <- "Thaise Baht"
  }else if (data$Country[i] == "Tunesie"){
    data$Valuta[i] <- "Tunesische Dinar"
  }else{ 
    data$Valuta[i] <- "No Valuta Found"
  }
}



#Match Valuta to Koers 

for (i in seq(1, length(data$Brand))){
  if (data$Valuta[i] == "Euro"){
    data$Koers[i] <- "1"
  }else if (data$Valuta[i] == "Amerikaanse Dollar"){
    data$Koers[i] <- "0.96"
  }else if (data$Valuta[i] == "Australische Dollar"){
    data$Koers[i] <- "0.66"
  }else if (data$Valuta[i] == "Braziliaanse Reaal"){
    data$Koers[i] <- "0.19"
  }else if (data$Valuta[i] == "VAE-dirham"){
    data$Koers[i] <- "0.26"
  }else if (data$Valuta[i] == "Indiase Roepie"){
    data$Koers[i] <- "0.012"
  }else if (data$Valuta[i] == "Indonesische Roepia"){
    data$Koers[i] <- "0.066"
  }else if (data$Valuta[i] == "Qatarese Rial"){
    data$Koers[i] <- "0.26"
  }else if (data$Valuta[i] == "Saudi Arabische Rial"){
    data$Koers[i] <- "0.26"
  }else if (data$Valuta[i] == "Thaise Baht"){
    data$Koers[i] <- "0.028"
  }else if (data$Valuta[i] == "Tunesische Dinar"){
    data$Koers[i] <- "0.31"
  }else if (data$Valuta[i] == "Zloty"){
    data$Koers[i] <- "0.21"
  }else{
    data$Koers[i] <- "No Koers found"
  }
}



#Transform Brand variable into neat Brand Transformed variable


for (i in seq(1,length(data$Brand))){
  if(grepl("starb", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Starbucks"
  }else if(grepl("starb", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Starbucks"
    
  }else if (grepl("L'OR", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "L'OR"
  }else if (grepl("LOR", data$Name[i], ignore.case=FALSE)==TRUE){
    data$Brand_Transformed[i] <- "L'OR"
  }else if (grepl("L'OR", data$Name[i], ignore.case=FALSE)==TRUE) {
    data$Brand_Transformed[i] <- "L'OR"
    
  }else if (grepl("Nescaf", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nescafe"
  }else if (grepl("Nescaf", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nescafe"
    
  }else if (grepl("lavaz", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i]<- "Lavazza"
  }else if (grepl("lavaz", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i]<- "Lavazza"
    
  }else if (grepl("illy", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i]<- "Illy"
  }else if (grepl("illy", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i]<- "Illy"
    
  }else if (grepl("Café Royal", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Royal"
  }else if (grepl("Café Royal", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Royal"
  }else if (grepl("Cafe Royal", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Royal"
  }else if (grepl("Cafe Royal", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Royal"
    
  }else if (grepl("nespr", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nespresso"
  }else if (grepl("nespr", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nespresso"
    
  }else if (grepl("Perla", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Perla"
  }else if (grepl("dunk", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Dunkin"
  }else if (grepl("folg", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Folgers Coffee"
  }else if (grepl("eight", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Eight O'Clock"
  }else if (grepl("AH", data$Brand[i], ignore.case=FALSE)==TRUE){
    data$Brand_Transformed[i] <- "AH Huismerk"
  }else if (grepl("maxw", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Maxwell House"
  }else if (grepl("senseo", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i]<- "Senseo"
  }else if (grepl("amazon brand", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Amazon Brand"
  }else if (grepl("AmazonFresh", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "AmazonFresh"
  }else if (grepl("Australian", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Australian"
  }else if (grepl("bust", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Bustelo"
  }else if (grepl("cameron", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cameron's Coffee"
  }else if (grepl("original donut", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "The Original Donut Shop"
  }else if (grepl("seattle", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Seattle's Best"
  }else if (grepl("gondol", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Caffe Gondoliere"
  }else if (grepl("gevalia", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Gevalia"
  }else if (grepl("green mountain", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Green Mountain"
  }else if (grepl("caribou", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Caribou Coffee"
  }else if (grepl("califia", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Califia Farms"
  }else if (grepl("cartel", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cartel Coffee"
  }else if (grepl("chamberlain", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Chamberlain Coffee"
  }else if (grepl("chameleon", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Chameleon"
  }else if (grepl("charleston", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Charleston Coffee"
  }else if (grepl("chock", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Chock Full"
  }else if (grepl("caribou", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Caribou Coffee"
  }else if (grepl("mate", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Coffee mate"
  }else if (grepl("caribou", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Caribou Coffee"
  }else if (grepl("food lion", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Food Lion Huismerk"
  }else if (grepl("hannaford", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Hannaford Huismerk"
  }else if (grepl("harris", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Harris Teeter Huismerk"
  }else if (grepl("delight", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "International Delight"
  }else if (grepl("new england", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "New England"
  }else if (all(str_detect(data$Brand[i], regex(c("Jacob", "Nespresso"), ignore_case=TRUE)))==TRUE){
    data$Brand_Transformed[i] <- "Jacobs Nespresso"
  }else if (grepl("rosso caffe", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Rosso Caffe Nespresso"
  }else if (grepl("mothersky", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Mothersky"
  }else if (grepl("nespresso", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nespresso"
  }else if (grepl("colombe", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "La Colombe"
  }else if (grepl("kanis", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Kanis & Gunnink"
  }else if (grepl("little city", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Little City"
  }else if (grepl("horse", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Kicking Horse"
  }else if (grepl("kirkland", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Kirkland Signature"
  }else if (grepl("kauai", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Kauai Coffee"
  }else if (grepl("fairtrade", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Fairtrade Original"
  }else if (grepl("Levista", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Levista"
  }else if (grepl("Colombian Brew Coffee", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Colombian Brew COffee"
  }else if (grepl("THIRD WAVE", data$Brand[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Third Wave Coffee'
  }else if (grepl("Bean song", data$Brand[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Bean Song'
  }else if (grepl("Bean Good", data$Brand[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Bean Good'
  }else if (grepl("sleepy owl", data$Brand[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Sleepy Owl'
  }else if (grepl("Bean song", data$Name[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Bean Song'
  }else if (grepl("Sleepy Owl", data$Name[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Sleepy Owl'
  }else if (grepl("Bean Good", data$Name[i],ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Bean Good'
  }else if (grepl("Pilao", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Pilao'
  }else if (grepl("Pilao", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- 'Pilao'
  }else if (grepl("Coracoes", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- " 3 Coracoes"
  }else if (grepl("santa clara", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "santa clara"
  }else if (grepl("Coracoes", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- " 3 Coracoes"
  }else if (grepl("CORACOES", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- " 3 Coracoes"
  }else if (grepl("top chef", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- " Top Chef"
  }else if (grepl("tres", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- " Tres"
  }else if (grepl("melitta", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Melitta"
  }else if (grepl("Gusto", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Nescafe"
  }else if (grepl("BRASILEIRO", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Cafe Brasileiro"
  }else if (grepl("pepper", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Dr. Pepper"
  }else if (grepl("the frozen bean", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "The Frozen Bean"
  }else if (grepl("Wicked Joe Coffee", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Wicked Joe Coffee"
  }else if (grepl("vitacup", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Vitacup"
  }else if (grepl("red barn", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Red Barn"
  }else if (grepl("kitu", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Kitu Super Coffee"
  }else if (grepl("Katahdin", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Katahdin"
  }else if (grepl("stok cold", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Stok"
  }else if (grepl("Vittoria", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Vittoria"
  }else if (grepl("Moccona", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Moccona Coffee"
  }else if (grepl("grinders", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Grinders Coffee"
  }else if (grepl("campos", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Campos"
  }else if (grepl("365 by", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "365 by Whole Foods Market"
  }else if (grepl("stok cold", data$Name[i], ignore.case=TRUE)==TRUE){
    data$Brand_Transformed[i] <- "Stok"
  }else if (grepl("coava", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Coava Coffee"
  }else if (grepl("coca-cola", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Coca-Cola"
  }else if (grepl("coca cola", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Coca-Cola"
  }else if (grepl("coke", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Coca-Cola"
  }else if (grepl("expressi", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Expressi"
  }else if (grepl("Death Wish", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Death Wish Coffee"
  }else if (all(str_detect(data$Name[i], regex(c("mc", "cafe"), ignore_case=T))==TRUE)){
    data$Brand_Transformed[i] <- "McCafe"
  }else if (grepl("Continental", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Continental"
  }else if (grepl("Continental", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Continental"
  }else if (grepl("segafredo", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Segafredo"
  }else if (grepl("simon", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Simon Levelt"
  }else if (grepl("TGL", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "TGL Co."
  }else if (grepl("davidoff", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Davidoff"
  }else if (grepl("davidoff", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Davidoff"
  }else if (grepl("krispy", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Krispy Kreme"
  }else if (grepl("taste of insp", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Taste of Inspirations"
  }else if (grepl("Victor", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Victor Allen"
  }else if (grepl("will &", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Will & Co"
  }else if (grepl("sacred", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Sacred Ground"
  }else if (grepl("timms", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Robert Timms"
  }else if (grepl("sacred", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Sacred Ground"
  }else if (grepl("Riseup", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Riseup"
  }else if (grepl("Riseup", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Riseup"
  }else if (grepl("Newman", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Newman's Own"
  }else if (grepl("cotha", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Cotha's Coffee"
  }else if (grepl("cotha", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Cotha's Coffee"
  }else if (grepl("sunbean", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Sunbean"
  }else if (grepl("Sunbean", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Sunbean"
  }else if (grepl("mayorga", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Mayorga"
  }else if (grepl("mayorga", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Mayorga"
  }else if (grepl("mother earth", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Mother Earth"
  }else if (grepl("super coffee", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Super Coffee"
  }else if (grepl("macro", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Macro"
  }else if (grepl("leo", data$Brand[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Leo"
  }else if (grepl("woolworth", data$Name[i], ignore.case=TRUE)==TRUE) {
    data$Brand_Transformed[i] <- "Woolworth PL"
  }else{
    data$Brand_Transformed[i] <- "Nothing"
  }
}



#Create Subbrand Variable 


for (i in seq(1, length(data$Brand))){
  if (all(str_detect(data$Brand_Transformed[i], regex(c("Starbucks"), ignore_case=T)))==TRUE){
      if (all(str_detect(data$Name[i],regex(c("CAPSULA"), ignore_case=F)))==TRUE){
        data$Subbrand[i] <- "Starbucks for Nespresso"
      }else if (all(str_detect(data$Name[i],regex(c("nespresso"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks for Nespresso"
      }else if (all(str_detect(data$Name[i], regex(c("pike"),ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Pike Place"
      }else if (all(str_detect(data$Name[i],regex(c("verona"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Verona"
      }else if (all(str_detect(data$Name[i],regex(c("blend", "breakfast"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Breakfast Blend"
      }else if (all(str_detect(data$Name[i],regex(c("Decaf"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Decaf"
      }else if (all(str_detect(data$Name[i],regex(c("House"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks House Blend"
      }else if (all(str_detect(data$Name[i],regex(c("shot", "double"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Shots Double"
      }else if (all(str_detect(data$Name[i],regex(c("shot", "triple"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Shots Triple"
      }else if (all(str_detect(data$Name[i],regex(c("veranda"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Veranda"
      }else if (all(str_detect(data$Name[i],regex(c("Italian"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Italian Roast"
      }else if (all(str_detect(data$Name[i],regex(c("mbia"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Columbia Roast"
      }else if (all(str_detect(data$Name[i],regex(c("morning","joe"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Morning Joe"
      }else if (all(str_detect(data$Name[i],regex(c("sumatra"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Sumatra"
      }else if (all(str_detect(data$Name[i],regex(c("french"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks French Roast"
      }else if (all(str_detect(data$Name[i],regex(c("nitro"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Nitro"
      }else if (all(str_detect(data$Name[i],regex(c("220"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks 220ml"
      }else if (all(str_detect(data$Volume[i],regex(c("220"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks 220ml"
      }else if (all(str_detect(data$Name[i],regex(c("Iced"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Iced"
      }else if (all(str_detect(data$Name[i],regex(c("Dolce"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Dolce Gusto Cups"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "frapp"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Frappuccino"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "macchi"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Macchiato"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "vanil"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Frappuccino"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "mocha"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Frappuccino"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "caffe", "latte"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Caffe Latte"
      }else if (all(str_detect(data$Name[i],regex(c("chilled", "cappu"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Cappuccino"
      }else if (all(str_detect(data$Name[i],regex(c("chilled"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Chilled Others"
      }else if (all(str_detect(data$Name[i],regex(c("espresso"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Espresso"
      }else if (all(str_detect(data$Name[i],regex(c("premium"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Premium"
      }else if (all(str_detect(data$Name[i],regex(c("frapp"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Frappuccino"
      }else if (all(str_detect(data$Name[i],regex(c("caramel"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Caramel"
      }else if (all(str_detect(data$Name[i],regex(c("flavored"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Flavored"
      }else if (all(str_detect(data$Name[i],regex(c("vanilla"), ignore_case=T)))==TRUE){
        data$Subbrand[i] <- "Starbucks Vanilla"
      }else{
        data$Subbrand[i] <- "Starbucks Others"
      }
    
    
    
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Nescafe"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("gold", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "entkof"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "cappuccino"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Cappuccino"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "macchiato"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Macchiato"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "wiener"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Wiener Melange"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "latte"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Latte"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "flat"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Flat White"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "mocha"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold Mocha"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 200g"
    }else if (all(str_detect(data$Name[i], regex(c("gold"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 200g"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 100g"
    }else if (all(str_detect(data$Name[i], regex(c("gold"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 100g"
    }else if (all(str_detect(data$Name[i], regex(c("gold", "50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 50g"
    }else if (all(str_detect(data$Name[i], regex(c("gold"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold 50g"
    }else if (all(str_detect(data$Name[i], regex(c("gold"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Gold"
    }else if (all(str_detect(data$Name[i],regex(c("taster"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Taster's Choice"
    }else if (all(str_detect(data$Name[i],regex(c("farmer"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Farmer"
    }else if (all(str_detect(data$Name[i],regex(c("rosso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Rosso"
    }else if (all(str_detect(data$Name[i],regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Decaf"
    }else if (all(str_detect(data$Name[i],regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("clasic", "200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 200g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 200g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic", "100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 100g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 100g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic", "50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 50g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 50g"
    }else if (all(str_detect(data$Name[i], regex(c("clasic"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico"
    }else if (all(str_detect(data$Name[i], regex(c("classic", "200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 200g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 200g"
    }else if (all(str_detect(data$Name[i], regex(c("classic", "100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 100g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 100g"
    }else if (all(str_detect(data$Name[i], regex(c("classic", "50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 50g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("50"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico 50g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Clasico"
    }else if (all(str_detect(data$Name[i],regex(c("gusto"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Dolce Gusto"
    }else if (all(str_detect(data$Name[i],regex(c("dolce"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe Dolce Gusto"
    }else if (str_detect(data$Name[i],regex(c("ice"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Iced Coffee"
    }else if (str_detect(data$Name[i],regex(c("ijs"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Iced Coffee"
    }else if (str_detect(data$Name[i],regex(c("eis"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Iced Coffee"
    }else if (all(str_detect(data$Name[i], regex(c("1", "3", "in"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe 3 in 1"
    }else if (all(str_detect(data$Name[i], regex(c("1", "2", "in"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nescafe 2 in 1"
    }else if (str_detect(data$Name[i],regex(c("rtd"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Ready to Drink"
    }else if (str_detect(data$Name[i],regex(c("ready"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Ready to Drink"
    }else if (str_detect(data$Name[i],regex(c("mocca"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Moccha"
    }else if (str_detect(data$Name[i],regex(c("moccha"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Moccha"
    }else if (str_detect(data$Name[i],regex(c("mocha"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Moccha"
    }else if (str_detect(data$Name[i],regex(c("sunrise"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Sunrise"
    }else if (str_detect(data$Name[i],regex(c("latte"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Latte"
    }else if (str_detect(data$Name[i],regex(c("red mug"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Red Mug"
    }else if (str_detect(data$Name[i],regex(c("arabi"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Arabiana"
    }else if (str_detect(data$Name[i],regex(c("red cup"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Red Cup"
    }else if (str_detect(data$Name[i],regex(c("fine blend"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Fine Blend"
    }else if (str_detect(data$Name[i],regex(c("blend"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Blend"
    }else if (str_detect(data$Name[i],regex(c("americano"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Americano"
    }else if (str_detect(data$Name[i],regex(c("azera"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Nescafe Azera"
    }else {
      data$Subbrand[i] <- "Nescafe Others"
    }
    
    
    
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Lavazza"), ignore_case=T)))==TRUE){
    if(all(str_detect(data$Name[i], regex(c("16"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Capsules 16Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("16"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Capsules 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("crema", "aroma"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Crema e Aroma"
    }else if (all(str_detect(data$Name[i], regex(c("Barist"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Barista"
    }else if (all(str_detect(data$Name[i], regex(c("Nespresso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Capsules 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("qualit", "oro"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Qualita Oro"
    }else if (all(str_detect(data$Name[i], regex(c("quali", "ros"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Qualita Rossa"
    }else if (all(str_detect(data$Name[i], regex(c("lavazza oro"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Qualita Oro"
    }else if (all(str_detect(data$Name[i], regex(c("lavazza ros"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Qualita Rossa"
    }else if (all(str_detect(data$Name[i], regex(c("crema", "gust"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Crema e Gusto"
    }else if (all(str_detect(data$Name[i], regex(c("1000"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 1000g"
    }else if (all(str_detect(data$Volume[i], regex(c("1000"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 1000g"
    }else if (all(str_detect(data$Volume[i], regex(c("100%"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 100%"
    }else if (all(str_detect(data$Name[i], regex(c("100%"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 100%"
    }else if (all(str_detect(data$Name[i], regex(c("100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 100Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Capsules 10Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Capsules 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso", "250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Espresso 250g"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Espresso 250g"
    }else if (all(str_detect(data$Name[i], regex(c("95"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Instant Coffee"
    }else if (all(str_detect(data$Volume[i], regex(c("95"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza Instant Coffee"
    }else if (all(str_detect(data$Name[i], regex(c("500"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 500g"
    }else if (all(str_detect(data$Volume[i], regex(c("500"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 500g"
    }else if (all(str_detect(data$Volume[i], regex(c("12x"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 12x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 250g"
    }else if (all(str_detect(data$Name[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 250g"
    }else if (all(str_detect(data$Name[i], regex(c("6x"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 6x1kg"
    }else if (all(str_detect(data$Name[i], regex(c("kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 1000g"
    }else if (all(str_detect(data$Volume[i], regex(c("kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Lavazza 1000g"
    }else{
      data$Subbrand[i] <- "Lavazza Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("L'OR"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i],regex(c("140"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Others"
    }else if (all(str_detect(data$Volume[i],regex(c("40"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 40 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("140"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Others"
    }else if (all(str_detect(data$Volume[i],regex(c("1000"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 1kg"
    }else if (all(str_detect(data$Volume[i],regex(c("2X250"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 2x250g"
    }else if (all(str_detect(data$Volume[i],regex(c("100"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 100 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("100"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 100 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("20"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 20 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("20"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 20 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("104"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 20 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("104"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 20 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("10x 10"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 100 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("10"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 10 Ct"
    }else if (all(str_detect(data$Name[i],regex(c("10"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("52"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("52"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 10 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("500"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 500g"
    }else if (all(str_detect(data$Name[i], regex(c("500"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 500g"
    }else if (all(str_detect(data$Name[i], regex(c("Barista"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Barista 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("Lungo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("1 kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 1kg"
    }else if (all(str_detect(data$Volume[i], regex(c("1 kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 1kg"
    }else if (all(str_detect(data$Volume[i], regex(c("1kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 1kg"
    }else if (all(str_detect(data$Name[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 250g"
    }else if (all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 250g"
    }else if (all(str_detect(data$Name[i],regex(c("30"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 30"
    }else if (all(str_detect(data$Name[i],regex(c("50"),ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or 50"
    }else if (all(str_detect(data$Name[i], regex(c("Cápsulas Para Nespresso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "L'Or Espresso 10 Ct"
    }else{
      data$Subbrand[i]<- "L'Or Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("illy"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Whole bean"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Whole Bean"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Espresso Cups"
    }else if (all(str_detect(data$Name[i], regex(c("cups"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Espresso Cups"
    }else if (all(str_detect(data$Name[i], regex(c("Espresso", "250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Espresso 250g"
    }else if (all(str_detect(data$Name[i], regex(c("Espresso"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Espresso 250g"
    }else if (all(str_detect(data$Name[i], regex(c("Espresso"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("0.25"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Espresso 250g"
    }else if (all(str_detect(data$Name[i], regex(c("dark roast"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Dark Roast"
    }else if (all(str_detect(data$Name[i], regex(c("classic", "250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Classico 250g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Classico 250g"
    }else if (all(str_detect(data$Name[i], regex(c("classic", "8.8"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Classico 250g"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("8.8"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Classico 250g"
    }else if (all(str_detect(data$Name[i], regex(c("filter", "250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Coffee Filter 250g"
    }else if (all(str_detect(data$Name[i], regex(c("filter"), ignore_case=T))) && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Coffee Filter 250g"
    }else if (all(str_detect(data$Name[i], regex(c("guate"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Guatemala"
    }else if (all(str_detect(data$Name[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Others 250g"
    }else if (all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Others 250g"
    }else if (all(str_detect(data$Volume[i], regex(c("140"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Cups 21s"
    }else if (all(str_detect(data$Name[i], regex(c("140"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Illy Cups 21s"
    }else {
      data$Subbrand[i] <- "Illy Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Nespresso"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("napoli"), ignore_case=T))) ==TRUE){
      data$Subbrand[i] <- "Nespresso Original Napoli"
    }else if (all(str_detect(data$Name[i], regex(c("Palermo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Palermo"
    }else if (all(str_detect(data$Name[i], regex(c("venezia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Venezia"
    }else if (all(str_detect(data$Name[i], regex(c("Roma"), ignore_case=F)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Roma"
    }else if (all(str_detect(data$Name[i], regex(c("Genova"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Genova"
    }else if (all(str_detect(data$Name[i], regex(c("Capriccio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Capriccio"
    }else if (all(str_detect(data$Name[i], regex(c("Volluto"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Volluto"
    }else if (all(str_detect(data$Name[i], regex(c("Cosi"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Cosi"
    }else if (all(str_detect(data$Name[i], regex(c("Shang"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Shanghai Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("Aires"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Buenos Aires"
    }else if (all(str_detect(data$Name[i], regex(c("Envivo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Cape Town Envivo Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("stock"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Stockholm Fortissio Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("Vienna"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Vienna Linizio Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("Vivalt"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Vivalto Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("ristretto", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Italiano Ristretto Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("ristretto", "italia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Italiano Ristretto"
    }else if (all(str_detect(data$Name[i], regex(c("firenz", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("arpeg", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("arpeg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio"
    }else if (all(str_detect(data$Name[i], regex(c("Firenz"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio"
    }else if (all(str_detect(data$Name[i], regex(c("Firenz"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio"
    }else if (all(str_detect(data$Name[i], regex(c("vollut", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Volluto Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("Firenz"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Firenze Arpeggio"
    }else if (all(str_detect(data$Name[i], regex(c("india"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original India"
    }else if (all(str_detect(data$Name[i], regex(c("indo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Indonesia"
    }else if (all(str_detect(data$Name[i], regex(c("colo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Colombia"
    }else if (all(str_detect(data$Name[i], regex(c("nica"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Nicaragua"
    }else if (all(str_detect(data$Name[i], regex(c("ethi"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Ethiopia"
    }else if (all(str_detect(data$Name[i], regex(c("me bru"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Creme Brulee"
    }else if (all(str_detect(data$Name[i], regex(c("vanill", "clair"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Vanilla Eclair"
    }else if (all(str_detect(data$Name[i], regex(c("truff"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Cocoa Truffle"
    }else if (all(str_detect(data$Name[i], regex(c("corto"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Corto"
    }else if (all(str_detect(data$Name[i], regex(c("scuro"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Scuro"
    }else if (all(str_detect(data$Name[i], regex(c("chiaro"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Original Chiaro"
    }else if (all(str_detect(data$Name[i], regex(c("diavo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Diavolitto"
    }else if (all(str_detect(data$Name[i], regex(c("altissio", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Altissio Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("altissio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Altissio"
    }else if (all(str_detect(data$Name[i], regex(c("orafio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Orafio"
    }else if (all(str_detect(data$Name[i], regex(c("toccanto"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Toccanto"
    }else if (all(str_detect(data$Name[i], regex(c("voltesso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Voltesso"
    }else if (all(str_detect(data$Name[i], regex(c("scuro"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Scuro"
    }else if (all(str_detect(data$Name[i], regex(c("dolce"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Dolce"
    }else if (all(str_detect(data$Name[i], regex(c("bianco"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Bianco"
    }else if (all(str_detect(data$Name[i], regex(c("peru"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Peru Organic"
    }else if (all(str_detect(data$Name[i], regex(c("fortado", "decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Fortado Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("fortado"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Fortado"
    }else if (all(str_detect(data$Name[i], regex(c("arondio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Arondio"
    }else if (all(str_detect(data$Name[i], regex(c("inizio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Inizio"
    }else if (all(str_detect(data$Name[i], regex(c("vertuo", "intenso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Intenso"
    }else if (all(str_detect(data$Name[i], regex(c("stormio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Stormio"
    }else if (all(str_detect(data$Name[i], regex(c("odacio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Odacio"
    }else if (all(str_detect(data$Name[i], regex(c("melozio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Melozio"
    }else if (all(str_detect(data$Name[i], regex(c("Soleilio"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Soleilio"
    }else if (all(str_detect(data$Name[i], regex(c("half"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Half Caffeinato"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("Rica"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Costa Rica"
    }else if (all(str_detect(data$Name[i], regex(c("mexi"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Mexico"
    }else if (all(str_detect(data$Name[i], regex(c("pour"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Pour-Over"
    }else if (all(str_detect(data$Name[i], regex(c("cara", "coo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Caramel Cookie"
    }else if (all(str_detect(data$Name[i], regex(c("muffin"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Hazalino Muffin"
    }else if (all(str_detect(data$Name[i], regex(c("cust"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Nespresso Vertuo Custard Pie"
    }else{
      data$Subbrand[i] <- "Nespresso Compatibles"
    }
    
    
    
    
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Cafe Royal"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Caramel"
    }else if (all(str_detect(data$Name[i], regex(c("dark choco"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Dark Chocolate"
    }else if (all(str_detect(data$Name[i], regex(c("espresso forte"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Espresso Forte"
    }else if (all(str_detect(data$Name[i], regex(c("hazel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("hasel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("lungo forte"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Lungo Forte"
    }else if (all(str_detect(data$Name[i], regex(c("vanill"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Vanilla"
    }else if (all(str_detect(data$Name[i], regex(c("lungo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Lungo"
    }else if (all(str_detect(data$Name[i], regex(c("ground"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Ground Coffee"
    }else if (all(str_detect(data$Name[i], regex(c("presso"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cafe Royal Espresso"
    }else{
      data$Subbrand[i] <- "Cafe Royal Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Maxwell House"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Maxwell House Colombia"
    }else if (all(str_detect(data$Name[i], regex(c("house blend"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Maxwell House Blend"
    }else if (str_detect(data$Name[i],regex(c("breakfast"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Breakfast Blend"
    }else if (str_detect(data$Name[i],regex(c("originial"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Original"
    }else if (str_detect(data$Name[i],regex(c("international"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House International"
    }else if (str_detect(data$Name[i],regex(c("Master"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Master Blend"
    }else if (str_detect(data$Name[i],regex(c("french"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House French Roast"
    }else if (all(str_detect(data$Name[i],regex(c("half", "caff"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Maxwell House Half Caffeine"
    }else if (str_detect(data$Name[i],regex(c("vanilla"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Vanilla"
    }else if (str_detect(data$Name[i],regex(c("bold"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Smooth Bold"
    }else if (str_detect(data$Name[i],regex(c("Gourmet"), ignore_case=T))==TRUE){
      data$Subbrand[i] <- "Maxwell House Gourmet"
    }else{
      data$Subbrand[i]<- "Maxwell House Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Peet's Coffee"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("house"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee House Blend"
    }else if (all(str_detect(data$Name[i], regex(c("major"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Major Dickason's"
    }else if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Colombia"
    }else if (all(str_detect(data$Name[i], regex(c("big bang"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Big Bang"
    }else if (all(str_detect(data$Name[i], regex(c("brazil"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Brazil"
    }else if (all(str_detect(data$Name[i], regex(c("domingo"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Domingo"
    }else if (all(str_detect(data$Name[i], regex(c("holiday"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Holiday"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Caramel Brulee"
    }else if (all(str_detect(data$Name[i], regex(c("cinnamon"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Vanilla Cinnamon"
    }else if (all(str_detect(data$Name[i], regex(c("sumatra"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Sumatra"
    }else if (all(str_detect(data$Name[i], regex(c("tierra"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Tierra"
    }else if (all(str_detect(data$Name[i], regex(c("Hazelnut"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("french"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Peet's Coffee French Roast"
    }else{
      data$Subbrand[i]<- "Peet's Coffee Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Dunkin"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("iced"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Iced"
    }else if (all(str_detect(data$Name[i], regex(c("Original"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Original"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Colombian"
    }else if (all(str_detect(data$Name[i], regex(c("turtle"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Turtle Love"
    }else if (all(str_detect(data$Name[i], regex(c("hazelnut"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("french vanilla"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin French Vanilla"
    }else if (all(str_detect(data$Name[i], regex(c("extra dark"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Extra Dark"
    }else if (all(str_detect(data$Name[i], regex(c("dark"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Dark"
    }else if (all(str_detect(data$Name[i], regex(c("crazy"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Caramel Me Crazy"
    }else if (all(str_detect(data$Name[i], regex(c("cold"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Cold Brew"
    }else if (all(str_detect(data$Name[i], regex(c("Dunkin' Coffee"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Dunkin Coffee Food Lion"
    }else{
      data$Subbrand[i] <- "Dunkin Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Folgers Coffee"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("half"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers 1/2 Caff"
    }else if (all(str_detect(data$Name[i], regex(c("1/2"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers 1/2 Caff"
    }else if (all(str_detect(data$Name[i], regex(c("black silk"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Black Silk"
    }else if (all(str_detect(data$Name[i], regex(c("gourmet"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Gourmet"
    }else if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Colombia"
    }else if (all(str_detect(data$Name[i], regex(c("breakfast"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Breakfast Blend"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("classic roast"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Classic Roast"
    }else if (all(str_detect(data$Name[i], regex(c("classic"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Classic"
    }else if (all(str_detect(data$Name[i], regex(c("hazelnut"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("house"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers House Blend"
    }else if (all(str_detect(data$Name[i], regex(c("Coffee"), ignore_case=T)))==TRUE && all(str_detect(data$Retailer[i], regex("Food_Lion",ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Folgers Coffee Food Lion"
    }else{
      data$Subbrand[i] <- "Folgers Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Green Mountain"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("nantucket"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Nantucket Blend"
    }else if (all(str_detect(data$Name[i], regex(c("breakfast"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Breakfast Blend"
    }else if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Colombia Select"
    }else if (all(str_detect(data$Name[i], regex(c("magic"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Dark Magic"
    }else if (all(str_detect(data$Name[i], regex(c("french vanilla"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain French Vanilla"
    }else if (all(str_detect(data$Name[i], regex(c("french"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain French Roast"
    }else if (all(str_detect(data$Name[i], regex(c("hazelnut"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Hazelnut"
    }else if (all(str_detect(data$Name[i], regex(c("half-caff"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Half-Caff"
    }else if (all(str_detect(data$Name[i], regex(c("half caff"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Half-Caff"
    }else if (all(str_detect(data$Name[i], regex(c("brew"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Brew Over"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Green Mountain Caramel Vanilla"
    }else{
      data$Subbrand[i]<- "Green Mountain Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Gevalia"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("mbia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia Colombia"
    }else if (all(str_detect(data$Name[i], regex(c("traditional"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia Traditional"
    }else if (all(str_detect(data$Name[i], regex(c("brew"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia Brew Over"
    }else if (all(str_detect(data$Name[i], regex(c("french"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia French Roast"
    }else if (all(str_detect(data$Name[i], regex(c("house"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia House Blend"
    }else if (all(str_detect(data$Name[i], regex(c("signature"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia Signature Blend"
    }else if (all(str_detect(data$Name[i], regex(c("royal"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Gevalia Dark Royal"
    }else {
      data$Subbrand[i] <- "Gevalia Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("New England"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Cups 32 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("11"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Coffee 11 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("22"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Coffee 22 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Coffee 10 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "New England Coffee 12 Oz"
    }else{
      data$Subbrand[i]<- "New England Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Caribou Coffee"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("mahogany"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caribou Coffee Mahogany"
    }else if (all(str_detect(data$Name[i], regex(c("daybreak"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caribou Coffee Daybreak Morning Blend"
    }else if (all(str_detect(data$Name[i], regex(c("lakeshore"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caribou Coffee Lakeshore"
    }else if (all(str_detect(data$Name[i], regex(c("blend"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caribou Coffee Caribou Blend"
    }else {
      data$Subbrand[i] <- "Caribou Coffee Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Kirkland Signature"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("2-pack"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Kirkland Signature 2-Packs"
    }else{
      data$Subbrand[i] <- "Kirkland Signature Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Caffe Gondoliere"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("gusto"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Dolce Gusto Cups 16 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("36"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Pads 36 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("22"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Nespresso Cups 22 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("snf"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Snelfiltermaling"
    }else if (all(str_detect(data$Name[i], regex(c("snelfilter"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Snelfiltermaling"
    }else if (all(str_detect(data$Volume[i], regex(c("kg"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Beans"
    }else if (all(str_detect(data$Name[i], regex(c("oplos"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Instant Coffee"
    }else if (all(str_detect(data$Name[i], regex(c("tradition"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Caffe Gondoliere Ground Coffee"
    }else{
      data$Subbrand[i] <- "Caffe Gondoliere Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Cameron's Coffee"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Hawai"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cameron's Coffee Hawaiian Blend"
    }else if (all(str_detect(data$Name[i], regex(c("jamaica"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cameron's Coffee Jamaica Blend"
    }else if (all(str_detect(data$Name[i], regex(c("french"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cameron's Coffee French Roast"
    }else if (all(str_detect(data$Name[i], regex(c("toast"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Cameron's Coffee Toasted"
    }else{
      data$Subbrand[i] <- "Cameron's Coffee Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("Chameleon"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("cold brew"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Chameleon Cold Brew"
    }else if (all(str_detect(data$Name[i], regex(c("organic"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Chameleon Organic"
    }else{
      data$Subbrand[i] <- "Chameleon Others"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("kauai coffe"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("garden isle"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Kauai Coffee Garden Isle"
    }else if (all(str_detect(data$Name[i], regex(c("coconut caramel"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Kauai Coffee Coconut Caramel"
    }else if (all(str_detect(data$Name[i], regex(c("macadamia"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Kauai Coffee Vanilla Macadamia Nut"
    }else if (all(str_detect(data$Name[i], regex(c("na pali"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Kauai Coffee Na Pali"
    }else {
      data$Subbrand[i] <- "Kauai Coffee"
    }
  }else if (all(str_detect(data$Brand_Transformed[i], regex(c("senseo"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("36"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Senseo Coffeepads 36 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("8"), ignore_case=T)))==TRUE){
      data$Subbrand[i] <- "Senseo Coffeepads 8 Ct"
    }else{
      data$Subbrand[i]<- 'Senseo Others'
    }
  }else{
    data$Subbrand[i] <- data$Brand_Transformed[i]
  }
}



for (i in seq(1, length(data$Brand))){
if (all(str_detect(data$Brand_Transformed[i], regex(c("Cafe Royal"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Caramel"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Caramel 10 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Caramel 10 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Dark Chocolate"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Dark Chocolate 10 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Dark Chocolate 10 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Espresso"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Espresso 10 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Espresso 18 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Espresso Forte"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Espresso Forte 10 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Espresso Forte 10 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Espresso Forte 18 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Hazelnut"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Hazelnut 10 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Hazelnut 10 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Lungo"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo 18 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo 18 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo Decaf 10 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo 10 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo 10 Ct" 
    }else {
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Lungo Forte"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo Forte 18 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo Forte 18 Ct" 
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo Forte 10 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Lungo Forte 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Cafe Royal Vanilla"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Vanilla 10 Ct" 
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Cafe Royal Vanilla 10 Ct" 
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else{
    data$Productname[i] <- paste(data$Name[i], data$Volume[i])
  }
}else if (all(str_detect(data$Brand_Transformed[i], regex(c("Starbucks"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Breakfast Blend"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend Coffee 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend K-Cup Pods 32 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Breakfast Blend Coffee 18 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Caramel"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Caramel K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Caramel K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Caramel K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("127"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Caramel K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("28"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Caramel Coffee Creamer 28 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Chilled Caffe Latte"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caffe Latte 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caffe Latte 220ml"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
    
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Chilled Cappuccino"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Cappuccino 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Cappuccino 220ml"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Chilled Frappuccino"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("vanil", "220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanil"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanil"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanil", "250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanil", "9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("Vanilla"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanil", "13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("Vanilla"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Vanilla 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("220"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Frappuccino Mocha 13.7 fl oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Chilled Macchiato"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("caramel", "220"))))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("220"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato 220ml"
    }else if (all(str_detect(data$Name[i], regex(c("caramel", "caps"))))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato Capsules"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("127"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato Capsules"
    }else if (all(str_detect(data$Name[i], regex(c("caramel", "330"))))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato 330ml"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i],regex(c("330"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Chilled Caramel Macchiato 330ml"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
    
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Decaf"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"))))==TRUE){
      data$Productname[i] <- "Starbucks Decaf Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Decaf Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Decaf K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("72"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Decaf K-Cup Pods 72 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Decaf K-Cup Pods 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
    
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Columbia Roast"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Coffee 250g"
    }else if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Dolce Gusto 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("57"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10", "Oz"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Coffee 10 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("10", "Oz"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Coffee 10 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Columbia Roast Coffee 12 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Dolce Gusto Cups"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("caramel macchiato"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caramel Macchiato 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("macchi", "127"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caramel Macchiato 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("cappuccino"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Cappuccino 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("cappucino"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Cappuccino 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("cuppoccino"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Cappuccino 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("grande"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Grande 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("au lait"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caffe Latte 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("caffe latte"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caffe Latte 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("caffÃ¨ latte"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caffe Latte 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("cinnamon"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Cinnamon Dolce K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("madag"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Madagaskar Vanilla 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("latte macchiato"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Latte Macchiato 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "12"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Blonde Espresso 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "48"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Blonde Espresso 48 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("toffee"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Toffee Nut 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso", "roast"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Espresso Roast 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("caffè", "latte"), ignore_case=TRUE)))==TRUE){
      data$Productname[i] <- "Starbucks Dolce Gusto Caffe Latte 12 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Espresso"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("blonde", "66"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde K-Cups 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("53"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "66"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde K-Cups 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("66"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso K-Cups 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "450"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde Coffee 450g"
    }else if (all(str_detect(data$Name[i], regex(c("blonde", "200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Blonde Coffee 200g"
    }else if (all(str_detect(data$Name[i], regex(c("66"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso K-Cups 12 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("sul", "12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso K-Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Ground Coffee 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Ground Coffee 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("450"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Coffee 450g"
    }else if (all(str_detect(data$Volume[i], regex(c("450"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Coffee 450g"
    }else if (all(str_detect(data$Name[i], regex(c("dark", "200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Dark Roast Coffee 200g"
    }else if (all(str_detect(data$Name[i], regex(c("57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso Roast Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("vanilla", "latte"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Espresso  Dark Roast Coffee 200g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks for Nespresso"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("house blend"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso House Blend 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("house blend"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso House Blend 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("house blend"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso House Blend 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("houseblend"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso House Blend 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("houseblend"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso House Blend 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Name[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Name[i], regex(c("53"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("blonde roast espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("12er"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Blonde Espresso 10 Ct 12-Pack"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Decaf 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Decaf 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Decaf 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("decaf"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Decaf 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("sumatra"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Sumatra 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("sumatra"), ignore_case=T)))==TRUE && all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Sumatra 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("sumatra"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Sumatra 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("sumatra"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Sumatra 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("italian"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Italian 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("italian"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Italian 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("italian"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Italian 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("italian"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Italian 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("italian", "10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Italian 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("colomb"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Colombian 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("Colomb"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Colombian 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("Colomb"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Colombian 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("Colomb"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Colombian 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("pike place"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Pike Place 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("pike place"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Pike Place 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("pike place"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("40"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Pike Place 40 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("pike place"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("53"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Pike Place 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("verona"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Caffe Verona 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("verona"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("55"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Caffe Verona 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("verona"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Caffe Verona 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Roast 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Roast 18 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Roast 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("20"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks for Nespresso Espresso Roast 20 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Flavored"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Creme Brulee"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Creme Brulee K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("crème"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Creme Brulee K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("crême"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Creme Brulee K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("hazelnut"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Hazelnut K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Mocha K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("11"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Mocha Coffee 11 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Mocha K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("vanilla"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Flavored Vanilla K-Cup Pods 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Frappuccino"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("caramel", "250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("caramel", "9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("caramel", "13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Caramel 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanill", "250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanill"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanill", "9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanill"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanill", "13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanill"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Vanilla 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("9.5"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 9.5 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha", "13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("mocha"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("13.7"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Mocha 13.7 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("coffee", "250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Coffee 250ml"
    }else if (all(str_detect(data$Name[i], regex(c("coffee"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Frappuccino Coffee 250ml"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks French Roast"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE && str_detect(data$Name[i], regex(c("whole"), ignore_case=T))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Whole Bean Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE && str_detect(data$Name[i], regex(c("whole"), ignore_case=T))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Whole Bean Coffee 18 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Coffee 18 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("28"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Coffee 28 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Name[i],regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast K-Cup Pods 10 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast K-Cup Pods 32 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("44"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast K-Cup Pods 44 Ct"
    }else if (all(str_detect(data$Name[i],regex(c("20"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Coffee 20 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("20"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast Coffee 20 Oz"
    }else if (all(str_detect(data$Name[i],regex(c("72"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks French Roast K-Cup Pods 72 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks House Blend"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Dolce gusto"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Dolce Gusto Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("102"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Dolce Gusto Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i],regex(c("57"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i],regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend Coffee 200g"
    }else if (all(str_detect(data$Name[i],regex(c("k-cup"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks House Blend K-Cups 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Italian Roast"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast Coffee 18 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("Nespresso"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("56"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Italian Roast Nespresso Cups 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Morning Joe"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Morning Joe Blend 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Morning Joe Blend 12 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i],data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Nitro"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Vanilla"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Nitro Drink Vanilla 9.6 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("unsweet"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Nitro Drink Unsweetened 9.6 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Pike Place"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 200g"
    }else if (all(str_detect(data$Volume[i], regex(c("450"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 450g"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 18 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("decaf", "12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee Decaf 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE && (all(str_detect(data$Name[i], regex(c("32"), ignore_case=T))))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 32 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE && (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T))))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("kcup"), ignore_case=T)))==TRUE && (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T))))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup", "32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 32 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE && (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T))))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("44"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 44 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 32 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("20"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 20 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("28"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 28 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("53"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Nespresso cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("72"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place K-Cups 72 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Coffee 250g"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Pike Place Nespresso cups 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Shots Double"))))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("sugar", "200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double NO Sugar Added 200ml"
    }else if (all(str_detect(data$Name[i], regex(c("sugar"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double No Sugar Added 200ml"
    }else if (all(str_detect(data$Name[i], regex(c("suiker", "200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double NO Sugar Added 200ml"
    }else if (all(str_detect(data$Name[i], regex(c("suiker"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double No Sugar Added 200ml"
    }else if (all(str_detect(data$Name[i], regex(c("vanilla", "15"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double Vanilla 15 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("vanilla"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("15"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double Vanilla 15 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("white chocolate", "15"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double White Chocolate 15 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("white chocolate"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("15"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double White Chocolate 15 fl oz"
    }else if (all(str_detect(data$Name[i], regex(c("espresso", "200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double Espresso 200ml"
    }else if (all(str_detect(data$Name[i], regex(c("espresso"), ignore_case=T)))==TRUE && all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Shots Double Espresso 200ml"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Sumatra"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra Coffee 18 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra k-Cups 32 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra K-Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra K-Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("72"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Sumatra K-Cups 72 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Veranda"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("dolce gusto"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Dolce Gusto Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda K-Cups 32 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("12", "sul"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Dolce Gusto Cups 12 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Coffee 12 Oz"
    }else if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Coffee 18 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda K-Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda Coffee 200g"
    }else if (all(str_detect(data$Volume[i], regex(c("72"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda K-Cups 72 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("k-cup"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Veranda K-Cups 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks Verona"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("250"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 250g"
    }else if (all(str_detect(data$Volume[i], regex(c("55"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("12"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 12 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona K-Cups 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("10"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona K-Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("32"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona K-Cups 32 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("18"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 18 Oz"
    }else if (all(str_detect(data$Volume[i], regex(c("200"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 200g"
    }else if (all(str_detect(data$Volume[i], regex(c("55"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Nespresso Cups 10 Ct"
    }else if (all(str_detect(data$Volume[i], regex(c("28"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks Verona Coffee 28 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Starbucks 220ml"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("cappu"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Cappuccino"
    }else if (all(str_detect(data$Name[i], regex(c("choco"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Chocolate Mocha"
    }else if (all(str_detect(data$Name[i], regex(c("Coffee Latte"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Coffee Latte"
    }else if (all(str_detect(data$Name[i], regex(c("skinny"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Skinny Latte"
    }else if (all(str_detect(data$Name[i], regex(c("white"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Flat White"
    }else if (all(str_detect(data$Name[i], regex(c("latte"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Caffe Latte"
    }else if (all(str_detect(data$Name[i], regex(c("caramel"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Caramel Macchiato"
    }else if (all(str_detect(data$Name[i], regex(c("latte"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Caffe Latte"
    }else if (all(str_detect(data$Name[i], regex(c("hazel"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Hazelnut Macchiato"
    }else if (all(str_detect(data$Name[i], regex(c("vanill"), ignore_case=T)))==TRUE){
      data$Productname[i] <- "Starbucks 220ml Vanilla Bean"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else{
  data$Productname[i] <- paste(data$Name[i], data$Volume[i])
  }
  
}else if (all(str_detect(data$Brand_Transformed[i], regex(c("L'OR"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("L'Or Espresso 10 Ct"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("Estremo", "100"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "L'Or Espresso 100 Ct Estremo"
    }else if (all(str_detect(data$Name[i], regex(c("Estremo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Estremo"
    } else if (str_detect(data$Name[i], regex(c("sontuoso"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Sontuoso"
    }else if (str_detect(data$Name[i], regex(c("onyx"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Onyx"
    }else if (all(str_detect(data$Name[i], regex(c("ristretto", "decaf"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Ristretto Decaf"
    }else if (all(str_detect(data$Name[i], regex(c("ristretto", "voordeelpak"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "L'Or Espresso 20 Ct Ristretto"
    }else if (str_detect(data$Name[i], regex(c("ristretto"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Ristretto"
    }else if (str_detect(data$Name[i], regex(c("profondo"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Profondo"
    }else if (str_detect(data$Name[i], regex(c("mbia"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Colombia"
    }else if (str_detect(data$Name[i], regex(c("india"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct India"
    }else if (all(str_detect(data$Name[i], regex(c("supremo", "voordeelpak"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "L'Or Espresso 20 Ct Supremo"
    }else if (str_detect(data$Name[i], regex(c("supremo"),ignore_case=T))==TRUE){
      data$Productname[i] <- "L'Or Espresso 10 Ct Supremo"
    }else if (all(str_detect(data$Name[i], regex(c("bio", "7"),ignore_case=T)))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Bio, Intensity 7"
    }else if (all(str_detect(data$Name[i], regex(c("bio", "9"),ignore_case=T)))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Bio, Intensity 9"
    }else if (str_detect(data$Name[i], regex(c("guatemala"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Guatemala"
    }else if (str_detect(data$Name[i], regex(c("or absulo"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Or Absolu"
    }else if (str_detect(data$Name[i], regex(c("ultimo"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Ultimo"
    }else if (all(str_detect(data$Name[i], regex(c("forza", "10x"),ignore_case=T)))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Forza 10-Pack"
    }else if (str_detect(data$Name[i], regex(c("forza"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Forza"
    }else if (str_detect(data$Name[i], regex(c("lungo"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Lungo Elegante"
    }else if (str_detect(data$Name[i], regex(c("absolu"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Or Absolu"
    }else if (str_detect(data$Name[i], regex(c("papua"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Papua New Guinea"
    }else if (str_detect(data$Name[i], regex(c("limited"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Limited Creations"
    }else if (all(str_detect(data$Name[i], regex(c("decaf", "voordeelpak"),ignore_case=T)))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 20 Ct Decaf"
    }else if (str_detect(data$Name[i], regex(c("decaf"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Decaf"
    }else if (str_detect(data$Name[i], regex(c("splendente"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Splendente"
    }else if (str_detect(data$Name[i], regex(c("xxl"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct XXL"
    }else if (str_detect(data$Name[i], regex(c("mattinata"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Mattinata"
    }else if (str_detect(data$Name[i], regex(c("indon"),ignore_case=T))==TRUE) {
      data$Productname[i] <- "L'Or Espresso 10 Ct Indonesia"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("L'Or Espresso 20 Ct"),ignore_case=T)))==TRUE){
      if (str_detect(data$Name[i], regex(c("Estremo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Estremo"
      }else if (str_detect(data$Name[i], regex(c("sontuoso"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Sontuoso"
      }else if (str_detect(data$Name[i], regex(c("onyx"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Onyx"
      }else if (all(str_detect(data$Name[i], regex(c("ristretto", "decaf"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Ristretto Decaf"
      }else if (all(str_detect(data$Name[i], regex(c("ristretto", "familiepak"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Ristretto"
      }else if (str_detect(data$Name[i], regex(c("ristretto"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Ristretto"
      }else if (str_detect(data$Name[i], regex(c("profondo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Profondo"
      }else if (str_detect(data$Name[i], regex(c("mbia"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Colombia"
      }else if (str_detect(data$Name[i], regex(c("india"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct India"
      }else if (str_detect(data$Name[i], regex(c("supremo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 20 Ct Supremo"
      }else if (all(str_detect(data$Name[i], regex(c("bio", "7"),ignore_case=T)))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Bio, Intensity 7"
      }else if (all(str_detect(data$Name[i], regex(c("bio", "9"),ignore_case=T)))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Bio, Intensity 9"
      }else if (str_detect(data$Name[i], regex(c("guatemala"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Guatemala"
      }else if (str_detect(data$Name[i], regex(c("or absulo"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Or Absolu"
      }else if (str_detect(data$Name[i], regex(c("ultimo"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Ultimo"
      }else if (str_detect(data$Name[i], regex(c("forza"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Forza"
      }else if (str_detect(data$Name[i], regex(c("lungo elegante"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Lungo Elegante"
      }else if (str_detect(data$Name[i], regex(c("absolu"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Or Absolu"
      }else if (str_detect(data$Name[i], regex(c("splendente"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Splendente"
      }else if (str_detect(data$Name[i], regex(c("mattinata"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Mattinata"
      }else if (str_detect(data$Name[i], regex(c("decaf"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 20 Ct Decaf"
      }else{
        data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      }
      
    }else if(all(str_detect(data$Subbrand[i], regex(c("L'Or Espresso 40 Ct"),ignore_case=T)))==TRUE){
      if (str_detect(data$Name[i], regex(c("Estremo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Estremo"
      } else if (str_detect(data$Name[i], regex(c("sontuoso"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Sontuoso"
      }else if (str_detect(data$Name[i], regex(c("onyx"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Onyx"
      }else if (all(str_detect(data$Name[i], regex(c("ristretto", "decaf"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Ristretto Decaf"
      }else if (str_detect(data$Name[i], regex(c("ristretto"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Ristretto"
      }else if (str_detect(data$Name[i], regex(c("profondo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Profondo"
      }else if (str_detect(data$Name[i], regex(c("mbia"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Colombia"
      }else if (str_detect(data$Name[i], regex(c("india"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct India"
      }else if (str_detect(data$Name[i], regex(c("supremo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 40 Ct Supremo"
      }else if (all(str_detect(data$Name[i], regex(c("bio", "7"),ignore_case=T)))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Bio, Intensity 7"
      }else if (all(str_detect(data$Name[i], regex(c("bio", "9"),ignore_case=T)))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Bio, Intensity 9"
      }else if (str_detect(data$Name[i], regex(c("guatemala"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Guatemala"
      }else if (str_detect(data$Name[i], regex(c("or absulo"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Or Absolu"
      }else if (str_detect(data$Name[i], regex(c("ultimo"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Ultimo"
      }else if (str_detect(data$Name[i], regex(c("forza"),ignore_case=T))==TRUE) {
        data$Productname[i] <- "L'Or Espresso 40 Ct Forza"
      }else{
        data$Productname[i]<- paste(data$Name[i], data$Volume[i])
        
      }
    }else if (all(str_detect(data$Subbrand[i], regex(c("L'Or Espresso 500g"),ignore_case=T)))==TRUE){
      if (all(str_detect(data$Name[i], regex(c("Onyx", "4"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Onyx 4-pack"
      }else if (str_detect(data$Name[i], regex(c("Onyx"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Onyx"
      }else if (all(str_detect(data$Name[i], regex(c("Forza", "4"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Forza 4-pack"
      }else if (str_detect(data$Name[i], regex(c("Forza"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Forza"
      }else if (all(str_detect(data$Name[i], regex(c("Fortissimo", "4"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Fortissimo 4-pack"
      }else if (str_detect(data$Name[i], regex(c("Fortissimo"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Fortissimo"
      }else if (str_detect(data$Name[i], regex(c("crema"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Crema Absolu"
      }else if (str_detect(data$Name[i], regex(c("Brésil"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Brazil"
      }else if (str_detect(data$Name[i], regex(c("Brazil"),ignore_case=T))==TRUE){
        data$Productname[i] <- "L'Or Espresso 500g Brazil"
      }else{
        data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      }
    }else if (all(str_detect(data$Subbrand[i], regex(c("L'Or 1kg"),ignore_case=T)))==TRUE){
      if (all(str_detect(data$Name[i], regex(c("forza"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso Forza 1kg"
      }else{
        data$Productname[i] <- "L'Or Espresso Classic 1kg"
      }
    }else if(all(str_detect(data$Subbrand[i], regex(c("L'Or 250g"),ignore_case=T)))==TRUE){
      if (all(str_detect(data$Name[i], regex(c("forza"),ignore_case=T)))==TRUE){
        data$Productname[i] <- "L'Or Espresso Forza 250g"
      }else{
        data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      }
    }else{
  data$Productname[i] <- paste(data$Name[i], data$Volume[i])
}
}else if (all(str_detect(data$Brand_Transformed[i], regex(c("Illy"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("Illy Dark Roast"),ignore_case=T)))==TRUE){
    if (str_detect(data$Volume[i], regex(c("8.8"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Dark Roast Coffee 8.8 Oz"
    }else if (str_detect(data$Volume[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Dark Roast Coffee 8.8 Oz"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      
    }}
  else if (all(str_detect(data$Subbrand[i], regex(c("Illy Espresso Cups"),ignore_case=T)))==TRUE){
    if (str_detect(data$Name[i], regex(c("intens"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Intenso 10 Ct"
    }else if (str_detect(data$Volume[i], regex(c("100"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups 100 Ct"
    }else if (str_detect(data$Name[i], regex(c("forte"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Forte 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("classi", "lungo", "10 x 10"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic Lungo 10 Ct 10-pack"
    }else if (all(str_detect(data$Name[i], regex(c("classi", "lungo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic Lungo 10 Ct"
    }else if (all(str_detect(data$Name[i], regex(c("classi", "10 x 10"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic 10 Ct 10-pack"
    }else if (str_detect(data$Name[i], regex(c("classi"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic 10 Ct"
    }else if (str_detect(data$Name[i], regex(c("clássi"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic 10 Ct"
    }else if (str_detect(data$Name[i], regex(c("kcups"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic KCups 10 Ct"
    }else if (str_detect(data$Name[i], regex(c("decaf"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso Cups Classic Decaf 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Illy Espresso 250g"),ignore_case=T)))==TRUE){
    if (str_detect(data$Name[i], regex(c("entcof"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso 250g Decaf"
    }else if (str_detect(data$Name[i], regex(c("decaf"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso 250g Decaf"
    }else if (str_detect(data$Name[i], regex(c("bean"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso 250g Beans"
    }else if (str_detect(data$Name[i], regex(c("ganze"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso 250g Beans"
    }else if (str_detect(data$Volume[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Espresso 250g"
    }else{
      data$Productname[i] <- "Illy Espresso 250g"
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Illy Classico 250g"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Volume[i], regex(c("250"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Classico Coffee 250g"
    }else if (str_detect(data$Volume[i], regex(c("8.8"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Illy Classico Coffee 250g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
      
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Illy Coffee Filter 250g"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Coffee Filter 250g"
    }else {
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Illy Cups 21s"), ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("decaf"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Illy Espresso Capsules Decaf 21s"
    }else{
      data$Productname[i] <- "Illy Espresso Capsules 21s"
    }
  }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  
}else if (all(str_detect(data$Brand_Transformed[i], regex(c("Nespresso"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("Nespresso Original Volluto"),ignore_case=T)))==TRUE){
    if (str_detect(data$Name[i], regex(c("10"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Nespresso Original Volluto 10 Ct"
    }else if (str_detect(data$Name[i], regex(c("50"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Nespresso Original Volluto 10 Ct"
    }else if (str_detect(data$Name[i], regex(c("50"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Nespresso Original Volluto 10 Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
}else if (all(str_detect(data$Brand_Transformed[i], regex(c("Lavazza"), ignore_case=T)))==TRUE){
  if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Qualita Oro"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250", "3"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 3x250g"
    }else if (str_detect(data$Name[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 250g"
    }else if (str_detect(data$Volume[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 250g"
    }else if (all(str_detect(data$Name[i], regex(c("6x"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 6x1000g"
    }else if (str_detect(data$Name[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 1000g"
    }else if (str_detect(data$Name[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 500g"
    }else if (str_detect(data$Volume[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 500g"
    }else if (str_detect(data$Name[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kilo"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Oro Coffee 1000g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Qualita Rossa"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250", "3"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 3x250g"
    }else if (str_detect(data$Name[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 250g"
    }else if (str_detect(data$Volume[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 250g"
    }else if (str_detect(data$Name[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 1000g"
    }else if (str_detect(data$Name[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 500g"
    }else if (str_detect(data$Volume[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 500g"
    }else if (str_detect(data$Name[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kilo"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Qualita Rossa Coffee 1000g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Instant Coffee"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("95"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Instant Coffee 95g"
    }else if (all(str_detect(data$Volume[i], regex(c("95"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Instant Coffee 95g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Espresso 250g"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250", "3"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Espresso Coffee 3x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("X2"),ignore_case=F)))==TRUE){
      data$Productname[i] <- "Lavazza Espresso 2x250g"
    }else if (all(str_detect(data$Name[i], regex(c("250", "8"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 8x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("250"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Espresso Coffee 250g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Crema e Gusto"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("250", "8"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 8x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("2x250"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 2x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("250", "3"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 3x250g"
    }else if (all(str_detect(data$Volume[i], regex(c("X2"),ignore_case=F)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 2x250g"
    }else if (str_detect(data$Name[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 250g"
    }else if (str_detect(data$Volume[i], regex(c("250"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 250g"
    }else if (str_detect(data$Name[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("1000"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 1000g"
    }else if (str_detect(data$Name[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 500g"
    }else if (str_detect(data$Volume[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 500g"
    }else if (str_detect(data$Name[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kg"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 1000g"
    }else if (str_detect(data$Volume[i], regex(c("kilo"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Gusto Coffee 1000g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Crema e Aroma"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("4er"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Aroma Coffee 4x1kg"
    }else if (all(str_detect(data$Volume[i], regex(c("kg"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Aroma Coffee 1kg"
    }else if (all(str_detect(data$Volume[i], regex(c("1000"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Aroma Coffee 1kg"
    }else if (all(str_detect(data$Volume[i], regex(c("kg"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Crema e Aroma Coffee 1kg"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Capsules 16Ct"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("intens"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Intenso 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("lungo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Lungo 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("cremo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Cremoso 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("passion"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Passionale 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("tierra"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Tierra 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("deliz"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Delizioso 16Ct"
    }else if (all(str_detect(data$Name[i], regex(c("modo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules A Modo Mio 16Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Capsules 10Ct"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("decaf"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Decaf 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("ricco"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Ricco 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("ricoo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Ricco 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("intens"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Intenso 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("armon"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Armonico 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("legger"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Lungo Leggero 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("decis"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Deciso 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("avvol"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Avvolgente 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("classic"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Classico 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("ristret"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Ristretto 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("lungo"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Lungo 10Ct"
    }else if (all(str_detect(data$Name[i], regex(c("vigor"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Capsules Vigoroso 10Ct"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza 250g"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("decaf"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Coffee Decaf 250g"
    }else if (all(str_detect(data$Name[i], regex(c("club"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Club Coffee 250g"
    }else{
      data$Productname[i] <- "Lavazza Coffee 250g"
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza 500g"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("decaf"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Coffee Decaf 500g"
    }else if (all(str_detect(data$Name[i], regex(c("tierra"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Tierra Coffee 500g"
    }else if (all(str_detect(data$Name[i], regex(c("italian"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Italian Classic Coffee 500g"
    }else{
      data$Productname[i] <- "Lavazza Coffee 500g"
    }
  }else if (all(str_detect(data$Subbrand[i], regex(c("Lavazza Barista"),ignore_case=T)))==TRUE){
    if (all(str_detect(data$Name[i], regex(c("perfetto", "250"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Barista Perfetto 250g"
    }else if (all(str_detect(data$Name[i], regex(c("perfetto", "1"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Barista Perfetto 1kg"
    }else if (all(str_detect(data$Name[i], regex(c("intenso", "1"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Barista Intenso 1kg"
    }else if (all(str_detect(data$Name[i], regex(c("gran", "1"),ignore_case=T)))==TRUE){
      data$Productname[i] <- "Lavazza Barista Gran Crema 1kg"
    }else if (all(str_detect(data$Name[i], regex(c("perfetto"),ignore_case=T))) & str_detect(data$Volume[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Barista Perfetto 500g"
    }else if (all(str_detect(data$Name[i], regex(c("intenso"),ignore_case=T))) & str_detect(data$Volume[i], regex(c("500"),ignore_case=T))==TRUE){
      data$Productname[i] <- "Lavazza Barista Intenso 500g"
    }else{
      data$Productname[i] <- paste(data$Name[i], data$Volume[i])
    }
  }else{
    data$Productname[i] <- paste(data$Name[i], data$Volume[i])
  }
}else{
  data$Productname[i] <- paste(data$Name[i], data$Volume[i])
}
}


data <- data %>% filter(Brand_Transformed == "Nescafe" | Brand_Transformed == "Starbucks" | Brand_Transformed == "Illy" | Brand_Transformed == "L'OR" | Brand_Transformed == "Cafe Royal" | Brand_Transformed == "Lavazza"
                                 | Brand_Transformed == "Nespresso"
                                 | Brand_Transformed == "Maxwell House" 
                                 | Brand_Transformed == "Peet's Coffee"
                                 | Brand_Transformed == "Dunkin"
                                 | Brand_Transformed == "Folgers Coffee"
                                 | Brand_Transformed == "Green Mountain"
                                 | Brand_Transformed == "Gevalia"
                                 | Brand_Transformed == "New England"
                                 | Brand_Transformed == "Caribou Coffee"
                                 | Brand_Transformed == "Kirkland Signature"
                                 | Brand_Transformed == "Caffe Gondoliere"
                                 | Brand_Transformed == "Cameron's Coffee"
                                 | Brand_Transformed == "Chameleon"
                                 | Brand_Transformed == "Kauai Coffee"
                                 | Brand_Transformed == "Senseo")


patterns <- c("MOKAFLOR", 
              "CLORISMEN", 
              "JACOBS", 
              "AUCHAN",
              "Simon",
              "Peet",
              "CAFFEITALIA",
              "Jacobs",
              "Dallmayr",
              "Kit",
              "Vittoria", 
              "Woolworths", 
              "Chá",
              "Espressione",
              "Costa", 
              "Santa",
              "Island")


data <- data[!grepl(paste(patterns, 
                                  collapse = "|"),
                                  data$Productname),]

View(data)
data <- data %>%
  filter(Price != "no price available" & Price != "No Price Available" & Price != "out of stock, no price avaiable")


data$Price_sub <- str_replace(data$Price, ",", ".")

data$Price_filter <- gsub("[^0-9.-]", "", data$Price_sub)
data$Price_filter <- gsub("-.*", "", data$Price_filter) 

  
data$Price_numeric <- as.numeric(stringr::str_remove(data$Price_filter, "\\.$"))
data$Koers <- as.numeric(data$Koers)
data$Price_in_euro <- data$Price_numeric * data$Koers


for (i in seq(1, length(data$Retailer))){
  if (data$Retailer[i] == "Carrefour Tunesie"){
    data$Price_in_euro[i] <- data$Price_in_euro[i] / 1000
  }
}

View(data)


write_xlsx(data, "../Full Data/transformed_data_08_09_price_in_euro.xlsx", col_names=TRUE)


