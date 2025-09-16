setwd("C:\\Users\\user\\OneDrive\\Documents\\Desktop\\Lab07")

prob_uniform <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
print(paste("The probability is:", prob_uniform))


rate <- 1/3
prob_exp <- pexp(2, rate = rate)
print(paste("The probability is:", prob_exp))


prob_iq_above_130 <- 1 - pnorm(130, mean = 100, sd = 15)
print(paste("The probability is:", prob_iq_above_130))


iq_95th_percentile <- qnorm(0.95, mean = 100, sd = 15)
print(paste("The 95th percentile IQ score is:", iq_95th_percentile))