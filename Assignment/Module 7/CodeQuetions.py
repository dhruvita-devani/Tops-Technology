

# Q.4 Write a Python program to check if a number is positive, negative or zero.
number = int(input("Enter Your Number Here: "))
if number >0:
    print("Number is positive")
if number <0:
    print("Number is Negative")
if number == 0:
    print("Number is Zero")



# In[3]:


# Q.5 Write a Python program to get the Factorial number of given numbers. 
# Function to calculate factorial
def factorial(n):
    # Base case: factorial of 0 or 1 is 1
    if n == 0 or n == 1:
        return 1
    else:
        # Recursive case: n * factorial of (n-1)
        return n * factorial(n - 1)

# Get user input
num = int(input("Enter a number to find its factorial: "))

# Calculate and display the factorial
if num < 0:
    print("Factorial is not defined for negative numbers.")
else:
    print(f"The factorial of {num} is {factorial(num)}.")


# In[5]:


# Q.6 Write a Python program to get the Fibonacci series of given range.
# Function to print Fibonacci series up to a given range
def fibonacci_series(n):
    # First two numbers in the Fibonacci series
    a, b = 0, 1
    
    # Print the Fibonacci series up to n terms
    print("Fibonacci series up to", n, "terms:")
    for _ in range(n):
        print(a, end=" ")
        a, b = b, a + b  # Update a and b for the next iteration

# Get user input
n = int(input("Enter the number of terms in the Fibonacci series: "))

# Display the Fibonacci series
fibonacci_series(n)


# In[7]:


# Q.9 Write python program that swap two number with temp variable and without temp variable.
# Function to swap two numbers using a temporary variable
def swap_with_temp(a, b):
    # Using a temporary variable to swap
    temp = a
    a = b
    b = temp
    return a, b

# Function to swap two numbers without using a temporary variable
def swap_without_temp(a, b):
    # Swapping without a temporary variable using tuple unpacking
    a, b = b, a
    return a, b

# Input two numbers
x = int(input("Enter first number: "))
y = int(input("Enter second number: "))

# Swap with temp variable
print("\nSwapping with a temporary variable:")
x, y = swap_with_temp(x, y)
print("First number:", x)
print("Second number:", y)

# Swap without temp variable
print("\nSwapping without a temporary variable:")
x, y = swap_without_temp(x, y)
print("First number:", x)
print("Second number:", y)


# In[9]:


# Q.10 Write a Python program to find whether a given number is even or odd, print out an appropriate message to the user.
num = int(input("Enter your Number is Here: "))
if num%2==0:
    print("Number is Even")
else:
    print("Number is odd")


# In[11]:


# Q.11 Write a Python program to test whether a passed letter is a vowel or not.
letter = str(input("Enter Your Letter In Capital Here: "))
if letter in "AEIOU":
   print("Your Letter Is Vowel")
else:
   print("Your Letter Is Not Vowel")




# In[15]:


# Q.12 Write a Python program to sum of three given integers. However, if two values are equal sum will be zero. 
integer1 =  int(input("Enter integer 1 Here: "))
integer2 =  int(input("Enter integer 2 Here: "))
integer3 =  int(input("Enter integer 3 Here: "))
if integer1==integer2 or integer1==integer3:
    print("Your integer sum is zero")
else:
    sum = integer1+integer2+integer3
    print("Your integer sum is",sum)


# In[17]:


# Q.13 Write a Python program that will return true if the two given integer values are equal or their sum or difference is 5.
integer1 = int(input("Enter integer 1 Here: "))
integer2 = int(input("Enter integer 2 Here: "))
if integer1==integer2 or integer1+integer2==5 or integer1-integer2==5:
    print("True")
else:
    print("False")


# In[21]:


### Q.14 Write a python program to sum of the first n positive integers. 
num1 = int(input("Enter Number 1 Here: "))
num2 = int(input("Enter Number 2 Here: "))
sum = num1 + num2
if sum >0:
    print("Sum of 2 integer is",sum)
else:
    print("")



#From goggle
n = int(input("Input a number: "))
sum_num = (n * (n + 1)) / 2
print("Sum of the first", n, "positive integers:", sum_num)


# In[23]:


# Q.15 Write a Python program to calculate the length of a string. 
sentence = str(input("Enter your sentence here: "))
print(len(sentence))


