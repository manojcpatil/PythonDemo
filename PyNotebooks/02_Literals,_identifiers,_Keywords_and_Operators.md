# Python as Calculator

Some Python code that demonstrates how Python can be used as a calculator:


```python
# Basic arithmetic operations
print(2 + 3)  # addition
print(2 - 3)  # subtraction
print(2 * 3)  # multiplication
print(2 / 3)  # division
print(2 ** 3) # exponentiation
print(2 % 3)  # modulus (remainder)
```

    5
    -1
    6
    0.6666666666666666
    8
    2
    


```python
# Using parentheses for order of operations
print((2 + 3) * 4)  # should output 20
```

    20
    


```python
# Assigning values to variables and using them in calculations
x = 5
y = 3
print(x + y)  # should output 8
print(x - y)  # should output 2
print(x * y)  # should output 15
print(x / y)  # should output 1.6666666666666667
```

    8
    2
    15
    1.6666666666666667
    

# Literals

In Python, a literal is a notation that represents a fixed value in your code. Literals can be of several types, including:

- Numeric literals: These include integers, floating-point numbers, and complex numbers. Numeric literals can be written in several formats, such as decimal, hexadecimal, or scientific notation.

- String literals: These represent sequences of characters enclosed in quotes, either single quotes ('...') or double quotes ("..."). Triple quotes ("""...""") can be used for multi-line strings.

- Boolean literals: These are the two constant values True and False, which represent logical true and false values, respectively.

- None literal: This is a special value that represents the absence of a value. It is represented by the keyword None.

Here are some examples of literals in Python:


```python
# Numeric literals
x = 42
y = 3.14159
z = 1 + 2j

# String literals
s1 = 'hello'
s2 = "world"
s3 = """This is a multi-line
string"""

# Boolean literals
b1 = True
b2 = False

# None literal
n = None
```

Literals are used throughout Python code to represent fixed values that are used in computations, comparisons, and other operations. It's important to use the correct type of literal for the task at hand, and to be aware of any implicit conversions that may occur when working with different types of literals together.


```python
# Identifiers
```

In Python, an identifier is a name used to identify a variable, function, class, module, or other object in your code. Identifiers must follow certain rules and conventions to be valid.

Here are the rules for valid Python identifiers:

The first character must be a letter or underscore (_).

The remaining characters can be letters, digits, or underscores.

Identifiers are case-sensitive, meaning that "spam" and "Spam" are considered different identifiers.

Reserved words (keywords) cannot be used as identifiers.

Here are some examples of valid and invalid identifiers:


```python
# Valid identifiers
spam = 42
_eggs = "ham"
__foo__ = 3.14

# Invalid identifiers
#4spam = "oops"
#eggs$ = "oops again"
#class = "nope"

```

Note that reserved words like "class" and "if" cannot be used as identifiers.

Here's an example of how identifiers are used in Python code:


```python
# Define a function that takes two arguments and returns their sum
def add_numbers(a, b):
    result = a + b
    return result

# Call the function with some arguments
x = 5
y = 7
z = add_numbers(x, y)
print(z)  # Output: 12

```

    12
    

In this example, "add_numbers" is an identifier for the function, "a" and "b" are identifiers for the function's arguments, and "result" is an identifier for a local variable within the function. The variables "x", "y", and "z" are also identifiers used in the main program outside of the function.

# Keywords

In Python, keywords are reserved words that have a special meaning and cannot be used as identifiers (variable names, function names, etc.) in your code. Here is a list of Python keywords:

and
as
assert
break
class
continue
def
del
elif
else
except
False
finally
for
from
global
if
import
in
is
lambda
None
nonlocal
not
or
pass
raise
return
True
try
while
with
yield


Here are some examples of how keywords are used in Python code:


```python
# Defining a function
def my_function(a, b):
    return a + b

# Using a conditional statement
if x > 0 and y < 0:
    print("x is positive and y is negative")

# Using a loop
for i in range(10):
    print(i)

# Using the "in" keyword to check if an element is in a list
my_list = [1, 2, 3, 4, 5]
if 3 in my_list:
    print("3 is in the list")

# Using the "try" and "except" keywords to handle exceptions
try:
    result = 1 / 0
except ZeroDivisionError:
    print("Cannot divide by zero")

```

    0
    1
    2
    3
    4
    5
    6
    7
    8
    9
    3 is in the list
    Cannot divide by zero
    

In these examples, keywords such as "def", "if", "for", "in", and "try" are used to define functions, perform conditional statements, iterate over data structures, check for membership in a list, and handle exceptions. It's important to avoid using keywords as identifiers in your code to avoid syntax errors.

### Difference between keywords and identifiers

In Python, keywords and identifiers are two distinct concepts. Here's a brief overview of the differences between them:

