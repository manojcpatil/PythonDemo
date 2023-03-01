# Introduction to Python

Python is a popular programming language that is widely used for a variety of purposes, including web development, data analysis, scientific computing, and artificial intelligence.

Here are some basic concepts and syntax to get you started with Python:

## Installing Python: 

You can download the latest version of Python from the official website, https://www.python.org/downloads/. Once downloaded, follow the installation instructions for your platform.


## Running Python: 

After installation, you can start the Python interpreter from your command line or terminal by typing python. You should see a prompt that looks like >>>, which means that Python is ready to accept your input.

## Data types: 

Python has several built-in data types, including integers, floats, strings, booleans, and lists. You can create variables to store data using the assignment operator =. For example, you can create an integer variable like this:


```python
x = 5
```

Python has several built-in data types, including:

- Numeric Types: These include integers, floating-point numbers, and complex numbers.
- Boolean Type: This represents the truth values True and False.
- Sequence Types: These include strings, lists, tuples, and range objects.
- Set Types: These include sets and frozensets.
- Mapping Types: These include dictionaries.
- Binary Types: These include bytes and bytearrays.

Here's a brief overview of each:

Numeric Types:

a. Integers: These are whole numbers, such as 5, -3, or 0.

b. Floating-Point Numbers: These are decimal numbers, such as 3.14 or -2.5.
    
c. Complex Numbers: These are numbers with both real and imaginary parts, such as 2+3j.

Boolean Type:
    This represents the truth values True and False.

Sequence Types:
    
a. Strings: These are sequences of characters, such as "Hello, World!" or 'Python'.
    
b. Lists: These are ordered sequences of values, which can be of different types, such as [1, 2, 3] or ['apple', 'banana', 'cherry'].
    
c. Tuples: These are ordered sequences of values, which can be of different types, but are immutable (cannot be changed), such as (1, 2, 3) or ('apple', 'banana', 'cherry').
    
d. Range objects: These are sequences of numbers, created using the range() function, such as range(10) or range(1, 11, 2).


Set Types:
    
a. Sets: These are unordered collections of unique elements, such as {1, 2, 3} or {'apple', 'banana', 'cherry'}.
    
b. Frozensets: These are immutable sets, such as frozenset({1, 2, 3}).

Mapping Types:
    
a. Dictionaries: These are unordered collections of key-value pairs, such as {'name': 'John', 'age': 25}.

Binary Types:
    
a. Bytes: These are sequences of integers in the range 0-255, representing bytes of data, such as b'hello'.
    
b. Bytearrays: These are mutable versions of bytes, which can be changed in place.

## Control structures: 

Python provides several control structures that allow you to change the flow of a program's execution. Here are the main control structures in Python:

1. Conditional statements: These allow you to execute different blocks of code based on a condition.

The syntax of conditional statements is as follows:

if condition:
    # code to execute if the condition is True
elif condition2:
    # code to execute if the condition2 is True
else:
    # code to execute if the condition and condition2 are False


```python
x = 5

if x > 0:
    print("x is positive")
elif x < 0:
    print("x is negative")
else:
    print("x is zero")
```

    x is positive
    

2. Loops: These allow you to repeat a block of code multiple times.

Python has two types of loops:

a. For loop: This loop iterates over a sequence of elements, such as a list or a string.

The syntax of a for loop is as follows:

for variable in sequence:
    # code to execute for each element in the sequence



```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(fruit)
```

    apple
    banana
    cherry
    

b. While loop: This loop executes a block of code as long as a condition is True.

The syntax of a while loop is as follows:

while condition:
    # code to execute as long as the condition is True


```python
i = 0

while i < 5:
    print(i)
    i += 1
```

    0
    1
    2
    3
    4
    

3. Control statements: These allow you to change the flow of a loop or a function.

Python has three types of control statements:

a. Break: This statement terminates a loop prematurely.

Example:


```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    if fruit == "banana":
        break
    print(fruit)

```

    apple
    

b. Continue: This statement skips the current iteration of a loop and goes to the next one.

Example:


```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    if fruit == "banana":
        continue
    print(fruit)

```

    apple
    cherry
    

c. Return: This statement exits a function and returns a value.
    
Example:


```python
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)

print(result)  # Output: 8

```

    8
    

## 5. Functions: 

In Python, a function is a block of code that performs a specific task and can be reused throughout a program. Functions can take input arguments, perform operations on those inputs, and return results.

Here's the basic syntax of a function in Python:

