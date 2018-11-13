#Assignment 5.1 - Visualising vowels of USAStates
#How many vowels are there in the names of USA States?
#Visualize the vowels distribution.

#Allocating states with USA states names
states=rownames(USArrests)
states

#Combining the names into single string
Z<-paste(states, collapse = "")

#Spliting all the letters
x <- tolower(strsplit(Z, "")[[1]])
x
x <- x[x %in% letters]
x

#Finding the frequency of each character
a<-table(x)
a
d<-as.data.frame(a)
View(d)
cols<-c("Letter","Frequency")
colnames(d)<-cols

#Filtering vowels
library("dplyr")
c<-filter(d, Letter=="a"|Letter=="e"|Letter=="i"|Letter=="o"|Letter=="u")

#Plotting the barplot of each vowel
library(ggplot2)
ggplot(c, aes(x=Letter, y=Frequency)) + geom_bar(stat="identity") + 
  labs(x="Percentage", y="Proportion")



