#--------------------BASIC NUMBER 1--------------------#
#Write a R program to take input from the user (name and age) and display the values. Also print the version of R installation
name <- readline("Enter your name: ")
age <- readline("Enter your age: ")
print(paste0("Hello ",name,"!"))
print(paste0("You are ",age," years old"))
getRversion() #print the current version of r
#Clear


#--------------------BASIC NUMBER 2--------------------#
#Write a R program to get the details of the objects in memory.
print(ls.str())
#clear- saw the solution before creating the program


#--------------------BASIC NUMBER 3--------------------#
#Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91.
print(seq(20,60))
print(mean(20:60))
print(sum(51:91))
#clear - correct logic wrong syntax

#--------------------BASIC NUMBER 4--------------------#
#Write a R program to create a vector which contains 10 random integer values between -50 and +50
random_integer <- sample(-50:50, 10)
print(random_integer)
#clear

#--------------------BASIC NUMBER 5--------------------#
#Write a R program to get the first 10 Fibonacci numbers
F0 = 0L
F1 = 1L
Fn = 0L
counter = 2L
print(F0)
print(F1)
while (counter < 10){
  counter = counter+1
  Fn <- F1 + F0
  print(Fn)
  F0 <- F1
  F1 <- Fn
}
#it works but the problem has different solution
nth_fibonacci <- function(number){
  if (number <= 1){
    return(number)
  }
  
  return (nth_fibonacci(number-1) + nth_fibonacci(number-2))
}

print(nth_fibonacci(10))
#clear


#--------------------BASIC NUMBER 6--------------------#
#Write a R program to get all prime numbers up to a given number (based on the sieve of Eratosthenes)
sieveOfEratosthens <- function(num){
  values <- rep(TRUE,num)
    values[1] <- FALSE
    prev.prime <- 2
    for (i in prev.prime:sqrt(num)) {
      values[seq.int(2* prev.prime, num, prev.prime)] <- FALSE
      prev.prime <- prev.prime + min(which(values[(prev.prime+1):num]))
    }
    return(which(values))
}

print(sieveOfEratosthens(100))

#clear code not mind, copied it from the internet