def function_name(argument1, argument2, ...):
    # code to perform the function's task
    return result


The keyword def is used to define a function, followed by the function's name and its input arguments in parentheses. The colon : signifies the start of the function's code block, which must be indented. The return statement is used to send the function's result back to the caller.

Here's an example function that takes two numbers as input arguments and returns their sum:


```python
def add_numbers(x, y):
    result = x + y
    return result

```

To call this function, you simply pass in the required arguments, like this:


```python
sum1 = add_numbers(5, 7)
print(sum1)  # Output: 12
```

    12
    

In Python, functions can also have default arguments, which are used if no value is provided for that argument. Here's an example:


```python
def greet(name, greeting="Hello"):
    print(greeting + ", " + name + "!")
```

In this case, the greeting argument has a default value of "Hello". If you call the function with only one argument, like this


```python
greet("Alice", "Hi")
```

    Hi, Alice!
    

The function will use the default value for greeting and output "Hello, Alice!".

Functions in Python can also accept a variable number of arguments. This is useful when you don't know how many arguments will be passed in advance. Here's an example:



```python
def calculate_average(*numbers):
    total = sum(numbers)
    count = len(numbers)
    average = total / count
    return average
```

In this case, the *numbers syntax tells Python to accept any number of arguments and pack them into a tuple. You can call this function with any number of arguments, like this:


```python
result = calculate_average(2, 4, 6, 8)
print(result)  # Output: 5.0
```

    5.0
    

Finally, Python also allows functions to return multiple values as a tuple. Here's an example:


```python
def get_name_and_age():
    name = "Alice"
    age = 30
    return name, age
```

To call this function and get its return values, you can use tuple unpacking like this:


```python
name, age = get_name_and_age()
print(name)  # Output: "Alice"
print(age)   # Output: 30
```

    Alice
    30
    

## Libraries in Python

In Python, a library is a collection of modules that can be imported and used in a program to provide additional functionality. There are many libraries available in Python, covering a wide range of applications from scientific computing to web development. Here are some of the most commonly used libraries in Python:

- NumPy: This library provides support for numerical operations and mathematical functions, including arrays, linear algebra, and Fourier transforms.

- Pandas: This library provides tools for data analysis and manipulation, including data structures like data frames and tools for reading and writing data in various formats.

- Matplotlib: This library provides tools for creating data visualizations, including charts, graphs, and histograms.

- SciPy: This library provides advanced scientific computing tools, including optimization, signal processing, and statistics.

- TensorFlow: This library provides tools for machine learning and deep learning, including neural networks, training algorithms, and model evaluation.

- Flask: This library provides tools for building web applications, including routing, templates, and request handling.

- Requests: This library provides tools for sending HTTP requests and handling responses, including authentication, cookies, and proxies.

- Beautiful Soup: This library provides tools for web scraping, including parsing HTML and XML documents and extracting data from them.

To use a library in a Python program, you first need to install it using a package manager like pip. Once installed, you can import the library and use its functions and classes in your program. For example, to import the NumPy library and create an array of random numbers, you can use the following code:


```python
import numpy as np

# Create an array of random numbers
arr = np.random.rand(5)

print(arr)  # Output: [0.69133188 0.04159849 0.07120902 0.63135726 0.14760516]
```

    [0.54551479 0.58689657 0.14800275 0.18529683 0.00682192]
    


```python
from builtins import *
import pandas
```

In this example, import numpy as np imports the NumPy library and assigns it the alias np for convenience. The np.random.rand(5) function creates an array of 5 random numbers between 0 and 1, which is then printed to the console using print(arr).

## Reserved Keywords

Reserved Keywords in python and their applications
In Python, reserved keywords are words that have a special meaning and cannot be used as variable names or identifiers in your code. These keywords are reserved for specific purposes within the language, and attempting to use them as variable names or identifiers will result in a syntax error.

Here are some of the reserved keywords in Python:

1.	and: Used to combine two Boolean expressions and return True only if both expressions are true.

2.	as: Used to create an alias for a module or function, allowing you to refer to it using a different name.

3.	assert: Used to check if a condition is true, and raise an exception if it is not.

4.	break: Used to exit a loop prematurely.

5.	class: Used to define a new class.

6.	continue: Used to skip the current iteration of a loop and move on to the next one.

7.	def: Used to define a new function.

8.	del: Used to delete a variable or object.

9.	elif: Used to specify an alternative condition to an if statement.

10.	else: Used to specify what to do if a condition in an if statement is not true.

