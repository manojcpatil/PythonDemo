# Date & Time

## Importing the datetime module


```python
## Importing the datetime module
import datetime
```

## Creating a datetime object


```python
now = datetime.datetime.now()
print("Current date and time:", now)
```

    Current date and time: 2023-03-17 22:20:32.735666
    

## Formatting dates and times


```python
print("Current year:", now.year)
print("Current month:", now.month)
print("Current day:", now.day)
print("Current hour:", now.hour)
print("Current minute:", now.minute)
print("Current second:", now.second)
print("Current microsecond:", now.microsecond)
```

    Current year: 2023
    Current month: 3
    Current day: 17
    Current hour: 22
    Current minute: 20
    Current second: 32
    Current microsecond: 735666
    

## Creating a date object


```python
date = datetime.date(2023, 2, 27)
print("Date:", date)
```

    Date: 2023-02-27
    

## Creating a time object


```python
time = datetime.time(10, 30, 45)
print("Time:", time)
```

    Time: 10:30:45
    

## Combining date and time objects


```python
datetime_obj = datetime.datetime.combine(date, time)
print("Datetime object:", datetime_obj)
```

    Datetime object: 2023-02-27 10:30:45
    

## Formatting datetime objects


```python
print("Formatted datetime object:", datetime_obj.strftime("%d-%m-%Y %H:%M:%S"))
```

    Formatted datetime object: 27-02-2023 10:30:45
    

## Converting strings to datetime objects


```python
str_date = "2023-27-02 10:30:45"
datetime_obj2 = datetime.datetime.strptime(str_date, "%Y-%d-%m %H:%M:%S")
print("Datetime object from string:", datetime_obj2)
```

    Datetime object from string: 2023-02-27 10:30:45
    

## Timezone aware datetime objects


```python
!pip install pytz
```

    Requirement already satisfied: pytz in d:\python\lib\site-packages (2021.1)
    


```python
import pytz
tz = pytz.timezone('US/Pacific')
datetime_tz = datetime.datetime.now(tz)
print("Timezone aware datetime object:", datetime_tz)
```

    Timezone aware datetime object: 2023-03-17 09:50:55.172560-07:00
    

## Timezone conversion


```python
tz2 = pytz.timezone('Asia/Tokyo')
datetime_tz2 = datetime_tz.astimezone(tz2)
print("Converted timezone aware datetime object:", datetime_tz2)
```

    Converted timezone aware datetime object: 2023-03-18 01:50:55.172560+09:00
    
