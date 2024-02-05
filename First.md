# Introduction to Python, Python Data Types-I

## 1. Temperature Conversion

Write a Python program that takes user input for a temperature in Celsius and converts it to Fahrenheit. Display the result with an appropriate message.

```python
# Python Program for Temperature Conversion
celsius_temperature = float(input("Enter temperature in Celsius: "))
fahrenheit_temperature = (celsius_temperature * 9/5) + 32
print(f"{celsius_temperature} Celsius is equal to {fahrenheit_temperature} Fahrenheit.")
```

## 2. Character Counter

Develop a Python script that takes a user input string and counts the number of occurrences of each character in the string. Display the results in a readable format.

```python
# Python Program for Character Counter
user_string = input("Enter a string: ")
character_count = {}

for char in user_string:
    if char in character_count:
        character_count[char] += 1
    else:
        character_count[char] = 1

print("Character Counts:")
for char, count in character_count.items():
    print(f"{char}: {count}")
```

## 3. Even or Odd Checker

Create a Python program that prompts the user to enter an integer and checks if it's an even or odd number. Display a message indicating whether the number is even or odd.

```python
# Python Program for Even or Odd Checker
user_number = int(input("Enter an integer: "))

if user_number % 2 == 0:
    print(f"{user_number} is an even number.")
else:
    print(f"{user_number} is an odd number.")
```

## 4. Quadratic Equation Solver

Write a Python script that solves a quadratic equation of the form \(ax^2 + bx + c = 0\) given user input for coefficients \(a\), \(b\), and \(c\). Display the solutions with appropriate messages.

```python
# Python Program for Quadratic Equation Solver
import cmath

a = float(input("Enter coefficient a: "))
b = float(input("Enter coefficient b: "))
c = float(input("Enter coefficient c: "))

# Calculate the discriminant
discriminant = cmath.sqrt(b**2 - 4*a*c)

# Solve the quadratic equation
solution1 = (-b + discriminant) / (2*a)
solution2 = (-b - discriminant) / (2*a)

print(f"Solutions: {solution1} and {solution2}")
```

## 5. Factorial Calculator

Develop a Python program that calculates the factorial of a given non-negative integer entered by the user. Display the result with a suitable message.

```python
# Python Program for Factorial Calculator
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

user_integer = int(input("Enter a non-negative integer: "))
result = factorial(user_integer)
print(f"The factorial of {user_integer} is {result}.")
```

## 6. Guess the Number Game

Create a simple number-guessing game in Python. Generate a random number between 1 and 100, and allow the user to guess the number. Provide hints (higher or lower) until the correct number is guessed.

```python
# Python Program for Guess the Number Game
import random

target_number = random.randint(1, 100)

while True:
    user_guess = int(input("Guess the number (between 1 and 100): "))

    if user_guess == target_number:
        print("Congratulations! You guessed the correct number.")
        break
    elif user_guess < target_number:
        print("Try again. The number is higher.")
    else:
        print("Try again. The number is lower.")
```

## 7. List Operations

Implement a Python program that performs the following operations on a list of numbers entered by the user:

- Calculate the sum of the numbers.
- Find the maximum and minimum values.
- Sort the list in ascending order.

```python
# Python Program for List Operations
user_numbers = [float(x) for x in input("Enter a list of numbers separated by spaces: ").split()]

# Calculate sum
list_sum = sum(user_numbers)
print(f"Sum of the numbers: {list_sum}")

# Find maximum and minimum values
max_value = max(user_numbers)
min_value = min(user_numbers)
print(f"Maximum value: {max_value}")
print(f"Minimum value: {min_value}")

# Sort the list
sorted_list = sorted(user_numbers)
print(f"Sorted list: {sorted_list}")
```

## 8. Currency Converter

Write a Python program that converts an amount in one currency to another. Allow the user to input the amount, original currency, and target currency. Display the converted amount.

```python
# Python Program for Currency Converter
exchange_rates = {
    'USD': 1.18,  # Example exchange rate for USD to EUR
    'EUR': 1.0    # Example exchange rate for EUR to USD
}

amount = float(input("Enter the amount: "))
original_currency = input("Enter the original currency (e.g., USD): ").upper()
target_currency = input("Enter the target currency (e.g., EUR): ").upper()

converted_amount = amount * exchange_rates[target_currency] / exchange_rates[original_currency]
print(f"{amount} {original_currency} is equal to {converted_amount:.2f} {target_currency}.")
```
