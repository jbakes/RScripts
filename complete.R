complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files

    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used

    nobs = vector()

    for (i in id) {
        filename = paste( directory, sprintf("%03d.csv", i), sep = '/')
        t <- read.csv(filename)
        nobs = c(nobs, sum(complete.cases(t)))
    }
    data.frame(id, nobs)
}