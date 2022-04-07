#!/usr/bin/env python
# coding: utf-8

# # Multiclassification Using Logistic Regression

# # Import In-Built Dataset

# In[62]:


import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')
import pandas as pd
from sklearn.datasets import load_digits


# # Visualize Dataset

# In[10]:


digit=load_digits()


# In[12]:


dir(digit)


# In[13]:


digit.data[0]


# In[20]:


plt.gray()
plt.matshow(digit.images[0])
plt.show()


# In[23]:


digit.target[0:5]


# # Data Preparation

# In[24]:


from sklearn.model_selection import train_test_split


# In[26]:


x_train, x_test, y_train, y_test =train_test_split(digit.data,digit.target,test_size=0.2)


# In[27]:


len(x_train)


# In[36]:


len(y_test)


# # Train Model

# In[30]:


from sklearn.linear_model import LogisticRegression


# In[33]:


model=LogisticRegression()


# In[34]:


model.fit(x_train,y_train)


# # Predictions

# ## In the Dataset, 0:9 are target( image type) we have images numeric data as independent variable and we want predict target(image type)  from 0:9

# In[68]:


plt.matshow(digit.images[67])
plt.title(digit.target[67])


# ## let predict is exact ,target will come out from our training model for 67th no image?

# In[44]:


model.predict(digit.data[[67]])


# In[45]:


model.predict(digit.data[0:5])


# ## Below show the images and its type(target)

# In[65]:


for i in range(15):
    plt.matshow(digit.images[i])
    plt.title(digit.target[i])


# In[59]:


y_predicted=model.predict(x_test)


# In[60]:


y_Actual=y_test


# In[63]:


pd.DataFrame({"y_predicted":y_predicted,"y_Actual":y_Actual})


# # Model Accuracy

# In[38]:


model.score(x_test,y_test)

