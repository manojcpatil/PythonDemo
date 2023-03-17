# Getting Started with pandas


```python
import numpy as np
```


```python
import pandas as pd
#from icecream import ic
```

## Introduction to Pandas Data Structures

### Series
A Series is a one-dimensional array-like object containing a sequence of values (of
similar types to NumPy types) and an associated array of data labels, called its index.
The simplest Series is formed from only an array of data:


```python
import pandas as pd, numpy as np
PyMarks=pd.Series([16,15,12,20],index=['Asavari','Rashmi','Manoj','Chetan'])
PyMarks['Manoj']
```




    12




```python
PyMarks['Rashmi']
```




    15




```python
PyMarks.index=['a','b','c','d']
PyMarks
```




    a    16
    b    15
    c    12
    d    20
    dtype: int64




```python
PyMarks
```




    a    16
    b    15
    c    12
    d    20
    dtype: int64




```python
obj2 = pd.Series([4, 7, -5, 3], index=['d', 'b', 'a', 'c'])
obj2
```




    d    4
    b    7
    a   -5
    c    3
    dtype: int64




```python
obj2['d':'a']
```




    d    4
    b    7
    a   -5
    dtype: int64




```python
obj2[1:3]
```




    b    7
    a   -5
    dtype: int64



Using NumPy functions or NumPy-like operations, such as filtering with a boolean array, scalar multiplication, or applying math functions, will __preserve the index-value__ link:


```python
PyMarks[PyMarks <= 16]
```




    a    16
    b    15
    c    12
    dtype: int64




```python
np.log(PyMarks)
```




    a    2.772589
    b    2.708050
    c    2.484907
    d    2.995732
    dtype: float64




```python
Int1=pd.Series([10,20,30],index=["c","a","b"])
Int2=pd.Series([20,30,40],index=["a","b","d"])
```


```python
Int=Int1+Int2
Int
```




    a    40.0
    b    60.0
    c     NaN
    d     NaN
    dtype: float64




```python
Int12=Int.isnull().sum()
Int12
```




    2




Another way to think about a Series is as a fixed-length, ordered dict, as it is a mapping of index values to data values.


```python
16 in PyMarks
```




    False



### Creating Series from Dictionary


```python
sdata = {'Ohio': 35000, 
         'Texas': 71000, 
         'Oregon': 16000, 
         'Utah': 5000,
        'India': np.nan}
obj3 = pd.Series(sdata)
obj3
```




    Ohio      35000.0
    Texas     71000.0
    Oregon    16000.0
    Utah       5000.0
    India         NaN
    dtype: float64




```python
obj3.index
```




    Index(['Ohio', 'Texas', 'Oregon', 'Utah', 'India'], dtype='object')




```python
obj3.values
```




    array([35000., 71000., 16000.,  5000.,    nan])




```python
sindex=['Oregon', 'Utah','India','Ohio', 'Texas','Pakistan']   #Index Sequence Changed, Observe the mssing value
obj4=pd.Series(sdata,index=sindex)
obj4
```




    Oregon      16000.0
    Utah         5000.0
    India           NaN
    Ohio        35000.0
    Texas       71000.0
    Pakistan        NaN
    dtype: float64



### Creating Series from Lists


```python
obj5=pd.Series([12,14,16],index=["a","b","c"])
obj5
```




    a    12
    b    14
    c    16
    dtype: int64




```python
obj6=pd.Series({"a":23,"b":34,"c":45,"d":34})
obj6
```




    a    23
    b    34
    c    45
    d    34
    dtype: int64




```python
obj5+obj6
```




    a    35.0
    b    48.0
    c    61.0
    d     NaN
    dtype: float64




```python
obj6-obj5
```




    a    11.0
    b    20.0
    c    29.0
    d     NaN
    dtype: float64



## DataFrame
A DataFrame represents a rectangular table of data and contains an ordered collection of columns, each of which can be a different value type (numeric, string, boolean, etc.). The DataFrame has both a row and column index; it can be thought of
as a dict of Series all sharing the same index. 


```python
# Constructing Data Frame using Dictionary

data = {'State': ['Ohio', 'Ohio', 'Ohio', 'Nevada', 'Nevada', 'Nevada'],
        'Year': [2000, 2001, 2002, 2001, 2002, 2003],
        'Pop': [1.5, 1.7, np.nan, 2.4, 2.9, 3.2]}
frame = pd.DataFrame(data,index=[1,2,3,4,5,6])
frame.tail(3)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>State</th>
      <th>Year</th>
      <th>Pop</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4</th>
      <td>Nevada</td>
      <td>2001</td>
      <td>2.4</td>
    </tr>
    <tr>
      <th>5</th>
      <td>Nevada</td>
      <td>2002</td>
      <td>2.9</td>
    </tr>
    <tr>
      <th>6</th>
      <td>Nevada</td>
      <td>2003</td>
      <td>3.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
# head method selects only the first two rows:
print(frame.head(2))

frame.tail(3)
```

      State  Year  Pop
    1  Ohio  2000  1.5
    2  Ohio  2001  1.7
    




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>State</th>
      <th>Year</th>
      <th>Pop</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4</th>
      <td>Nevada</td>
      <td>2001</td>
      <td>2.4</td>
    </tr>
    <tr>
      <th>5</th>
      <td>Nevada</td>
      <td>2002</td>
      <td>2.9</td>
    </tr>
    <tr>
      <th>6</th>
      <td>Nevada</td>
      <td>2003</td>
      <td>3.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Rearrangement of Columns
