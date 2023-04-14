# Data Consumers

|ID|KPI|Description|Target|Notes|
|---|---|---|---|---|---|---|---|---|
|OD-1|API availability|API availability measured from independent system. If possible, it's beneficial to check the response code and/or that the response contain expected data.|99.9%|Related to requirement F02|
|OD-2|API response time|How fast API completes the response.|||



## Discussion

OD-1 target is derived from a use case of running Numerical Weather Prediction (NWP) model as 
an example. The global NWP models are typically run every 6 hours and local area models every 15-60 minutes. 
For example IFS [continuous assimilation model](https://www.ecmwf.int/en/newsletter/158/meteorology/continuous-data-assimilation-ifs) waits for 60 minutes. 
The models can be run without the latest obseravtions with significant impact on the quality. Hence, under 60 minutes of downtime is desired.


Possible KPI's with regard to data consumers
- Availability of API-service  - uptime %
- API response time - average API requests response time
- API error rate - This measures the percentage of requests that result in errors.
- Number of unique API users 
- Amount of data transferred via JSON
- Download rate
- Download success
- Amount of NMH's with data available via the API
- Total amount of data available
- Amount of Weather Stations available via the API
