library("PriceIndices")

#creating a data frame
time1<-c("2018-12-01","2019-01-01","2019-02-01","2019-03-01")
time<-as.Date(c(time1, time1, time1, time1))

p1<-c(2.97,2.96,2.93,3.03)
p2<-c(3.64,3.5,3.36,3.42)
p3<-c(6.75,6.71,6.67,6.73)
p4<-c(3.37,3.29,3.37,3.37)
prices<-c(p1,p2,p3,p4)


q1<-c(15,25,32,33)
q2<-c(44,79,65,90)
q3<-c(49,41,35,53)
q4<-c(35,59,30,31)
quantities<-c(q1,q2,q3,q4)

prodID<-c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4)
my_data<-data.frame(time, prices, quantities, prodID)

#elasticity of substitution
sigma.<-elasticity(my_data, start="2018-12",end="2019-03")
sigma.
result<-m_decomposition(my_data, start="2018-12",end="2019-03", 
                       window=4,
                       formula=c("geks","ccdi","geksw","geksl","geksgl","gekslm"),
                       sigma=sigma.,
                       index.value = TRUE)

#decomposition results:
result$multiplicative
result$normalized
#relative commodity impacts:
result$impact
