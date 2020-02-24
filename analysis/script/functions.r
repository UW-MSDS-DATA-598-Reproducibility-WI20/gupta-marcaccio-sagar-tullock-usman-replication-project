# Function to test methods of filtering  uninformative data points by comparing them to metrics such as 
# mean, standard deviation etc. Based on the documentation provided by the authors of MetaboAnalyst. 
uninformative_filter <- function(input, method) {
  valid_vals <- c("iqr", "mean", "median", "nrsd", "rsd", "mad")
  if (!(method %in% valid_vals)) {
    stop('Incorrect filtering method specified')
  }
  input <- FilterVariable(input, method, "F", 25)
  output <- input
  output
}