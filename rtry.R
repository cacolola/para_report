

library(rmarkdown)
library(knitr)

folder<-"C:/Users/Administrator/Desktop/新建文件夹/"

 for (i in 1:2) {
  filename<-paste(folder,"aa",i,".csv",sep="")
  outname<-paste(folder,"report",i,".html",sep="")
  rmarkdown::render('MyDocument.Rmd',
                  output_file=outname,
                  params = list(
                    file        = filename,
                    person      = i
                    ))
 }