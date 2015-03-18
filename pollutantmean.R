
pollutantmean <- function(directory, pollutant, id = 1:332) {
    valcount = 0
    sum = 0
    for (i in id) {
        filename = paste( directory, sprintf("%03d.csv", i), sep = '/')
        t <- read.csv(filename)
        sum = sum + sum( t[[pollutant]], na.rm = T)
        valcount = valcount + sum( !is.na(t[[pollutant]]))
    }
    sum / valcount
}