pd.DataFrame(data, columns=['State', 'Pop','Year'])
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>State</th>
      <th>Pop</th>
      <th>Year</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Ohio</td>
      <td>1.5</td>
      <td>2000</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Ohio</td>
      <td>1.7</td>
      <td>2001</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Ohio</td>
      <td>NaN</td>
      <td>2002</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Nevada</td>
      <td>2.4</td>
      <td>2001</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Nevada</td>
      <td>2.9</td>
      <td>2002</td>
    </tr>
    <tr>
      <th>5</th>
      <td>Nevada</td>
      <td>3.2</td>
      <td>2003</td>
    </tr>
  </tbody>
</table>
</div>




```python
# If you pass a column that isn’t contained in the dict, it will appear with missing values in the result:
frame4=pd.DataFrame(data, columns=['Year', 'State', 'Pop','Extra'])
frame4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
      <th>Extra</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>5</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame4["Extra"]=pd.Series([1,2,3,4,5,6,420],index=[2,3,1,0,4,5,6])
frame4["Extra2"]=frame4["Extra"]+frame4["Pop"]
frame4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
      <th>Extra</th>
      <th>Extra2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
      <td>4</td>
      <td>5.5</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
      <td>3</td>
      <td>4.7</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
      <td>2</td>
      <td>4.4</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
      <td>5</td>
      <td>7.9</td>
    </tr>
    <tr>
      <th>5</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
      <td>6</td>
      <td>9.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame4.columns
```




    Index(['Year', 'State', 'Pop', 'Extra', 'Extra2'], dtype='object')




```python
frame4.index=["a","b","c","d","e","f"]
frame4.index
```




    Index(['a', 'b', 'c', 'd', 'e', 'f'], dtype='object')




```python
# index assignment
frame2=pd.DataFrame(data, columns=['Year', 'State', 'Pop'],index=["a","b","c","d","e","f"])
frame2
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>a</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
    </tr>
    <tr>
      <th>b</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>c</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>d</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
    </tr>
    <tr>
      <th>e</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
    </tr>
    <tr>
      <th>f</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame2['State'][2]
frame2.Pop[3]
frame2.iloc[:,1]
```




    a      Ohio
    b      Ohio
    c      Ohio
    d    Nevada
    e    Nevada
    f    Nevada
    Name: State, dtype: object




```python
# Accessing Particular Column
frame2['State']
```




    a      Ohio
    b      Ohio
    c      Ohio
    d    Nevada
    e    Nevada
    f    Nevada
    Name: State, dtype: object




```python
frame2
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>a</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
    </tr>
    <tr>
      <th>b</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>c</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>d</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
    </tr>
    <tr>
      <th>e</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
    </tr>
    <tr>
      <th>f</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Accessing Particular Column using dot operator
frame2['State']
```




    a      Ohio
    b      Ohio
    c      Ohio
    d    Nevada
    e    Nevada
    f    Nevada
    Name: State, dtype: object




```python
np.unique(frame2['State'])
```




    array(['Nevada', 'Ohio'], dtype=object)




```python
frame3=pd.DataFrame(data, columns=['Year', 'State', 'Pop',"Extra"])
frame3["Extra"]
```




    0    NaN
    1    NaN
    2    NaN
    3    NaN
    4    NaN
    5    NaN
    Name: Extra, dtype: object




```python
# When you are assigning lists or arrays to a column, the value’s length must match the length of the DataFrame. 
frame3["Extra"]=np.random.randn(6)
frame3
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
      <th>Extra</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
      <td>1.906913</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
      <td>0.025478</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
      <td>0.224478</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
      <td>0.741600</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
      <td>0.686320</td>
    </tr>
    <tr>
      <th>5</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
      <td>1.146521</td>
    </tr>
  </tbody>
</table>
</div>




```python
# If you assign a Series, its labels will be realigned exactly to the DataFrame’s index, inserting missing values in any holes:
val = pd.Series([-1.2, -1.5, -1.7], index=[0,2,4])
frame3["Extra"]=val
frame3
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
      <th>Extra</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
      <td>-1.2</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
      <td>-1.5</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
      <td>-1.7</td>
    </tr>
    <tr>
      <th>5</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>
</div>




