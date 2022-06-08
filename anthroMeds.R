
# Tests for indirect effects using the mediation and lm.beta packages. 
# For questions: theodore_turesky@gse.harvard.edu


# inputs required:
data <- read.csv("/Users/salmon/Box/bch/Provide/structMedsAnth-supp.csv") # a *.csv file that contains measures needed for mediation
med1 <- "haz"  # mediator name, must be consistent with *.csv header
ind1 <- "mat_ed" # independent variable name, must be consistent with *.csv header
cov <- paste("age", "+", "sex") # list of covariates to include, must be consistent with *.csv header


# As indirect effects were tested for morphometric estimates from several brain regions, the variables below were used 
# to clarify at which columns in the input *.csv file the brain estimates begin and end
c_in <- 10 # first brain estimate column
c_out <- 14 # last brain estimate column


#--------------------------------------------------------------------------------------------------------------------------------------------
library(lm.beta)
library(mediation)

varlist2 <- names(data)[c_in:c_out] 
est <- matrix(ncol=1, nrow=(c_out-c_in+1)) 
ci1 <- matrix(ncol=1, nrow=(c_out-c_in+1))
ci2 <- matrix(ncol=1, nrow=(c_out-c_in+1))
p <- matrix(ncol=1, nrow=(c_out-c_in+1))


for (i in c(1:(c_out-c_in+1)))
{
FormulaM <- paste(med1, "~", ind1, "+", cov, sep =' ') # model relating independent variable to potential mediator
print(FormulaM)
FormulaY <- paste(varlist2[[i]], "~", med1, "+", ind1, "+", cov, sep =' ') # model relating potential mediator to dependent variable, controlling for independent variable
print(FormulaY)

model.M <- lm(FormulaM, data)
model.Y <- lm(FormulaY, data)

print(summary(model.M))
print(summary(model.Y))

# also estimate standardized beta coefficients
model.M.beta <- lm.beta(model.M)
model.Y.beta <- lm.beta(model.Y)
print(model.M.beta)
print(model.Y.beta)

# mediation model
results <- mediate(model.M, model.Y, treat=ind1, mediator=med1, covariates=cov, boot=TRUE, sims=10000)

# consolidate results
est[i,] <- results$n0
ci1[i,] <- results$n0.ci[[1]]
ci2[i,] <- results$n0.ci[[2]]
p[i,] <- results$n0.p

print(summary(results))

}
