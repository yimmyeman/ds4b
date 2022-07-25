library(tidyverse)

# Importamos el Dataset
employee_df <- read.csv('1. Human Resources Data/Human_Resources.csv',
                        header = T, 
                        stringsAsFactors = F)

# Estructura de los datos
str(employee_df)
summary(employee_df)
names(employee_df)

# Convirtiendo variables categóricas en factores.
employee_df$Over18 <- factor(employee_df$Over18, labels = "Yes")
employee_df$OverTime <- factor(employee_df$OverTime)
employee_df$Attrition <- factor(employee_df$Attrition,
                                levels = c("No", "Yes"),
                                labels = c("No", "Yes")
                                )
employee_df$BusinessTravel <- factor(employee_df$BusinessTravel)
employee_df$Department <- factor(employee_df$Department)
employee_df$EducationField <- factor(employee_df$EducationField)
employee_df$Gender <- factor(employee_df$Gender)
employee_df$JobRole <- factor(employee_df$JobRole)
employee_df$MaritalStatus <- factor(employee_df$MaritalStatus)

unique(employee_df$Over18)

table(employee_df$Attrition, employee_df$OverTime)

for (i in names(employee_df)) {
  ggplot(data = employee_df, mapping = aes(x = ))+
    geom_bar()
}


ggplot(data = employee_df, mapping = aes(x = Age))+
  geom_histogram()


for (i in names(employee_df)){
  print(i)
}

names(employee_df)
barplot(employee_df$Attrition)

