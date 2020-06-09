library(arules)
library(arulesViz)
# Whenever we have data containing item names, then load that data using 
# read.transactions(file="path",format="basket",sep=",")
# use this to form association rules
groceries<-read.csv("E:\\Assignment\\Association rules\\groceries.csv")
View(groceries)
groceries<-read.transactions(file.choose(),format = "basket")
View(groceries)
str(groceries)
class(groceries)
inspect(groceries[1:10])
groceries_rules<-apriori(groceries,parameter = list(support = 0.002,confidence = 0.05,minlen=3))
inspect(groceries_rules[1:20])
#visulization
plot(groceries_rules)
plot(groceries_rules, method = "two-key plot")
plot(groceries_rules, method = "paracoord")
plot(groceries_rules, method = "matrix3D", measure = "lift")
##### changing the value of support and confidence###
groceries_rules1<-apriori(groceries,parameter = list(support=0.01,confidence=0.7,minlen=3))
inspect(groceries_rules1 [1:10])
##visulization##
plot(groceries_rules1)
plot(groceries_rules1, method = "two-key plot")
plot(groceries_rules1, method = "matrix3D", measure = "lift")
##### changing the value of support and confidence###
groceries_rule<-apriori(groceries,parameter = list(support = 0.003,confidence = 0.09,minlen=3))
View(groceries_rule)
inspect(groceries_rule[1:10])
##visulization##
plot(groceries_rule)
plot(groceries_rule, method = "two-key plot")
##### changing the value of support,confidence and minimum length###
groceries_rule3<-apriori(groceries,parameter = list(support=0.004,confidence=0.5,minlen=4))
View(groceries_rule3)
inspect(groceries_rule[1:20])
##visulization##
plot(groceries_rule3)
plot(groceries_rule3, method = "two-key plot")
plot(groceries_rule3, method = "matrix3D", measure = "lift")
  