# In[25]:


# Q.16 Write a Python program to count the number of characters (character frequency) in a string 
para = "A data analyst's day is a whirlwind of numbers trends, and insights. They spend countless hours poring over datasets, searching for patterns and correlations. From analyzing customer behavior to predicting market trends, a data analyst's work is essential to making informed decisions. They use a variety of tools and techniques, such as SQL, Python, and statistical modeling, to extract meaningful information from raw data. Ultimately, their goal is to help businesses understand their data and make data-driven decisions that drive growth and success."
data_to_count = "a"
print("data word repeated time is :", para.count(data_to_count))


# In[27]:


# Q.19 Write a Python program to count the occurrences of each word in  given sentence given sentence 
para1 = "A data analyst's day is a whirlwind of numbers trends, and insights. They spend countless hours poring over datasets, searching for patterns and correlations. From analyzing customer behavior to predicting market trends, a data analyst's work is essential to making informed decisions. They use a variety of tools and techniques, such as SQL, Python, and statistical modeling, to extract meaningful information from raw data. Ultimately, their goal is to help businesses understand their data and make data-driven decisions that drive growth and success."
data_to_count1 = "data"
print("data word repeated time is :", para1.count(data_to_count1))


# In[29]:


# # Function to swap the first two characters of two strings
def swap_first_two_chars(str1, str2):
    # Swap the first two characters of each string
    if len(str1) >= 2 and len(str2) >= 2:
        # Swap the first two characters
        str1 = str2[:2] + str1[2:]
        str2 = str1[:2] + str2[2:]
    else:
        # If the strings are less than 2 characters, just return them as is
        return str1, str2
    return str1, str2

# Input two strings
string1 = input("Enter the first string: ")
string2 = input("Enter the second string: ")

# Swap the first two characters and combine them into a single string
string1, string2 = swap_first_two_chars(string1, string2)

# Combine the modified strings with a space in between
result = string1 + " " + string2

# Output the result
print("Resulting string:", result)


# In[33]:


### Q.21 Write a Python program to add 'in' at the end of a given string (length should be at least 3). If the given string already ends with 'ing' then add 'ly' instead if the string length of the given string is less than 3,leave it unchanged. 
# Input string
string1 = "ANSH"

# Check the length of the string
if len(string1) >= 3:
    # Check if the string ends with 'ing'
    if string1.endswith('ing'):
        string1 += 'ly'
    else:
        string1 += 'in'

# Output the modified string
print("Modified string:", string1)


# In[35]:


# Q.22 Write a Python function to reverses a string if its length is a multiple of 4.
string = "This is a string"
print(len(string))
if (len(string))%4==0:
    print(string)
 


# In[37]:


### Q.23 Write a Python program to get a string made of the first 2 and the last 2 chars from a given a string. If the string length is less than 2, return instead of the empty string. 
# Function to get the first 2 and last 2 characters of the string
def get_first_last_chars(string):
    # Check if the length of the string is less than 2
    if len(string) < 2:
        return ""  # Return an empty string
    else:
        # Return the first 2 and last 2 characters concatenated
        return string[:2] + string[-2:]

# Input string
string1 = input("Enter a string: ")

# Get the desired string and print the result
result = get_first_last_chars(string1)
print("Resulting string:", result)


# In[39]:


#24)Write a Python function to insert a string in the middle of a string. 
# Function to insert a string in the middle of another string
def insert_in_middle(original, to_insert):
    # Find the middle index
    middle_index = len(original) // 2
    
    # Insert the 'to_insert' string in the middle
    result = original[:middle_index] + to_insert + original[middle_index:]
    
    return result

# Input strings
original_string = input("Enter the original string: ")
insert_string = input("Enter the string to insert: ")

# Call the function and display the result
result_string = insert_in_middle(original_string, insert_string)
print("Resulting string:", result_string)


# In[41]:


#27)Suppose list1 is [2, 33, 222, 14, and 25], what is list1 [-1]? 
list1 = [2, 33, 222, 14, 25]

# Access the last element using index -1
last_element = list1[-1]

print(last_element)  # Output: 25


# In[ ]:


#29) Write a Python function to get the largest number, smallest num and sum of all from a list. 
list_of_29 = [52,56,48,2,8999]
def largest_smallest_totalsum(numbers):
    largest = max(numbers)
    smallest = min(numbers)
    total_sum = sum(numbers)
    return largest,smallest,total_sum
