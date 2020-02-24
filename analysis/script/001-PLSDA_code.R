library(MetaboAnalystR)


uninformative_filter <- function(input, method) {
  valid_vals <- c("iqr", "mean", "median", "nrsd", "rsd", "mad", "sd")
  if (!(method %in% valid_vals)) {
    stop('Incorrect filtering method specified')
  }
  output <- FilterVariable(input, method, "F", 25)
  output
}


mSet<-InitDataObjects("specbin", "stat", FALSE)
mSet<-Read.TextData(mSet, "script/data_processed.csv", "rowu", "disc");
mSet<-SanityCheckData(mSet)
mSet<-RemoveMissingPercent(mSet, percent=0.5)
mSet<-ImputeVar(mSet, method="mean")
mSet<-uninformative_filter(mSet, "sd")
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "NULL", "NULL", "NULL", ratio=FALSE, ratioNum=20)
mSet<-PLSR.Anal(mSet, reg=TRUE)
mSet<-PlotPLS3DScoreImg(mSet, "pls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PLSDA.CV(mSet, "T",5, "Q2")
mSet<-SaveTransformedData(mSet)
