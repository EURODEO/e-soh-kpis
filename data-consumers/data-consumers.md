# Data Consumers

|ID|KPI|Description|Target|Notes|
|---|---|---|---|---|
|OD-1|API availability|API availability measured from independent system. If possible, it's beneficial to check the response code and/or that the response contain expected data.|99.9%|Related to requirement F02|
|OD-2|API response time|How fast API starts the response.|||
|OD-3|API download rate|Data download rate|||


## Discussion

Data consumers KPIs tells the technical usability of the end-user service. 

OD-1 target is derived from a use case of running Numerical Weather Prediction (NWP) model as 
an example. The global NWP models are typically run every 6 hours and local area models every 15-60 minutes. 
For example IFS [continuous assimilation model](https://www.ecmwf.int/en/newsletter/158/meteorology/continuous-data-assimilation-ifs) waits for 60 minutes. 
The models can be run without the latest obseravtions with significant impact on the quality. Hence, under 60 minutes of downtime is desired.

OD-2 and OD-3 target should be derived from time-critical applications such as thunderstorm monitoring or marine traffic control (just to name some examples). Notably, open data API is **not to provide** QoS promise for the end user applications but to exchange data. 