largest, smallest, total_sum = largest_smallest_totalsum(list_of_29)
sum = largest + smallest 
print("Largest number from the list = ",largest)
print("smallest number from the list = ",smallest)
print("sum of largest and smallest number from the list = ",sum)


# In[47]:


#30)How will you compare two lists? 
list_of_30 = [1,2,3]
list_of_301 = [1,2,3]
if list_of_30 ==list_of_301:
    print("list_of_30 & list_of_301 are same")
else:
    print("list_of_30 & list_of_301 are not same")


# In[49]:


#31) Write a Python program to count the number of strings where the string length is 2 or more and the first and last character are same from a given list of strings.
def count_strings(lst):
    count = 0
    for string in lst:
        if len(string) >= 2 and string[0] == string[-1]:  # Check if length is 2 or more and first & last character are the same
            count += 1
    return count

# Example list of strings
list_of_strings = ["aba", "xyz", "aa", "b", "abc", "ccc", "a", "radar"]

# Call the function and print the result
result = count_strings(list_of_strings)
print("Number of strings where the length is 2 or more and the first and last characters are the same:", result)


# In[53]:


#32)Write a Python program to remove duplicates from a list.
list_32 = [1,2,3,4,5]
list_321 = [11,22,3,44,55]



# In[55]:


#33)Write a Python program to check a list is empty or not. 
list_of_33 = []
if list_of_33 == []:
    print("List is Empty")
else:
    print("List is not Empty")


# In[57]:


#another way to find list is empty or not
if len(list_of_33) == 0:
    print("List is Empty")
else:
    print("List is not Empty")


# In[59]:


#34) Write a Python function that takes two lists and returns true if they have at least one common member. 
list34 = [1, 2, 3, 4]
list341= [4, 5, 6]

# Check if there is at least one common member
if any(item in list341 for item in list34):
    print("There is at least one common member")
else:
    print("No common members")


# In[61]:


#35) Write a Python program to generate and print a list of first and last 5 elements where the values are square of numbers between 1 and 30. 
# Generate a list of squares of numbers between 1 and 30
squares = [x**2 for x in range(1, 31)]

# Extract the first 5 and last 5 elements
first_5 = squares[:5]
last_5 = squares[-5:]

# Combine both parts
result = first_5 + last_5

# Print the result
print("First 5 and Last 5 elements of the squares list:", result)


# In[63]:


#36) Write a Python function that takes a list and returns a new list with unique elements of the first list. 
def get_unique_elements(list1, list2):
    # Combine both lists and convert to a set to remove duplicates
    unique_list = list(set(list1 + list2))
    return unique_list

# Example usage
list36 = [1, 2, 3, 4, 5]
list321 = [1, 2, 5, 6, 7, 8, 9, 10]

unique_elements = get_unique_elements(list36, list321)
print("List with unique elements from both lists:", unique_elements)



# In[65]:


#37)Write a Python program to convert a list of characters into a string. 
list_37 = ["H","e","l","l","o"," ","W","o","r","l","d"]
def list_to_string(list_37):
    return "".join(list_37)
    
result_37 = list_to_string(list_37)
print("converted_string is :",result_37)


# In[67]:


#38)Write a Python program to select an item randomly from a list. 
import random
def select_random_items(list_38):
    return random.choice(list_38)
list_38 = [1,2,3,4,5,6]
random_items = select_random_items(list_38)
print("randomly_items:",random_items)


# In[69]:


#40)Write a Python program to get unique values from a list 
list_40 = [1,2,2,3,4,4,5,6,7,8]
unique_value_40 = list(set(list_40))
print("unique values are ",unique_value_40)


# In[73]:


#42)Write a Python program to split a list into different variables. 
list_42 = ["Dhruvita devani","akshar dholakiya","Pushpa raj "]
1,2,3 ==list_42
print("dhruvita devani",1)
print("AKSHAR DHOLAKIYA",2)
print("pushpa raj ",3)


# In[77]:


#44)Write a Python program to create a tuple with different data types. 
tuple_44 = (1,"dhruvita",1.0,True,None)
print(tuple_44)


# In[79]:


