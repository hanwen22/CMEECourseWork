z <- runif(1)
if (z <= 0.5) {print("less than a half")}
cat("Script complete!\n")

for (i in 1:10) {
    j <- i * i
    print(paste(i, " squared is", j ))
}
