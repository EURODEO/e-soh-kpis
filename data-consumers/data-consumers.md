# Data Consumers

|ID   |KPI|Description|Target|Notes|
|-----|---|---|---|---|
|KPI-1|API availability|API availability measured from independent system. Initially only 99% because of office hours support.|99%|Related to requirement F02|
|KPI-2|API response time|How fast API starts the response.|||
|KPI-3|Number of API requests||||
|KPI-4|Amount of data downloaded||||
|KPI-5|Number of unique API users||||
|KPI-6|Number of subscribers to the notification service||||
|KPI-7|Number of successfully processed PUBLISH messages||||
|KPI-8|Publish delay|the time interval starts when a PUBLISH message is sent and ends when the corresponding PUBACK (QoS1) message has been received|||



## Discussion

Data consumers KPIs tells the technical usability of the end-user service. 

Ideally the KPI-1 target would support the of the global NWP models. They typically run every 6 hours and local area models every 15-60 minutes. 
For example IFS [continuous assimilation model](https://www.ecmwf.int/en/newsletter/158/meteorology/continuous-data-assimilation-ifs) waits for 60 minutes. 
The models can be run without the latest obseravtions with significant impact on the quality. Hence, under 60 minutes of downtime is desired.
Initially E-SOH will only support 99% availability because support is only available in office hours. If 99.9% or higher availability is demanded 24/7 support is needed.  

KPI-2 and KPI-3 target should be derived from time-critical applications such as thunderstorm monitoring or marine traffic control (just to name some examples). Notably, open data API is **not to provide** QoS promise for the end user applications but to exchange data. 


KPI-5 Number of unique API users. If this can be measured via registration or using fingerprint (e.g. combination of IP address, user-agent, operating system, and referrer). TBD after start of operations