#46)Write a Python program to convert a list of tuples into a dictionary. 
# Sample list of tuples
list_of_tuples = [('a', 1), ('b', 2), ('c', 3)]

# Convert list of tuples to a dictionary
dictionary = dict(list_of_tuples)

# Print the resulting dictionary
print(dictionary)


# In[85]:


#50)Write a Python script to check if a given key already exists in a dictionary. 
student_info = {
    "name": "dhruvita devani",
    "age": 21,
    "courses": ["Math", "Science", "History"],
    "grades": {"Math": "A", "Science": "B", "History": "A"},
    "is_active": True
}
if "name" in student_info:
    print("name key is given dictionary")


# In[87]:


#51)How Do You Traverse Through a Dictionary Object in Python?
for key,value in student_info.items():
    print(f"key = {key},value = {value}")
    


# In[89]:


#52)How Do You Check the Presence of a Key in A Dictionary?
my_dict = {'a': 1, 'b': 2, 'c': 3}

for key in my_dict:
    print(key)


# In[91]:


#53)Write a Python script to print a dictionary where the keys are numbers between 1 and 15. 

# Create a dictionary where keys are numbers from 1 to 15 and values are their squares
my_dict = {i: i**2 for i in range(1, 16)}

# Print the dictionary
print(my_dict)


# In[93]:


#54)Write a Python program to check multiple keys exists in a dictionary
# Sample dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3, 'd': 4}

# List of keys to check
keys_to_check = ['a', 'b', 'e']

# Check if all keys exist in the dictionary
if all(key in my_dict for key in keys_to_check):
    print("All keys exist in the dictionary.")
else:
    print("Not all keys exist in the dictionary.")


# In[95]:


#55)Write a Python script to merge two Python dictionaries
def merge_dicts_for_loop(dict1, dict2):
    # Create a copy of dict1 to avoid modifying the original
    merged_dict = dict1.copy()
    
    # Loop through dict2 and update merged_dict
    for key, value in dict2.items():
        merged_dict[key] = value
    
    return merged_dict

# Example dictionaries
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}

# Merging dictionaries using for loop
merged_dict = merge_dicts_for_loop(dict1, dict2)

# Print the merged dictionary
print("Merged Dictionary (using for loop):", merged_dict)


# In[97]:


#
# Sample dictionary
sample_dict = {'a': 50, 'b': 100, 'c': 150, 'd': 200, 'e': 120}

# Sorting the dictionary by values in descending order and selecting the top 3
highest_values = sorted(sample_dict.values(), reverse=True)[:3]

# Printing the highest 3 values
print("Highest 3 values:", highest_values)


# In[99]:


#56)Write a Python program to map two lists into a dictionary Sample output: Counter ({'a': 400, 'b': 400,’d’: 400, 'c': 300}). 
from collections import Counter

# Sample input lists
keys = ['a', 'b', 'd', 'c']
values = [400, 400, 400, 300]

# Mapping the two lists into a dictionary
my_dict = dict(zip(keys, values))

# Using Counter to display the dictionary
counter_dict = Counter(my_dict)

print(counter_dict)


# In[101]:


#57)Write a Python program to find the highest 3 values in a dictionary 
# Sample dictionary
my_dict = {'a': 100, 'b': 200, 'c': 300, 'd': 400, 'e': 500}

# Sort the dictionary by value in descending order and get the top 3
highest_values = sorted(my_dict.values(), reverse=True)[:3]

# Print the highest 3 values
print("The highest 3 values are:", highest_values)


# In[103]:


#58)Write a Python program to combine values in python list of dictionaries.
#Sample data: [{'item': 'item1', 'amount': 400}, {'item': 'item2', 'amount':300}, o {'item': 'item1', 'amount': 750}]
#Expected Output:
#• Counter ({'item1': 1150, 'item2': 300})
from collections import Counter

# Sample data
data = [{'item': 'item1', 'amount': 400}, {'item': 'item2', 'amount': 300}, {'item': 'item1', 'amount': 750}]

# Initialize a Counter to keep track of combined amounts
counter = Counter()

# Loop through the list of dictionaries and sum the amounts for each item
for entry in data:
    counter[entry['item']] += entry['amount']

# Display the combined amounts
print(counter)


# In[105]:


#59)Write a Python program to create a dictionary from a string. Note: Track the count of the letters from the string. 
# Sample string
input_string = "programming"

