library(lubridate, warn.conflicts = FALSE)
df <- data.frame(name=c("Ksusha","Nikita","Margarita", "Andrew", "Eygeniy"), 
                 surname=c("Pistsova", "Dubinin", "Kazakevich", "Bedin", "Buri"),
                 sex=factor(c("woman","man","woman", "man", "man")),
                 date_of_birth=as.Date(c("2001-01-30", "2001-10-20", "1999-03-10", "2000-03-07", "2002-11-12")),
                 height=c(162, 178, 166, 175, 180), weight=c(52, 70, 55, 80, 73))

male_count <- table(df$sex)["man"] # подсчет парней (1 задание)
female_count <- table(df$sex)["woman"] # подсчет девушек (1 задание)

name_counts <- table(df$name) # подсчет людей с одинаковыми именами (2 задание)
print(name_counts)

# добавляем возраст каждого  студента в новую колонку (3 задание)
df$Age <- as.period(interval(df$date_of_birth, Sys.Date()))$year

# выполняем третье задание без использования библиотеки "lubridate"               
df$age <- as.numeric(format(Sys.Date(), "%Y")) - as.numeric(format(df$date_of_birth, "%Y"))
df$age <- ifelse(format(Sys.Date(), "%m-%d") < format(df$date_of_birth, "%m-%d"), df$age - 1, df$age)