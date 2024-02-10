1. **Accessing Dictionary Values:**
```python
# Create a product dictionary
product = {
    "name": "Laptop",
    "price": 1000,
    "quantity": 5
}

# Get user input for product name
product_name = input("Enter the product name: ")

# Display product details
if product_name in product:
    print(f"Name: {product_name}")
    print(f"Price: {product[product_name]}")
    print(f"Quantity: {product['quantity']}")
else:
    print("Product not found.")
```

2. **Sorting by Keys:**
```python
# Function to sort dictionary by keys
def sort_dict_by_keys(dictionary):
    sorted_dict = dict(sorted(dictionary.items()))
    print(sorted_dict)

# Example usage
random_dict = {'b': 2, 'a': 1, 'c': 3}
sort_dict_by_keys(random_dict)
```

3. **Sorting by Values:**
```python
# Function to sort dictionary by values in descending order
def sort_dict_by_values(dictionary):
    sorted_dict = dict(sorted(dictionary.items(), key=lambda item: item[1], reverse=True))
    print(sorted_dict)

# Example usage
random_dict = {'b': 2, 'a': 1, 'c': 3}
sort_dict_by_values(random_dict)
```

4. **Minimum and Maximum Keys:**
```python
# Find minimum and maximum years
years_data = {
    2020: "Data1",
    2021: "Data2",
    2022: "Data3"
}
min_year = min(years_data.keys())
max_year = max(years_data.keys())
print("Minimum Year:", min_year)
print("Maximum Year:", max_year)
```

5. **Minimum and Maximum Values:**
```python
# Find day with minimum and maximum temperature
temperatures = {
    "Monday": 25,
    "Tuesday": 28,
    "Wednesday": 22
}
min_temp_day = min(temperatures, key=temperatures.get)
max_temp_day = max(temperatures, key=temperatures.get)
print("Day with Minimum Temperature:", min_temp_day)
print("Day with Maximum Temperature:", max_temp_day)
```

6. **Nested Dictionaries:**
```python
# Nested dictionary representing students and their courses
students = {
    "Alice": {
        "Math": 90,
        "Science": 85
    },
    "Bob": {
        "Math": 88,
        "Science": 92
    }
}

# Accessing Alice's Math grade
alice_math_grade = students["Alice"]["Math"]
print("Alice's Math Grade:", alice_math_grade)
```

7. **Filtering Dictionary:**
```python
# Function to filter dictionary by price threshold
def filter_products_by_price(products, threshold):
    filtered_products = {k: v for k, v in products.items() if v >= threshold}
    print(filtered_products)

# Example usage
product_prices = {"Laptop": 1000, "Phone": 800, "Tablet": 500}
filter_products_by_price(product_prices, 600)
```

8. **Updating Dictionary:**
```python
# Function to update student details
def update_student_details(student_dict, student_name, **kwargs):
    if student_name in student_dict:
        student_dict[student_name].update(kwargs)
        print("Updated student details:", student_dict[student_name])
    else:
        print("Student not found.")

# Example usage
students = {"Alice": {"grade": "A", "age": 20}, "Bob": {"grade": "B", "age": 21}}
update_student_details(students, "Alice", grade="B", age=21)
```

9. **Dictionary Operations:**
```python
# Function to perform dictionary operations
def perform_dictionary_operations(dict1, dict2):
    # Merge two dictionaries
    merged_dict = {**dict1, **dict2}
    print("Merged Dictionary:", merged_dict)

    # Remove a key-value pair
    dict1.pop('b', None)
    print("Dictionary after removing 'b':", dict1)

    # Clear the entire dictionary
    dict2.clear()
    print("Dictionary 2 after clearing:", dict2)

# Example usage
dict1 = {'a': 1, 'b': 2}
dict2 = {'c': 3, 'd': 4}
perform_dictionary_operations(dict1, dict2)
```

These scripts cover a range of dictionary operations and manipulations in Python.
