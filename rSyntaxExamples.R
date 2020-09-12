a <- 3
b <- 3.145

typeof(a)
typeof(b)

someString <- "This is a random string"

typeof(someString)

boleanTrue <- TRUE
boleanFalse <- FALSE

typeof(boleanTrue)
typeof(boleanFalse)

boleanTrue2 <- T
boleanFalse2 <- F

typeof(boleanTrue2)
typeof(boleanFalse2)

somecharactervector <- c("Sonia", "Travis", "Lauren")
typeof(somecharactervector)

somecharactervector[1]

someNumbervector <- c(0,1,2,3)
typeof(someNumbervector)

# Mixing datatypes will implicitly convert them to the character data type for vectors
someMixedvector <- c('char',1)
typeof(someMixedvector)

someMixedvector2 <- c(1, 'char')
typeof(someMixedvector2)

somecharactervector2 <- c("Victor", "Anna", "Val")

acombinedvector <- c(somecharactervector, somecharactervector2)

for (name in acombinedvector){
  print(name)
}

nameIndices <- 1:length(acombinedvector)
nameIndicesSquared <- nameIndices**2
nameIndicesTimes9 <- 9*nameIndices

imaginaryNumber <- 2 + 3i
typeof(imaginaryNumber)

someMixedDatatypeList <- list(
  "names" <- acombinedvector,
  "numbers" <- someNumbervector,
  "bools=" <- c(T,F,T,F)
)

someMixedDatatypeList["names"]

typeof(someMixedDatatypeList)

typeof(someMixedDatatypeList["names"])

someMixedList <- list(0, 'a', c(T,F))
someMixedList[1]
