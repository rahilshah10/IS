# Ride Sharing Optimization Project
------------------------------------

Eugene Cheah | Mengting Yang | Rahil Shah

cheah.eug@husky.neu.edu | yang.meng@husky.neu.edu | shah.rah@husky.neu.edu

INFO 7390 Advances in Data Sciences and Architecture

Spring 2018, Northeastern University College of Engineering

## Introduction


Being an uber driver may seem to be easy, but the earnings are variable. The money earned on average is not enough to support the expenses of car insurance, petrol, etc. The rate change all the time and only during surge, the driver can make a haul. Then, there is no guarantee that where the uber driver trying to find a passenger, they would be there.

So, it’s better if there is a way for the driver to know if there would be passengers, the densest areas for pick ups , a way to maximize his earnings, and maintain his schedule properly. Conducting data analysis, training predictive models, and building an application would come in handy for the drivers, all in which are the aim of the project.

## Getting the Data Needed

### Datasets
Uber API - https://developer.uber.com/dashboard/

Uber Rides Python SDK (beta) - https://github.com/uber/rides-python-sdk 

Lyft API - https://developer.lyft.com/v1/reference 

Weather API - https://openweathermap.org/api

Yelp API - https://www.yelp.com/developers/documentation/v3/business_search 


##### Web Scrapping Script [Notebook](https://github.com/rahilshah10/IS/blob/master/ADS/Final%20Project/Notebooks/Data%20Retrival.ipynb)

##### Data Cleaning
* Lyft [Notebook](https://github.com/MandyYang86/Ride-Optimization/blob/master/Data%20Clean%20Part/DataClean_OneMonth_Lyft_Line.ipynb)
* Uber [Notebook](https://github.com/MandyYang86/Ride-Optimization/blob/master/Data%20Clean%20Part/DataClean_OneMonth_Uber_Pool.ipynb)

##### Machine Learning [Notebook](https://github.com/rahilshah10/IS/blob/master/ADS/Final%20Project/Notebooks/Machine%20Learning.ipynb)

##### Time Series 
* Lyft [Notebook](https://github.com/MandyYang86/Ride-Optimization/blob/master/MA%20Model/Time%20Series%20-%20Moving%20Average%20Model-Lyft.ipynb)
* Uber [Notebook](https://github.com/MandyYang86/Ride-Optimization/blob/master/MA%20Model/Time%20Series%20-%20Moving%20Average%20Model-Uber.ipynb)
