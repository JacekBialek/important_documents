library("PriceIndices")

#sample time column needed in the PriceIndices package
time1<-c("2018-12-01","2019-01-01","2019-02-01","2019-03-01")
time<-as.Date(c(time1, time1, time1, time1))

#data from a Guide:
p1<-c(2.97,2.96,2.93,3.03)
p2<-c(3.64,3.5,3.36,3.42)
p3<-c(6.75,6.71,6.67,6.73)
p4<-c(3.37,3.29,3.37,3.37)

q1<-c(15,25,32,33)
q2<-c(44,79,65,90)
q3<-c(49,41,35,53)
q4<-c(35,59,30,31)

#assumption:
p1[4]<-p1[1]
p2[4]<-p2[1]
p3[4]<-p3[1]
p4[4]<-p4[1]

#creating a data frame
quantities<-c(q1,q2,q3,q4)
prices<-c(p1,p2,p3,p4)
prodID<-c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4)
my_data<-data.frame(time, prices, quantities, prodID)

#checking identity test -> results:
bennet(my_data, start="2018-12",end="2019-03")
mbennet(my_data, start="2018-12",end="2019-03", window=4)