# Create an empty dictionary to store the count of each letter
letter_count = {}

# Loop through each character in the string
for letter in input_string:
    # If the letter is already in the dictionary, increment its count
    if letter in letter_count:
        letter_count[letter] += 1
    else:
        # If the letter is not in the dictionary, add it with count 1
        letter_count[letter] = 1

# Display the dictionary
print(letter_count)


# In[107]:


#60)Sample string: 'w3resource' Expected output:
#• {'3': 1,’s’: 1, 'r': 2, 'u': 1, 'w': 1, 'c': 1, 'e': 2, 'o': 1}
# Sample string
input_string = 'w3resource'

# Create an empty dictionary to store the count of each character
char_count = {}

# Loop through each character in the string
for char in input_string:
    # If the character is already in the dictionary, increment its count
    if char in char_count:
        char_count[char] += 1
    else:
        # If the character is not in the dictionary, add it with count 1
        char_count[char] = 1

# Display the dictionary with character counts
print(char_count)


# In[109]:


#61)Write a Python function to calculate the factorial of a number (a nonnegative integer)
def factorial(n):
    # Ensure that the number is a nonnegative integer
    if n < 0:
        return "Factorial is not defined for negative numbers"
    
    # Initialize the result to 1 (factorial of 0 is 1)
    result = 1
    
    # Calculate the factorial using a loop
    for i in range(1, n + 1):
        result *= i
        
    return result

# Example usage:
num = 5
print(f"The factorial of {num} is {factorial(num)}")


# In[111]:


#62)Write a Python function to check whether a number is in a given range 
def is_in_range(number, lower, upper):
    # Check if the number is within the given range (inclusive)
    if lower <= number <= upper:
        return True
    else:
        return False

# Example usage:
num = 5
lower_bound = 1
upper_bound = 10
print(f"Is {num} in the range {lower_bound} to {upper_bound}? {is_in_range(num, lower_bound, upper_bound)}")


# In[113]:


#63)Write a Python function to check whether a number is perfect or not. 
def is_perfect(number):
    # A perfect number must be positive
    if number <= 0:
        return False
    
    # Find the sum of proper divisors (excluding the number itself)
    sum_of_divisors = 0
    for i in range(1, number):
        if number % i == 0:  # i is a divisor of number
            sum_of_divisors += i
    
    # Check if the sum of divisors is equal to the number
    return sum_of_divisors == number

# Example usage:
num = 6
print(f"Is {num} a perfect number? {is_perfect(num)}")


# In[115]:


#64)Write a Python function that checks whether a passed string is palindrome or not
def is_palindrome(s):
    # Remove spaces and convert the string to lowercase for case-insensitive comparison
    cleaned_string = ''.join(e.lower() for e in s if e.isalnum())
    
    # Check if the cleaned string is equal to its reverse
    return cleaned_string == cleaned_string[::-1]

# Example usage:
input_string = "A man a plan a canal Panama"
print(f"Is the string '{input_string}' a palindrome? {is_palindrome(input_string)}")


# In[117]:


#66)How can you pick a random item from a list or tuple? 
#Example for list
import random

# Sample list
my_list = [10, 20, 30, 40, 50]

# Pick a random item from the list
random_item = random.choice(my_list)

print(f"A random item from the list: {random_item}")

#Example for tuple
import random

# Sample tuple
my_tuple = ('apple', 'banana', 'cherry', 'date')

# Pick a random item from the tuple
random_item = random.choice(my_tuple)

print(f"A random item from the tuple: {random_item}")


# In[119]:


#67)How can you pick a random item from a range? 
import random

# Define the range (for example, from 1 to 10)
my_range = range(1, 11)

# Pick a random item from the range
random_item = random.choice(my_range)

print(f"A random item from the range: {random_item}")


# In[121]:


#68)How can you get a random number in python?
import random

# Generate a random integer between 1 and 10 (inclusive)
random_integer = random.randint(1, 10)

print(f"A random integer between 1 and 10: {random_integer}")


# In[123]:


#69)How will you set the starting value in generating random numbers?
import random

# Set the seed value for random number generation
random.seed(42)

# Generate a random integer between 1 and 10
random_integer = random.randint(1, 10)

print(f"A random integer between 1 and 10: {random_integer}")

