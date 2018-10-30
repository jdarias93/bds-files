d <- read.csv("Dataset_S1.txt") # Load data
head(d, n=3) # Check data
nrow(d) # Check # rows
ncol(d) # Check # columns
dim(d) # Check dimensions (r c)
colnames(d) # Check column names for discrepancies; "X.GC" instead of "%GC"
colnames(d)[12] <- "Percent.GC" # Changed X.GC

## Creating Dataframes From Scratch
x <- sample(1:50,300,replace=TRUE) # Samples numbers 1-50, 300 times
y <- 3.2*x + rnorm(300,0,40) # Function
d_sim <- data.frame(y=y, x=x) # Represents vectors as a dataframe

d$depth # Access a single column of a dataframe with $
mean(d$depth) # The mean of one column in d
summary(d$depth) # Summary stats of one column in d
d[ , 1:2] # Subsetting columns
d[, c("start","end")] # We can also use column names to acheive the same end
d[1,c("start","end")] # Only first row of start and end columns
d[, "start", drop=FALSE] # Disables subsetting as vector (retains dataframe format)
d$cent <- d$start >= 25800000 & d$end <= 29700000 # Logical vector for determining if window within a centromeric region
table(d$cent) # See how many rows were within the centromeric region
sum(d$cent) # Another way to see how many rows were within region
d$diversity <- d$Pi / (10*1000)

# Don't forget to git push this once done