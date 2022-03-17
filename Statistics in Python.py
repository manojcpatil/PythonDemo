import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import scipy as sp

'''
m=np.random.randint(7,10,20)
print(m)
print(np.mean(m))
print(np.median(m))
from statistics import mode
mode(m)

# Sample
pop=np.random.randint(1,10,200)
print(x)
x1=np.random.choice(pop,100)
x2=np.random.choice(pop,100)
x3=np.random.choice(pop,100)
x4=np.random.choice(pop,100)
x=(x1,x2,x3,x4)
x_mean=[]
for i in x:
    x_mean.append(np.mean(i))
print(np.mean(x_mean))
print(np.mean(x))

pop=np.random.randn(50)
print(x)
print("Mean:",np.mean(x),"Median:",np.median(x),"Var:",np.var(x),"SD:",np.std(x))
print("Min:",np.min(x),"Max:",np.max(x),"Range:",np.max(x)-np.min(x))
print("Q1:",np.percentile(pop,25),"Q3:",np.percentile(pop,75),"IQR:",np.percentile(pop,75)-np.percentile(pop,25))


df1=pd.DataFrame(dict(id=range(60),age=np.random.randint(18,31,size=60)))
print(df1)
print("Mean Age:", df1.age.mean())
print("Mean Age:", df1["age"].mean())
print("Modal Age:", df1.age.mode()[0])
print("Skewness:", df1.age.skew())
print("Kurtosis:", df1.age.kurt())
'''
mu, sigma=0,1
x=np.random.normal(mu,sigma,size=100)
'''
print(x)
print("Mean:",np.mean(x),"Median:",np.median(x),"Var:",np.var(x),"SD:",np.std(x))
print("Min:",np.min(x),"Max:",np.max(x),"Range:",np.max(x)-np.min(x))
print("Q1:",np.percentile(x,25),"Q3:",np.percentile(x,75),"IQR:",np.percentile(x,75)-np.percentile(x,25))
print("Skewness:", pd.DataFrame(x).skew()[0]," Kurtosis:", pd.DataFrame(x).kurt()[0])
'''
Xbar, SVar=[],[]
for i in range(100):
    SampleX=np.random.choice(x,size=20)
    Xbar.append(np.mean(SampleX))
    SVar.append(np.var(SampleX))
print("Pop mean:",np.mean(x),"Mean of Sample Means:",np.mean(Xbar))
print("Pop var:",np.var(x),"Mean of Sample Means:",np.mean(SVar))
pd.DataFrame(Xbar).plot(kind="density")

'''
#

'''



