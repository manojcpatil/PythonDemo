Certainly! Here are Python code snippets for each of the specified tasks:

### 1. Leap Year Checker

```python
def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False

# Example usage:
user_year = int(input("Enter a year: "))
if is_leap_year(user_year):
    print(f"{user_year} is a leap year.")
else:
    print(f"{user_year} is not a leap year.")
```

### 2. Temperature Converter

```python
def temperature_converter():
    celsius = float(input("Enter temperature in Celsius: "))
    fahrenheit = (celsius * 9/5) + 32

    print(f"{celsius} Celsius is equal to {fahrenheit:.2f} Fahrenheit.")
    
    if fahrenheit >= 80:
        print("It's hot!")
    elif 60 <= fahrenheit < 80:
        print("It's moderate.")
    else:
        print("It's cold.")

# Example usage:
temperature_converter()
```

### 3. Number Classifier

```python
def classify_number(num):
    if num > 0:
        print("Positive number.")
    elif num < 0:
        print("Negative number.")
    else:
        print("Zero.")

    if num % 2 == 0:
        print("Even number.")
    else:
        print("Odd number.")

# Example usage:
user_number = int(input("Enter an integer: "))
classify_number(user_number)
```

### 4. Vowel or Consonant

```python
def check_vowel_or_consonant(char):
    vowels = "AEIOUaeiou"
    if char.isalpha() and char in vowels:
        print(f"{char} is a vowel.")
    elif char.isalpha():
        print(f"{char} is a consonant.")
    else:
        print("Invalid input. Please enter a single character.")

# Example usage:
user_char = input("Enter a single character: ")
check_vowel_or_consonant(user_char)
```

### 5. Simple Calculator

```python
def simple_calculator():
    num1 = float(input("Enter the first number: "))
    operator = input("Enter an operator (+, -, *, /): ")
    num2 = float(input("Enter the second number: "))

    try:
        if operator == '+':
            result = num1 + num2
        elif operator == '-':
            result = num1 - num2
        elif operator == '*':
            result = num1 * num2
        elif operator == '/':
            result = num1 / num2
        else:
            raise ValueError("Invalid operator.")
        
        print(f"Result: {result}")

    except ZeroDivisionError:
        print("Error: Division by zero.")

# Example usage:
simple_calculator()
```

### 6. Discount Calculator

```python
def discount_calculator():
    original_price = float(input("Enter the original price: "))
    discount_percentage = float(input("Enter the discount percentage: "))

    discounted_price = original_price * (1 - discount_percentage/100)
    print(f"The discounted price is: {discounted_price:.2f}")

# Example usage:
discount_calculator()
```

### 7. Guess the Number

```python
import random

def number_guessing_game():
    target_number = random.randint(1, 100)
    guess = None
    attempts = 0
    
    while guess != target_number:
        guess = int(input("Guess the number (between 1 and 100): "))
        attempts += 1
        
        if guess < target_number:
            print("Too low! Try again.")
        elif guess > target_number:
            print("Too high! Try again.")
    
    print(f"Congratulations! You guessed the number {target_number} in {attempts} attempts.")

# Example usage:
number_guessing_game()
```

### 8. Triangle Classifier

```python
def classify_triangle(a, b, c):
    if a + b > c and a + c > b and b + c > a:
        if a == b == c:
            print("Equilateral triangle.")
        elif a == b or b == c or a == c:
            print("Isosceles triangle.")
        else:
            print("Scalene triangle.")
    else:
        print("Invalid input. The sides cannot form a valid triangle.")

# Example usage:
side_a = float(input("Enter the length of side a: "))
side_b = float(input("Enter the length of side b: "))
side_c = float(input("Enter the length of side c: "))
classify_triangle(side_a, side_b, side_c)
```

### 9. BMI Calculator

```python
def bmi_calculator(weight, height):
    bmi = weight / (height ** 2)

    if bmi < 18.5:
        print("Underweight.")
    elif 18.5 <= bmi < 24.9:
        print("Normal weight.")
    elif 25 <= bmi < 29.9:
        print("Overweight.")
    else:
        print("Obese.")

# Example usage:
user_weight = float(input("Enter weight in kilograms: "))
user_height = float(input("Enter height in meters: "))
bmi_calculator(user_weight, user_height)
```

### 10. Time Converter

```python
def time_converter(seconds):
    hours, remainder = divmod(seconds, 3600)
    minutes, seconds = divmod(remainder, 60)

    print(f"{seconds} seconds is equal to {hours} hours, {minutes} minutes, and {seconds} seconds.")

# Example usage:
user_seconds = int(input("Enter the total seconds: "))
time_converter(user_seconds)
```

Feel free to ask if you have any questions or need further clarification on any of the code snippets!
