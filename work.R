
## source('work.R')

WD <- "H:/Users/SkyDrive/Coursera/JHDataScience/Git/RepData_PeerAssessment1/"

setwd(WD)

library("knitr")
library("markdown")

Paste <- function(...) {paste(...,sep="")}

file.remove("activity.csv")

FN <- "PA1_template"
FR <- Paste(FN,".Rmd")
FM <- Paste(FN,".md")
FH <- Paste(FN,".html")

knit2html(FR, output = FM)
markdownToHTML(FM, output = FH)

tcmd <- "c:/command/tcmd/bin/Totalcmd.exe /O /S=L "
system(Paste(tcmd,WD,FH))