1. Keywords:
- Keywords are reserved words in Python that have a predefined meaning and cannot be used as identifiers (variable names, function names, etc.).
- Examples of keywords in Python include if, else, while, for, def, class, import, try, except, finally, and, or, not, True, False, None, etc.
- Keywords are used to define the syntax and structure of Python programs and cannot be redefined or modified.

2. Identifiers:
- Identifiers are user-defined names given to variables, functions, classes, modules, etc. in Python.
- Identifiers can consist of a combination of letters (uppercase and lowercase), digits, and underscore (_) character, but cannot start with a digit.
- Examples of valid identifiers in Python include my_variable, my_function, MyClass, my_module, etc.
- Identifiers are used to refer to specific objects or entities within a Python program and can be redefined or modified.

In summary, while both keywords and identifiers are used to define Python programs, keywords are reserved words that have a predefined meaning and cannot be used as identifiers, while identifiers are user-defined names given to variables, functions, classes, modules, etc. in Python.

# Operators

Here are some examples of how to use different types of operators in Python:

Arithmetic operators:


```python
a = 10
b = 3

# Addition operator
c = a + b
print(c)  # Output: 13

# Subtraction operator
c = a - b
print(c)  # Output: 7

# Multiplication operator
c = a * b
print(c)  # Output: 30

# Division operator
c = a / b
print(c)  # Output: 3.3333333333333335

# Modulus operator (returns the remainder of division)
c = a % b
print(c)  # Output: 1

# Exponentiation operator
c = a ** b
print(c)  # Output: 1000

```

    13
    7
    30
    3.3333333333333335
    1
    1000
    

2. Relational operators:


```python
a = 10
b = 3

# Less than operator
c = a < b
print(c)  # Output: False

# Greater than operator
c = a > b
print(c)  # Output: True

# Less than or equal to operator
c = a <= b
print(c)  # Output: False

# Greater than or equal to operator
c = a >= b
print(c)  # Output: True

# Equality operator
c = a == b
print(c)  # Output: False

# Inequality operator
c = a != b
print(c)  # Output: True
```

    False
    True
    False
    True
    False
    True
    

3. Logical or Boolean operators:


```python
a = True
b = False

# Logical AND operator
c = a and b
print(c)  # Output: False

# Logical OR operator
c = a or b
print(c)  # Output: True

# Logical NOT operator
c = not a
print(c)  # Output: False

```

    False
    True
    False
    

4. Assignment operators:


```python
a = 10

# Simple assignment
b = a
print(b)  # Output: 10

# Compound assignment (addition)
a += 5
print(a)  # Output: 15

# Compound assignment (multiplication)
a *= 2
print(a)  # Output: 30

```

    10
    15
    30
    

5. Ternary operator


```python
a = 10
b = 3

# Ternary operator (if-else statement in one line)
c = a if a > b else b
print(c)  # Output: 10

```

    10
    

6. Bitwise operators:


```python
a = 0b1010
b = 0b0101

# Bitwise AND operator
c = a & b
print(c)  # Output: 0b0000 (0 in decimal)

# Bitwise OR operator
c = a | b
print(c)  # Output: 0b1111 (15 in decimal)

# Bitwise XOR operator
c = a ^ b
print(c)  # Output: 0b1111 (15 in decimal)

# Bitwise NOT operator
c = ~a
print(c)  # Output: -11 (in two's complement)

# Bitwise left shift operator
c = a << 1
print(c)  # Output: 0b10100 (20 in decimal)

# Bitwise right shift operator
c = a >> 1
print(c)  # Output: 0b0101 (5 in decimal)
```

    0
    15
    15
    -11
    20
    5
    

7. Increment or Decrement operators:


```python
a = 10

# Increment operator (add 1)
a += 1
print(a) 

```

    11
    

### Assignments

1. Arithmetic operators:
- Write a Python program to calculate the area of a rectangle using the multiplication operator.
- Write a Python program to convert temperature from Fahrenheit to Celsius using the subtraction and division operators.
2. Relational operators:
- Write a Python progr- am to check if a given number is even or odd using the modulus operator.
- Write a Python program to check if a given year is a leap year using the equality and logical operators.
3. Logical or Boolean - operators:
- Write a Python progr- am to check if a given number is between 1 and 10 using the logical AND operator.
- Write a Python program to check if a given character is a vowel or a consonant using the logical OR operator.
4. Assignment operator- s:
- Write a Python progr- am to calculate the factorial of a given number using the compound assignment operator.
- Write a Python program to find the sum of first n natural numbers using the simple assignment operator.
5. Ternary operato- r:
- Write a Python p- rogram to find the maximum of two given numbers using the ternary operator.
- Write a Python program to find the sign of a given number using the ternary operator.
6. Bitwise operato- rs:
- Write a Python p- rogram to check if a given number is a power of 2 using the bitwise AND operator.
- Write a Python program to set the nth bit of a given number using the bitwise OR operator.
7. Increment or Decrement operators:
- Write a Python program to print the first 10 natural numbers using the increment operator.
- Write a Python program to print the first 10 even numbers using the increment operator.
