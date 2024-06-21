#Assignment2
#Neha Kodali

#1) Prompt the user to enter a three digit positive number
inputnumber <- readline(prompt = "Enter a three digit positive number")
inputnumeric <- as.numeric(inputnumber) #as.numeric converts a number into a numeric but converts character into na.
# AB: Functions are effective and comments are descriptive enough; however, for added readability/style I would have formatted the comment above under that second line of code instead.

#2) Check if the user input is numeric. If not, print an error message and quit.
# the is.na identifies if inputnumeric is na, if it is then it shows true and proceeds to output an error message.
if (is.na(inputnumeric) == T) {
  print("Error Input")
}
# AB: The code functions perfectly and prints a meaningful error message. I wonder if the error could be a bit more descriptive for user understanding; for example: "error, input is not numeric". 
# AB: In addition, a function to quit is missing; I suggest the "stop" function for future codes as it does not entirely quit the R session like the "quit" function does.

#3 Check if the number is narcissistic. 
#A narcissistic number, or an Armstrong number, is a number that is equal to the sum of the cubes of its own digits. 
#153, 370, 371, 407 are three digit Armstrong numbers.
#First I downloaded the string package, and then utilized str_split function to split the three digits in inputnumeric variable.
library(stringr)
narnumber <- unlist(str_split(inputnumeric, pattern = "")) #the pattern argument uses the regular expression to identify how to split the variable narnumber.
numnar <- as.numeric(narnumber) #as.numeric is converting the variable narnumber into a numeric.
sumnumnar <- numnar[1]^3 + numnar[2]^3 + numnar[3]^3 #I cubed the first, second, and third index and added them together in the variable sumnumnar.
# AB: The comments are very descriptive and aid user understanding on how exactly the functions were used and for what purpose. For increased readability and style, I recommend formatting the comments under or above the lines of code, not within the same line.
# AB: The variable names chosen are effective and meaningful.
# AB: the use of the "stringr" package is very efficient and functional; the three digits of the inputed number are returned as individual indexes.
# AB: The combined use of the "unlist", "strsplit", and "pattern" functions are all effective and return a functional method for extracting the three digits in order to perform math on them.
# AB: The idea to individually cube the indexes and assign them as one variable is functional and effective.

#4) Display the result with an appropriate message, e.g. “127 is not an Armstrong number” or “370 is a narcissistic number” or any additional fun text you may want to add. if else identifies if sumnumnar is equal to the input number then that means it is a narcissistic number and it prints, "is an narcissistic number", if sumnumnar is not equal to the input number it prints, "is not a narcissistic number".
if(sumnumnar==inputnumeric) {
  print(sumnumnar,"is a narcissistic number")
} else {
  print(sumnumnar,"is not a narcissistic number")
}
# AB: The conditional is set up correctly and is perfectly functional in performing a proper check for the presence of a narcissistic number.
# AB: The use of the "print" function and the message displayed are functional and descriptive.

# AB GENERAL COMMENTS: 
#   -The code runs efficiently; no errors nor warning messages returned
#   -The coder’s language in the script is simple, colloquial, yet accurate in terms of necessary coding and statistical terms
#   -The coder’s language is also very descriptive, which not only shows an understanding of the functions being used and for what purpose, but also allows for increased reproducibility of the code
#   -The code fulfills the requirements of the Assignment 2 criteria, returning accurate and meaningful computations/outputs for each question
#   -Code shows there was attention taken to not only requirement fulfilment, but also readability; I only suggest formatting comments in separate lines instead of within the same line of code

