### 1. List Manipulation

#### a. Even Numbers in a List
```python
def filter_even_numbers(input_list):
    return [num for num in input_list if num % 2 == 0]

# Example usage:
numbers_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = filter_even_numbers(numbers_list)
print(even_numbers)
```

#### b. Reverse List In-Place
```python
def reverse_list_in_place(input_list):
    input_list.reverse()

# Example usage:
original_list = [1, 2, 3, 4, 5]
reverse_list_in_place(original_list)
print(original_list)
```
#using slicing of list
```python
def revList(list_):
    return list_[::-1]
list1=[1,2,3,4,5,25,30]
print(f'Original list={list1}')
print(f'Reverse list={revList(list1)}')
```
### 2. Tuple Operations

#### a. Sort Tuple Alphabetically
```python
def sort_tuple_alphabetically(input_tuple):
    sorted_tuple = tuple(sorted(input_tuple))
    print(sorted_tuple)

# Example usage:
string_tuple = ('banana', 'apple', 'orange', 'grape')
sort_tuple_alphabetically(string_tuple)
```

#### b. Find Index in Tuple
```python
def find_element_index(input_tuple, element):
    try:
        index = input_tuple.index(element)
        print(f"The index of '{element}' is: {index}")
    except ValueError:
        print(f"'{element}' not found in the tuple.")

# Example usage:
my_tuple = (10, 20, 30, 40, 50)
find_element_index(my_tuple, 30)
```

### 3. Dictionary Operations

#### a. Merge Dictionaries with Age Combination
```python
def merge_dictionaries(dict1, dict2):
    result_dict = dict1.copy()
    
    for key, value in dict2.items():
        if key in result_dict:
            result_dict[key] += value
        else:
            result_dict[key] = value
            
    return result_dict

# Example usage:
dict1 = {'Alice': 25, 'Bob': 30}
dict2 = {'Bob': 35, 'Charlie': 40}
merged_dict = merge_dictionaries(dict1, dict2)
print(merged_dict)
```

#### b. Check if Key Exists in Dictionary
```python
def check_key_existence(input_dict, key):
    if key in input_dict:
        print(f"'{key}' exists in the dictionary.")
    else:
        print(f"'{key}' does not exist in the dictionary.")

# Example usage:
employee_dict = {'Alice': 25, 'Bob': 30, 'Charlie': 40}
check_key_existence(employee_dict, 'Bob')
```

### 4. Set Operations

#### a. Common Elements in Sets
```python
def find_common_elements(set1, set2):
    return set1.intersection(set2)

# Example usage:
set_a = {1, 2, 3, 4, 5}
set_b = {4, 5, 6, 7, 8}
common_elements = find_common_elements(set_a, set_b)
print(common_elements)
```

#### b. Remove Duplicates from List and Convert to Set
```python
def remove_duplicates_and_convert_to_set(input_list):
    unique_set = set(input_list)
    return unique_set

# Example usage:
original_list = [1, 2, 2, 3, 4, 4, 5]
unique_set = remove_duplicates_and_convert_to_set(original_list)
print(unique_set)
```

### 5. Mutability and Immutability

#### a. Modify List by Squaring Elements
```python
def square_list_elements(input_list):
    for i in range(len(input_list)):
        input_list[i] **= 2

# Example usage:
numbers_list = [1, 2, 3, 4, 5]
square_list_elements(numbers_list)
print(numbers_list)
```
```python
def square_list(input_list):
    input_list=[x**2 for x in input_list]
    return input_list
numbers_list = [1, 2, 3, 4, 5]
square_list(numbers_list)
```
#### b. Attempt to Modify Tuple Element (Handling Error)
```python
def try_modify_tuple_element(input_tuple, index, new_value):
    try:
        # Tuples are immutable, so modification is not possible
        modified_tuple = input_tuple[:index] + (new_value,) + input_tuple[index + 1:]
        print("Modification successful:", modified_tuple)
    except TypeError:
        print("Error: Tuples are immutable and cannot be modified.")

# Example usage:
my_tuple = (10, 20, 30, 40, 50)
try_modify_tuple_element(my_tuple, 2, 35)
```
### 6. Type Casting

#### a. Convert String Number to Integer and Square
```python
def square_integer_from_string(input_string):
    try:
        number = int(input_string)
        squared_result = number ** 2
        print(f"The squared value of {number} is: {squared_result}")
    except ValueError:
        print("Error: Input is not a valid integer.")

# Example usage:
user_input = input("Enter a number as a string: ")
square_integer_from_string(user_input)
```

#### b. Sum Numbers as Strings and Return Integer
```python
def sum_numbers_as_strings(input_list):
    try:
        sum_result = sum(map(int, input_list))
        return sum_result
    except ValueError:
        print("Error: One or more elements in the list is not a valid integer.")

# Example usage:
numbers_as_strings = ['10', '20', '30', '40']
result = sum_numbers_as_strings(numbers_as_strings)
print(f"The sum of the numbers is: {result}")
```