11.	except: Used to handle exceptions in a try-except block.

12.	False: A Boolean value that represents false.

13.	finally: Used to specify code that should be executed regardless of whether an exception was raised or not.

14.	for: Used to iterate over a sequence of values.

15.	from: Used to import specific attributes or functions from a module.

16.	global: Used to specify that a variable should be treated as a global variable.

17.	if: Used to specify a condition to test.

18.	import: Used to import a module.

19.	in: Used to check if a value is in a sequence.

20.	is: Used to check if two objects are the same object in memory.

21.	lambda: Used to create an anonymous function.

22.	None: A special value that represents no value or absence of a value.

23.	nonlocal: Used to specify that a variable should be treated as a nonlocal variable.

24.	not: Used to negate a Boolean expression.

25.	or: Used to combine two Boolean expressions and return True if at least one expression is true.

26.	pass: Used as a placeholder where code needs to be written but not yet implemented.

27.	raise: Used to raise an exception.

28.	return: Used to return a value from a function.

29.	True: A Boolean value that represents true.

30.	try: Used to enclose code that might raise an exception.

31.	while: Used to repeat a block of code while a condition is true.

32.	with: Used to create a context in which a resource is used, ensuring that the resource is cleaned up when the context is exited.

33.	yield: Used in a generator function to yield a value to the caller.

It is important to note that you cannot use any of these keywords as variable names or identifiers in your code. Doing so will result in a syntax error.


## Comment

There are different types of comment styles that can be used in Python, and the choice of style is often a matter of personal preference or adherence to a particular coding style guide. Here are some commonly used comment styles in Python:

    1. Single-line comments: Single-line comments start with the "#" symbol and are used to add brief comments to a single line of code. For example:


```python
# This is a single-line comment
x = 5  # This is a comment on the same line as code
```