```python
del frame3['Extra']
frame3
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Year</th>
      <th>State</th>
      <th>Pop</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2000</td>
      <td>Ohio</td>
      <td>1.5</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2001</td>
      <td>Ohio</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2002</td>
      <td>Ohio</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2001</td>
      <td>Nevada</td>
      <td>2.4</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2002</td>
      <td>Nevada</td>
      <td>2.9</td>
    </tr>
    <tr>
      <th>5</th>
      <td>2003</td>
      <td>Nevada</td>
      <td>3.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
# nested dict of dicts
pop = {'Nevada': {2001: 2.4, 2002: 2.9},
       'Ohio': {2000: 1.5, 2001: 1.7, 2002: 3.6}}
frame4=pd.DataFrame(pop)

# Outer dict keys as the columns and the inner keys as the row indices

frame4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Nevada</th>
      <th>Ohio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2001</th>
      <td>2.4</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>2002</th>
      <td>2.9</td>
      <td>3.6</td>
    </tr>
    <tr>
      <th>2000</th>
      <td>NaN</td>
      <td>1.5</td>
    </tr>
  </tbody>
</table>
</div>




```python
# transpose the DataFrame
frame4.T# frame4.transpose()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>2001</th>
      <th>2002</th>
      <th>2000</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Nevada</th>
      <td>2.4</td>
      <td>2.9</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>Ohio</th>
      <td>1.7</td>
      <td>3.6</td>
      <td>1.5</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Nevada</th>
      <th>Ohio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2001</th>
      <td>2.4</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>2002</th>
      <td>2.9</td>
      <td>3.6</td>
    </tr>
    <tr>
      <th>2000</th>
      <td>NaN</td>
      <td>1.5</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame4.index=[2001, 2002, 2003]
frame4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Nevada</th>
      <th>Ohio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2001</th>
      <td>2.4</td>
      <td>1.7</td>
    </tr>
    <tr>
      <th>2002</th>
      <td>2.9</td>
      <td>3.6</td>
    </tr>
    <tr>
      <th>2003</th>
      <td>NaN</td>
      <td>1.5</td>
    </tr>
  </tbody>
</table>
</div>



## Reindexing
An important method on pandas objects is reindex, which means to create a new object with the data conformed to a new index.


```python
obj = pd.Series([4.5, 7.2, -5.3, 3.6], index=['d', 'b', 'a', 'c'])
obj
```




    d    4.5
    b    7.2
    a   -5.3
    c    3.6
    dtype: float64




```python
obj3 = pd.Series(['blue', 'purple', 'yellow'], index=[0, 2, 4])
obj3
```




    0      blue
    2    purple
    4    yellow
    dtype: object




```python
obj3.reindex([0,1,2,3,4,5], method='ffill')

obj4=pd.Series([21,15,16,48,45,np.nan])
obj4[obj4.isnull()]=np.mean(obj4)
obj4

```




    0    21.0
    1    15.0
    2    16.0
    3    48.0
    4    45.0
    5    29.0
    dtype: float64




```python
data2=np.arange(9).reshape((3, 3))+1
```


```python
frame = pd.DataFrame(data2,
                     index=['a', 'c', 'd'],
                     columns=['Ohio', 'Texas', 'California'])
frame
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Ohio</th>
      <th>Texas</th>
      <th>California</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>a</th>
      <td>1</td>
      <td>2</td>
      <td>3</td>
    </tr>
    <tr>
      <th>c</th>
      <td>4</td>
      <td>5</td>
      <td>6</td>
    </tr>
    <tr>
      <th>d</th>
      <td>7</td>
      <td>8</td>
      <td>9</td>
    </tr>
  </tbody>
</table>
</div>




```python
frame2 = frame.reindex(['a', 'b', 'c', 'd'])
frame2
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Ohio</th>
      <th>Texas</th>
      <th>California</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>a</th>
      <td>1.0</td>
      <td>2.0</td>
      <td>3.0</td>
    </tr>
    <tr>
      <th>b</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>c</th>
      <td>4.0</td>
      <td>5.0</td>
      <td>6.0</td>
    </tr>
    <tr>
      <th>d</th>
      <td>7.0</td>
      <td>8.0</td>
      <td>9.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
data=np.arange(16).reshape(4,4)
data
```




    array([[ 0,  1,  2,  3],
           [ 4,  5,  6,  7],
           [ 8,  9, 10, 11],
           [12, 13, 14, 15]])




```python
frame6=pd.DataFrame(data,index=list(data[:,1]))
frame6
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>0</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1</th>
      <td>0</td>
      <td>1</td>
      <td>2</td>
      <td>3</td>
    </tr>
    <tr>
      <th>5</th>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>7</td>
    </tr>
    <tr>
      <th>9</th>
      <td>8</td>
      <td>9</td>
      <td>10</td>
      <td>11</td>
    </tr>
    <tr>
      <th>13</th>
      <td>12</td>
      <td>13</td>
      <td>14</td>
      <td>15</td>
    </tr>
  </tbody>
</table>
</div>


