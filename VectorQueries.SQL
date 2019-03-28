use vectorDatabase;
set sql_mode=(select replace(@@sql_mode,'ONLY_FULL_GROUP_BY',''));




 -- How many blade and whip antennas have been passed in the signal test for each network provider?

select TelstraBlade.network, count(TelstraBlade.telBlaResultsNo) as "Count"
from TelstraBlade inner join SignalThreshold on TelstraBlade.workOrderNum = SignalThreshold.workOrderNum
where (TelstraBlade.rscpResult >= SignalThreshold.rscpThreshold)
or (TelstraBlade.rssiResult >= SignalThreshold.rssiThreshold)
or (TelstraBlade.rsrpResult >= SignalThreshold.rsrpThreshold)

union
select TelstraWhip.network, count(TelstraWhip.telWhiResultsNo) as "Count"
from TelstraWhip inner join SignalThreshold on TelstraWhip.workOrderNum = SignalThreshold.workOrderNum
where ((TelstraWhip.rscpResult >= SignalThreshold.rscpThreshold)
or (TelstraWhip.rssiResult >= SignalThreshold.rssiThreshold)
or (TelstraWhip.rsrpResult >= SignalThreshold.rsrpThreshold))

union
select VodafoneWhip.network, count(VodafoneWhip.vodWhiResultsNo) as "Count"
from VodafoneWhip inner join SignalThreshold on VodafoneWhip.workOrderNum = SignalThreshold.workOrderNum
where ((VodafoneWhip.rscpResult >= SignalThreshold.rscpThreshold)
or (VodafoneWhip.rssiResult >= SignalThreshold.rssiThreshold)
or (VodafoneWhip.rsrpResult >= SignalThreshold.rsrpThreshold))

union
select VodafoneBlade.network, count(VodafoneBlade.vodBlaResultsNo) as "Count"
from VodafoneBlade inner join SignalThreshold on VodafoneBlade.workOrderNum = SignalThreshold.workOrderNum
where ((VodafoneBlade.rscpResult >= SignalThreshold.rscpThreshold)
or (VodafoneBlade.rssiResult >= SignalThreshold.rssiThreshold)
or (VodafoneBlade.rsrpResult >= SignalThreshold.rsrpThreshold));


 -- Count the number of signal log files per Bluetooth Names and print out each of the locations. - Query 6
SELECT 
    COUNT(SignalTester.bluetoothName), workOrder.longitude, WorkOrder.latitude
FROM
    SignalTester 
        INNER JOIN
    WorkOrder ON SignalTester.workOrderNum = WorkOrder.workOrderNum
UNION SELECT 
    SignalTester.bluetoothName,
    WorkOrder.longitude,
    WorkOrder.latitude
FROM
    SignalTester
        INNER JOIN
    WorkOrder ON SignalTester.workOrderNum = WorkOrder.workOrderNum;

 -- count the number of log files without GPS coordinates and sort them by iPad models - Query 7
 
SELECT 
    COUNT(workOrderNum), deviceType
FROM
    workOrder
        INNER JOIN
    TestingDevice ON WorkOrder.deviceSerialNum = TestingDevice.deviceSerialNum
WHERE
    ((longitude AND latitude) IS NULL)
GROUP BY deviceType;

-- count the number of whip antenna tested vs blade antenna tested - Query 8
SELECT 
    COUNT(TelstraBlade.telBlaResultsNo) AS 'Telstra Blade',
    COUNT(VodafoneBlade.vodBlaResultsNo) AS 'Vodafone Blade',
    COUNT(TelstraWhip.telWhiResultsNo) AS 'Telstra Whip',
    COUNT(VodafoneWhip.vodWhiResultsNo) AS 'Vodafone Whip'
FROM
    TelstraBlade
        INNER JOIN
    VodafoneBlade ON VodafoneBlade.workOrderNum = TelstraBlade.workOrderNum
        INNER JOIN
    VodafoneWhip ON VodafoneWhip.workOrderNum = TelstraBlade.workOrderNum
        INNER JOIN
    TelstraWhip ON TelstraWhip.workOrderNum = TelstraBlade.workOrderNum;

 -- Count the number of different modem types used during the test - Query 9
 
SELECT 
    COUNT(DISTINCT (modemType))
FROM
    SignalTester;

 -- Count the number of different installers - Query 10
 
SELECT 
    COUNT(DISTINCT (userName))
FROM
    Employee;