# Generate a random floating point number
random_float = random.random()

print(f"A random float between 0 and 1: {random_float}")


# In[125]:


#70) How will you randomize the items of a list in place? 
import random

# Sample list
my_list = [10, 20, 30, 40, 50]

# Shuffle the list in place
random.shuffle(my_list)

# Print the shuffled list
print("Shuffled list:", my_list)


# In[9]:


# Open the file in read mode
with open(r"C:\Users\dhruv\Downloads\Sales.csv", "r") as file:
    # Read the entire content of the file
    content = file.read()

# Print only the first 500 characters to avoid large output
print(content[:500])


# In[13]:


with open("C:\\Users\\dhruv\\Downloads\\Sales.csv", "a") as file:
    file.write("\nThis is the text that is appended to the file.")

with open("C:\\Users\\dhruv\\Downloads\\Sales.csv", "r") as file:
    content = file.read()

print("Content of the file after appending:")
print(content[:500])


# In[17]:


#74)Write a Python program to read first n lines of a file
import pandas as pd

import matplotlib.pyplot as plt  # Matplotlib's pyplot is used for plotting
import seaborn as sns  # Seaborn for statistical plotting


# File path with double backslashes
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csv"

# Load the CSV file
df = pd.read_csv(file_path)

print(df.head())


# In[19]:


#75)Write a Python program to read last n lines of a file. 
print(df.tail())


# In[23]:


#76)Write a Python program to read a file line by line and store it into a list 
# Define the file path
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csv"

# Initialize an empty list to store the lines
lines_list = []

# Open the file and read it line by line
with open(file_path, "r") as file:
    # Loop through each line and append it to the list
    lines_list = file.readlines()

# Display the content stored in the list
print("Contents of the file stored in the list:")
for line in lines_list:
    print(line.strip())  # Using strip() to remove any extra newlines


# In[ ]:


#77)Write a Python program to read a file line by line store it into a variable
# Define the file path
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csv"

# Initialize an empty string to store the content
file_content = ""

# Open the file and read it line by line
with open(file_path, "r") as file:
    # Loop through each line and append it to the file_content variable
    for line in file:
        file_content += line

# Display the content stored in the variable
print("Content of the file stored in the variable:")
print(file_content)


# In[ ]:


#78)Write a python program to find the longest words. 
def find_longest_words(text):
    # Split the text into words
    words = text.split()
    
    # Find the length of the longest word
    max_length = max(len(word) for word in words)
    
    # Find all words that are of the longest length
    longest_words = [word for word in words if len(word) == max_length]
    
    return longest_words

# Example text
text = "Python is an amazing programming language, and it is also quite versatile."

# Find the longest words
longest_words = find_longest_words(text)

# Display the longest word(s)
print("The longest word(s):", longest_words)


# In[ ]:


#79)Write a Python program to count the number of lines in a text file. 
# Define the file path
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csv"

# Initialize a counter for the number of lines
line_count = 0

# Open the file and read it line by line
with open(file_path, "r") as file:
    for line in file:
        line_count += 1  # Increment the counter for each line

# Display the number of lines
print(f"The number of lines in the file: {line_count}")


# In[ ]:


#80)Write a Python program to count the frequency of words in a file. 
from collections import Counter
import re

# Define the file path
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csv"

# Initialize an empty list to store all words
words_list = []

# Open the file and read it line by line
with open(file_path, "r") as file:
    for line in file:
        # Use regular expression to extract words (ignoring punctuation)
        words = re.findall(r'\b\w+\b', line.lower())  # Convert to lowercase to count words case-insensitively
        words_list.extend(words)

# Count the frequency of each word using Counter
word_frequency = Counter(words_list)

# Display the word frequencies
print("Word Frequency in the file:")
for word, count in word_frequency.items():
    print(f"{word}: {count}")


# In[ ]:


#81)Write a Python program to write a list to a file. 
# Define the list to be written to the file
my_list = ["apple", "banana", "cherry", "date", "elderberry"]

# Define the file path
file_path = "C:\\Users\\dhruv\\Downloads\\Sales.csvs"

# Open the file in write mode
with open(file_path, "w") as file:
    # Write each item in the list as a new line in the file
    for item in my_list:
        file.write(item + "\n")

print("List has been written to the file.")

