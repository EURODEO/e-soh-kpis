# Data Ingest

The KPIs in this section define the targets of the system seen from the perspective of the data providers, i.e. the NMHS's.

|ID|KPI|Description|Target|Notes|
|---|---|---|---|---|
|KPI-11|Amount of data ingested|Gives an indication of the scale of the ingest system|TBD||
|KPI-12|Ingestion system uptime|The uptime of the ingestion system|99%|Please note: this can be different than the uptime of the API for the end-user|
|KPI-13|Ingestion success rate|The percentage of data succesfully ingested|99.95%|Please note: rejected files which do not comply to the input standards are not counted as an unsuccesfull ingest|
|KPI-14|Ingestion timeliness|Processing time from "inserted in system" to "notification send out to destination"|TBD||
|KPI-15|Data transformation success rate|The percentage of BUFR and CSV files that is succesfully transformed by the system|100%||

## Discussion

KPI-14: [OSCAR requirements](https://space.oscar.wmo.int/requirements) defines detailed requirements for each parameters. For the sake of simplicity the shortest timeliness of ground observations (apart from some aviation parameters and lightning) was chosen to as KPI.


