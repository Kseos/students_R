df <- data.frame(C1 = c(11,21,31),
                 C2 = c(12,22,32),
                 C3 = c(13,23,33),
                 C4 = c(14,24,34),
                 row.names = c("R1", "R2", "R3"))

# Задание 1
values_1 <- df["R1", c("C1", "C2")]

# Задание 2
values_2 <- df["R3", df["R3", ] > 22 ]

# Задание 3
values_3 <- df[df$C3 > 12, ]

# Задание 4
# print(colnames(df))
colnames(df)[c(1, 3)] <- c("Column1", "Column3")

# Задание 5
df$CX <- c(-1, 0, 1)

# Задание 6
df <- subset(df, row.names(df) != "R2")
# df <- df[-which(rownames(df) == "R2"), ]

# Задание 7
df$C2 <- df$C2^3

# Задание 8
#df$C2 <- df$C2^df["R1","CX"]
df$Column3 <- df$Column3^df$CX


