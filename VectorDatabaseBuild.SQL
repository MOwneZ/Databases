drop database VectorDatabase; 

create database vectorDatabase;

use vectorDatabase;

														-- Employee Table
create table if not exists Employee (

    userName varchar(20) primary key

)engine = innodb; 


														-- Testing Device Table
create table if not exists TestingDevice (
	
    deviceSerialNum varchar(10) primary key,
    deviceType varchar(10),
    batteryLvl varchar(6),
    appVersionNo varchar(6)

)engine = innodb;  


														-- Work Order Table
create table if not exists WorkOrder (
	
    workOrderNum varchar(25) primary key,
    orderDate datetime,
    userName varchar(20),
    deviceSerialNum varchar(10),
    longitude decimal(16,13),
    latitude decimal(16,13),
    accuracy varchar(40),
    
	foreign key (userName) references Employee (userName),
    foreign key (deviceSerialNum) references TestingDevice (deviceSerialNum)
    
)engine = innodb;       


														-- Signal Tester Table
create table if not exists SignalTester (
	
    signalTesterNum int primary key auto_increment,
    workOrderNum varchar(25),
    firmwareNo varchar(10),
    modemType varchar(10),
    bluetoothName varchar(10),
    bluetoothSignal LONGTEXT,
    simVodafone text,
    simTelstra text,
    simExternal text,
    
    foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;  


														-- Signal Threshold Table
create table if not exists SignalThreshold (

	thresholdId integer auto_increment primary key,
	workOrderNum varchar(25),
    rssiThreshold float(3,1),
    rssiHighThreshold float(3,1),
    rscpThreshold float(3,1),
    rscpHighThreshold float(3,1),    
    rsrpThreshold float(3,1),
    rsrpHighThreshold float(3,1),
    
    foreign key (workOrderNum) references WorkOrder (workOrderNum)
    
)engine = innodb;     

														-- Telstra Blade Table		
create table if not exists TelstraBlade (

	telBlaResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult float(16,14),
    rscpResult float(16,14),
    rsrpResult float(16,14),
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),

	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;        
        
														-- Telstra Whip Table		
create table if not exists TelstraWhip (

	telWhiResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult float(16,14),
    rscpResult float(16,14),
    rsrpResult float(16,14),
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),
    
	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;       


														-- Vodafone Blade Table		
create table if not exists VodafoneBlade (

	vodBlaResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult float(16,14),
    rscpResult float(16,14),
    rsrpResult float(16,14),
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),
    
	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;       


														-- Vodafone Whip Table		
create table if not exists VodafoneWhip (

	vodWhiResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult float(16,14),
    rscpResult float(16,14),
    rsrpResult float(16,14),
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),
    
	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;       


														-- External Modem Table		
create table if not exists ExternalModem (

	extModResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult float(16,14),
    rscpResult float(16,14),
    rsrpResult float(16,14),
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),
    
	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;                                                      