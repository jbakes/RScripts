corr <- function(directory, threshold = 0) {
    corrvector = vector()

    files = list.files(directory, full.names = T)
    for (file in files) {
        t <- read.csv(file)
        good = complete.cases(t)

        if (sum(good) > threshold) {
            sulf = t$sulfate[good]
            nitr = t$nitrate[good]
            corrvector = c(corrvector, cor(sulf,nitr))
        }
    }
    corrvector
}
