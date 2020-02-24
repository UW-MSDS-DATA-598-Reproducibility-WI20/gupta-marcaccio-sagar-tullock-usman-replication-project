library(MetaboAnalystR)

uninformative_filter <- function(input, method) {
  valid_vals <- c("iqr", "mean", "median", "nrsd", "rsd", "mad", "sd")
  if (!(method %in% valid_vals)) {
    stop('Incorrect filtering method specified')
  }
  output <- FilterVariable(input, method, "F", 25)
  output
}


#Initialize the object
mSet<-InitDataObjects("specbin", "stat", FALSE)
#Read the data
mSet<-Read.TextData(mSet, "../data/data_processed.csv", "rowu", "disc");
#Sanity Check
mSet<-SanityCheckData(mSet)
#Data Processing
mSet<-RemoveMissingPercent(mSet, percent=0.5)
mSet<-ImputeVar(mSet, method="min")
mSet<-FilterVariable(mSet, "iqr", "F", 25)
#Data Normalization
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "NULL", "NULL", "NULL", ratio=FALSE, ratioNum=20)
#Create Analysis Object
mSet<-PLSR.Anal(mSet, reg=TRUE)
#Create 3d PLSDA plots
mSet<-PlotPLS3DScoreImg(mSet, "figures/pls_score3d_0_", "png", 72, width=NA, 1,2,3, 40)
mSet<-PLSDA.CV(mSet, "T",5, "Q2")
#Create Importance plots (comp 1)
mSet<-PlotPLS.Imp(mSet, "figures/pls_imp_0_", "png", 72, width=NA, "vip", "Comp. 1", 15,FALSE)
#Create Importance plots (comp 2)
mSet<-PlotPLS.Imp(mSet, "figures/pls_imp_2_", "png", 72, width=NA, "vip", "Comp. 2", 15,FALSE)
