```python
print("Hello, World")
print('Hello, World',"Manoj")
```

    Hello, World
    Hello, World Manoj
    


```python
# print "fg" # Missing parentheses
```


```python
pval=0.08
if pval<=0.05:
    print("Reject Ho with p-value as", pval)
    print("Hello")
else:
    print("Fail to reject Ho with p-value as", pval)
    print("End")
print("End Outside")
```

    Fail to reject Ho with p-value as 0.08
    End
    End Outside
    

## Reserved Keywords

and, if, else, def, break, not, continue, for, goto, import, while, elif, return, print, from, class, with etc

## Comment


```python
# First Comment
x=2   # sample
x
# Multiple line comment """not working""" 
```




    2




```python
# Nonopndvanspo
# dnvsd
```

# Assigning values to Variables


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
print('Sum :',sum(tuple4))
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

```


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

```


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
x=-34.563529645
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


```python

```


```python

```


```python

```
