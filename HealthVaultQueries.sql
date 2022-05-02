--Landing Queries
SELECT "USA" AS Country,
COUNT(*) AS DataCount FROM `healthvault99.PatientData.USA-MedicalRecords-DLP`
UNION ALL
SELECT "SINGAPORE" AS Country,
COUNT(*) AS DataCount FROM `healthvault99.PatientData.Singapore-MedicalRecords-DLP`
UNION ALL
SELECT "INDIA" AS Country,
COUNT(*) AS DataCount FROM `healthvault99.PatientData.India-MedicalRecords-DLP`
UNION ALL
SELECT "UnitedKingdom" AS Country,
COUNT(*) AS DataCount FROM `healthvault99.PatientData.UnitedKingdom-MedicalRecords-DLP`
UNION ALL
SELECT "AUSTRALIA" AS Country,
COUNT(*) AS DataCount FROM `healthvault99.PatientData.AustraliaMedicalRecords-DLP`

--Country specific queries


SELECT "UK" AS Country,51.509865 AS Latitude,-0.118092  AS Longitude,"GDPR" AS Standard,
location.content_locations[OFFSET(0)].record_location.field_id.name AS ColumnName,info_type.name AS Type,
COUNT(info_type.name) AS DataCount FROM `healthvault99.PatientData.UnitedKingdom-MedicalRecords-DLP`
 group by info_type.name,location.content_locations[OFFSET(0)].record_location.field_id.name
 
 SELECT "AUSTRALIA" AS Country,-33.856159 AS Latitude,151.215256 AS Longitude,"NSQHS" AS Standard,
location.content_locations[OFFSET(0)].record_location.field_id.name AS ColumnName,info_type.name AS Type,
COUNT(info_type.name) AS DataCount FROM `healthvault99.PatientData.AustraliaMedicalRecords-DLP`
 group by info_type.name,location.content_locations[OFFSET(0)].record_location.field_id.name
 
 SELECT "INDIA" AS Country,28.644800 AS Latitude,77.216721  AS Longitude,"IDPP" AS Standard,
location.content_locations[OFFSET(0)].record_location.field_id.name AS ColumnName,info_type.name AS Type,
COUNT(info_type.name) AS DataCount FROM `healthvault99.PatientData.India-MedicalRecords-DLP`
 group by info_type.name,location.content_locations[OFFSET(0)].record_location.field_id.name
 
 SELECT "USA" AS Country,40.785091 AS Latitude,-73.968285 AS Longitude,"HIPAA" AS Standard,
location.content_locations[OFFSET(0)].record_location.field_id.name AS ColumnName,info_type.name AS Type,
COUNT(info_type.name) AS DataCount FROM `healthvault99.PatientData.USA-MedicalRecords-DLP`
 group by info_type.name,location.content_locations[OFFSET(0)].record_location.field_id.name



 
 SELECT "SINGAPORE" AS Country,1.290270 AS Latitude,103.851959 AS Longitude,"PDPA" AS Standard,
location.content_locations[OFFSET(0)].record_location.field_id.name AS ColumnName,info_type.name AS Type,
COUNT(info_type.name) AS DataCount FROM `healthvault99.PatientData.Singapore-MedicalRecords-DLP`
 group by info_type.name,location.content_locations[OFFSET(0)].record_location.field_id.name
