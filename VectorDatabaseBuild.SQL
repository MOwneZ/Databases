create database vectorDatabase;

use vectorDatabase;

														-- Employee Table
create table if not exists Employee (

    userName varchar(20) primary key

)engine = innodb; 

  
														-- Testing Device Table
create table if not exists TestingDevice (
	
    deviceSerialNum varchar(10) primary key,
    bluetoothName varchar(10),
    bluetoothSignal LONGTEXT,
    simVodafone varchar(50),
    simTelstra varchar(50),
    simExternal varchar(50),
    batteryLvl varchar(6),
    firmwareNo varchar(10),
    appVersionNo varchar(6)

)engine = innodb;  

														-- Work Order Table
create table if not exists WorkOrder (
	
    workOrderNum varchar(25) primary key,
    orderDate varchar(20),
    userName varchar(20),
    deviceSerialNum varchar(10),
    longitude float(),
    latitude float(),
    accuracy varchar(40),
    
	foreign key (userName) references Employee (userName),
    foreign key (deviceSerialNum) references TestingDevice (deviceSerialNum)
    
)engine = innodb;       

														-- Signal Threshold Table
create table if not exists SignalThreshold (

	thresholdId integer auto_increment primary key,
	workOrderNum varchar(25),
    rssiThreshold int,
    rssiHighThreshold int,
    rscpThreshold int,
    rscpHighThreshold int,    
    rsrpThreshold int,
    rsrpHighThreshold int,
    
    foreign key (workOrderNum) references WorkOrder (workOrderNum)
    
)engine = innodb;     

														-- Telstra Blade Table		
create table if not exists TelstraBlade (

	telBlaResultsNo int primary key auto_increment,
    workOrderNum varchar(25),
    rssiResult int,
    rscpResult int,
    rsrpResult int,
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
    rssiResult decimal,
    rscpResult decimal,
    rsrpResult decimal,
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
    rssiResult decimal,
    rscpResult decimal,
    rsrpResult decimal,
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
    rssiResult decimal,
    rscpResult decimal,
    rsrpResult decimal,
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
    rssiResult decimal,
    rscpResult decimal,
    rsrpResult decimal,
    timeout bool,
    network varchar(20),
    rawDataArray LONGTEXT,
    modemStatus varchar(50),
    
	foreign key (workOrderNum) references WorkOrder (workOrderNum)

)engine = innodb;       


drop database VectorDatabase;                                                