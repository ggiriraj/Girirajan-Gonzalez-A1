library(faraway)
hprice$homeprice<-exp(hprice$narsp)*1000

###Q1
mean(hprice$homeprice)
#9411.42
var(hprice$homeprice)
#1583110349

###Q2
t.test(hprice$homeprice)
#[90062.70, 98760.14]
  
###Q3
mean(hprice$homeprice [hprice$ajwtr==1])
#111243
std.error(hprice$homeprice [hprice$ajwtr==1])
#4655.883

###Q4
msacoast <- mean(hprice$homeprice [hprice$ajwtr==1])
msainland <- mean(hprice$homeprice [hprice$ajwtr==0])
msacoast - msainland
#MSA coastline is $28,854 is more expensive on avg 

###Q5
cor(hprice$homeprice, hprice$ypc, method=c("pearson"))
#0.7437474

###Q6
cor(hprice$homeprice, hprice$ypc)

###Q7
#yes, correlation between x and y, is equal
#to the correlation between variables y and x

###Q8
shapiro.test(hprice$homeprice)
#not normally distributed
#No, not directly calculating variance, but a lack of normal distribution can affect the meaningfulness and interpretation of variance and the reliability of statistical tests that rely on normality, such as t-tests or ANOVA. The calculation formula for variance itself remains the same, but for non-normal data, a measure of variability like the interquartile range (IQR) or other distribution-specific methods may be more appropriate.



