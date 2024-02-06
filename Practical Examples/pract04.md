### 1. Factorial Calculator

```python
def calculate_factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result

# Example usage:
user_number = int(input("Enter a positive integer: "))
factorial_result = calculate_factorial(user_number)
print(f"The factorial of {user_number} is: {factorial_result}")
```

### 2. Palindrome Checker

```python
def is_palindrome(input_str):
    cleaned_str = ''.join(char.lower() for char in input_str if char.isalnum())
    return cleaned_str == cleaned_str[::-1]

# Example usage:
user_input = input("Enter a string: ")
if is_palindrome(user_input):
    print(f"{user_input} is a palindrome.")
else:
    print(f"{user_input} is not a palindrome.")
```
```python
def isPalindrome(str):
    c=0
    for i in range(len(user_input)):
        if user_input[i]==user_input[len(user_input)-(i+1)]:
            c+=1
        else:
            break
    if c==len(user_input):
       return print(f'{user_input} is palindrome')
    else:
         print(f'{user_input} is not palindrome')
user_input=input('Enter the word').lower()
isPalindrome(user_input)
```
### 3. Multiplication Table Generator

```python
def generate_multiplication_table(n):
    for i in range(1, 11):
        print(f"{n} x {i} = {n*i}")

# Example usage:
user_number = int(input("Enter an integer: "))
generate_multiplication_table(user_number)
```

### 4. Fibonacci Sequence Generator

```python
def generate_fibonacci_sequence(limit):
    fib_sequence = [0, 1]
    while fib_sequence[-1] + fib_sequence[-2] <= limit:
        fib_sequence.append(fib_sequence[-1] + fib_sequence[-2])
    print("Fibonacci Sequence:", fib_sequence)

# Example usage:
user_limit = int(input("Enter a limit for the Fibonacci sequence: "))
generate_fibonacci_sequence(user_limit)
```
```python
def fibonacci_seq(limit):
    a,b=1,1
    print(a,'\t',b,end='\t')
    for i in range(2,n):
        c=a+b
        print(c,end='\t')
        a=b
        b=c
n=int(input('Enter the number'))
fibonacci_seq(n)
```

### 5. Prime Number Checker

```python
def is_prime(number):
    if number < 2:
        return False
    for i in range(2, int(number**0.5) + 1):
        if number % i == 0:
            return False
    return True

# Example usage:
user_number = int(input("Enter a number: "))
if is_prime(user_number):
    print(f"{user_number} is a prime number.")
else:
    print(f"{user_number} is not a prime number.")
```
###Another Way###
```python
def isPrime(n):
    c=0
    for i in range(2,n):
        if n%i==0:
            c+=1
            break
    if c==1:
        return print(f'{n} is not prime number')
    else:
        return print(f'{n} is prime number')
a=int(input('Enter the number'))
isPrime(a)
```

### 6. Pattern Printing - Pyramid

```python
def print_pyramid(height):
    for i in range(1, height + 1):
        spaces = ' ' * (height - i)
        stars = '*' * (2*i - 1)
        print(spaces + stars)

# Example usage:
user_height = int(input("Enter the height of the pyramid: "))
print_pyramid(user_height)
```

### 7. Rock, Paper, Scissors Game

```python
import random

def play_rps_game():
    choices = ['rock', 'paper', 'scissors']
    
    while True:
        user_choice = input("Enter your choice (rock, paper, scissors) or 'exit' to end: ").lower()
        
        if user_choice == 'exit':
            break

        if user_choice in choices:
            computer_choice = random.choice(choices)
            print(f"Computer chose {computer_choice}")

            if user_choice == computer_choice:
                print("It's a tie!")
            elif (user_choice == 'rock' and computer_choice == 'scissors') or \
                 (user_choice == 'paper' and computer_choice == 'rock') or \
                 (user_choice == 'scissors' and computer_choice == 'paper'):
                print("You win!")
            else:
                print("Computer wins!")
        else:
            print("Invalid choice. Please enter rock, paper, or scissors.")

# Example usage:
play_rps_game()
```

### 8. Power Calculator

```python
def calculate_power(base, exponent):
    result = 1
    for _ in range(exponent):
        result *= base
    return result

# Example usage:
user_base = float(input("Enter the base: "))
user_exponent = int(input("Enter the exponent: "))
power_result = calculate_power(user_base, user_exponent)
print(f"{user_base} raised to the power {user_exponent} is: {power_result}")
```