2.	Multi-line comments: Multi-line comments are enclosed in triple quotes (""") and can span multiple lines. They are often used to provide detailed explanations of code or to temporarily disable sections of code. For example:


```python
"""
This is a multi-line comment
that spans multiple lines.
"""
```




    '\nThis is a multi-line comment\nthat spans multiple lines.\n'



3.	Docstrings: Docstrings are similar to multi-line comments, but they are used to document functions, modules, and classes in Python. Docstrings are enclosed in triple quotes and are written at the beginning of a function, module, or class. For example:


```python
def my_function():
    """
    This is a docstring for my_function.
    It should describe what the function does,
    what parameters it takes, and what it returns.
    """
    # Function code here

```

4.	Inline comments: Inline comments are comments that are placed on the same line as code, usually to explain a specific line of code. However, inline comments should be used sparingly and only when necessary, as they can make code harder to read. For example:


```python
x = 5  # Initialize variable x to 5
```

In general, it is important to use comments in Python code to improve its readability and maintainability. However, it is also important to use comments judiciously and to follow a consistent commenting style to make the code easier to understand and maintain.

### Assigning values to Variables


```python
a=2
b=3
print(a,b)
```

    2 3
    


```python
x,y=3,4
print(x,y)
```

    3 4
    


```python
x=y=1
print(x)
print(y)
y=2
print(y)
print(x+y)
```

    1
    1
    2
    3
    


```python
x='Some String'
x
```




    'Some String'




```python
y="Another String"
x+y
```




    'Some StringAnother String'




```python
x,y,z="Manoj", 3, 5.4
z,y,x
```




    (5.4, 3, 'Manoj')




# Standard Datatypes

1. Number
2. String
3. List
4. Tuples
5. Dictionary


```python
int_1,int_2,int_3=1, -2, 0
int_1,int_2,int_3
```




    (1, -2, 0)




```python
float_1=3.1454373367
float_1
```




    3.1454373367




```python
round(float_1,5)
```




    3.14544




```python
Long_1=124325849879460000005165156616543   # Long Number ????
Long_1
```




    124325849879460000005165156616543




```python
complex_1,complex_2=3.14j, 2+1.2j
complex_2+complex_1
```




    (2+4.34j)



## String


```python
str="abcdefghij"
str
```




    'abcdefghij'




```python
### indexing and Slicing
print(str)       # 0123456789
print(str[0])    # 0
print(str[0:3])  # 012
print(str[1:4])  # 123
print(str[-3])   # 7
```

    abcdefghij
    a
    abc
    bcd
    h
    


```python
str="Hello "
str+str+str
```




    'Hello Hello Hello '




```python
tstat=0.456005498
pval=0.002
print("The t-statistics value is %.5f, so the pvalue is %.3f"%(tstat,pval))
```

    The t-statistics value is 0.45601, so the pvalue is 0.002
    

## Lists


```python
list=["Manoj",816,2009,"Asst Prof",[2,3,4]]
list
```




    ['Manoj', 816, 2009, 'Asst Prof', [2, 3, 4]]




```python
list2=[list, 23.6]
len(list2)
```




    2




```python
list1, list2 =[1,2,3], [4,5,6]
list1+list2
```




    [1, 2, 3, 4, 5, 6]




```python
len(list*3)
```




    15



## Oprations on List


```python
List1=[2,4,5,6,2,3]
print(max(List1))
print(min(List1))
List1.append(5)
print(List1)
List1.extend([5,8,9,0])
print(len(List1))
List1[0]=3 # Modification
print(List1)
```

    6
    2
    [2, 4, 5, 6, 2, 3, 5]
    11
    [3, 4, 5, 6, 2, 3, 5, 5, 8, 9, 0]
    


```python
tre='Chetan'
trelist=[]
for i in tre:
    trelist.append(i)
trelist
```




    ['C', 'h', 'e', 't', 'a', 'n']



## Tuples


```python
tuple1=('Manoj',23,1.2,'Patil')
tuple1
```




    ('Manoj', 23, 1.2, 'Patil')




```python
# tuple1[1]=35  #'tuple' object does not support item assignment
List=['Manoj',23,1.2,'Patil']
tuple2=(4,5,5,5,5,5)
tuple3=tuple1+tuple2
tuple3[-4:]
tuple3.count(5)
```




    5




```python
tuple4=(1,1,1,1,1,2,2,2,3,3,3,4,5,4,5,4,98,98)
print('Max :',max(tuple4))
print('Min :',min(tuple4))
print('Sum :',np.sum(tuple4))
#print('Mean:',mean(tuple4))
for item in set(tuple4):
    print(item,tuple4.count(item))
```

    Max : 98
    Min : 1
    Sum : 238
    1 5
    2 3
    3 3
    4 3
    5 2
    98 2
    


```python

```

## Dictionary


```python
dict1={'Name':["Manoj","Chetan"],
       'Age':[35, 22],
       "Edu":["Stats","Actuarial"]}
dict2={'Address':['Jalgaon','Dhule']}
dict1.update(dict2)
dict1
```




    {'Name': ['Manoj', 'Chetan'],
     'Age': [35, 22],
     'Edu': ['Stats', 'Actuarial'],
     'Address': ['Jalgaon', 'Dhule']}




```python
for key, value in dict1.items():
    print("Key :",key,"value :",value)
```

    Key : Name value : ['Manoj', 'Chetan']
    Key : Age value : [35, 22]
    Key : Edu value : ['Stats', 'Actuarial']
    Key : Address value : ['Jalgaon', 'Dhule']
    


```python
dict1.get('Edu')
```




    ['Stats', 'Actuarial']




```python
list1=["Manoj",35,'stat']
list1
```




    ['Manoj', 35, 'stat']




```python
list2=[3,1,2]
list2+=[2,4,2,3]
list2
```




    [3, 1, 2, 2, 4, 2, 3]




```python
set1=set(list2)
```


```python
set1
```




    {1, 2, 3, 4}




```python
#set1[1] # 'set' object is not subscriptable
```

# Operators

* Arithmatic     +, - , *, /, %, //, **

* Comparison      < > == !=, <=, >=

* Assignment     =, -=, +=, *=, /=, //=, %=, **=

* Logical         and   &&, or |, not  !

* Boolean          &, |, ^, ~


```python
x,y=2,3
```


```python
x**y
```




    8




```python
x==y
```




    False




```python
x!=y
```




    True




```python
#x<>y
```


```python
y/x
```




    1.5




```python
y//x  # integer division
```




    1




```python
y%x   # reminder
```




    1




```python
y+=x   # y = y+x
```


```python
y
```




    5



# Some Functions


```python
x = -34.563529645
abs(x)
```




    34.563529645




```python
import numpy 
y=5.6
numpy.ceil(y)
```




    6.0




```python
import numpy as np
x=48.6
np.ceil(x)
```




    49.0




```python
np.exp(3)
```




    20.085536923187668




```python
#from numpy import *
from numpy import exp
```


```python
exp(3)
```




    20.085536923187668




```python
np.ceil(34.5)
```




    35.0




```python

```
