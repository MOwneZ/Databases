use VectorDatabase;

insert into Employee Values('Eevee');
insert into Employee Values('Mewtwo');
insert into Employee Values('Charizard');
insert into Employee Values('Snorlax');
insert into Employee Values('Pikachu');
insert into Employee Values('Celebi');

insert into TestingDevice Values('SDS-049C','DAIBRAVE','[-76.0, -69.0, -69.0, -76.0, -73.0, -76.0]',89314404000248233075,89610180002249047685,null,'3.69','GAT-17R3','2.2.5');
insert into TestingDevice Values('SDS-196B','REAPER','[-59.0, -52.0]',89314404000248157530,89610180002243817774,null,'3.92','GAT-17R3','2.2.5');
insert into TestingDevice Values('SDS-008C','ASSAM','[-91.0, -87.0, -81.0, -70.0, -86.0, -74.0, -76.0]',null,null,89314404000266723023,'3.94','GAT-17R3','2.2.5');
insert into TestingDevice Values('SDS-026C','CARIVOU','[-76.0, -85.0]',89314404000281178914,89610180002249045296,null,'3.88','GAT-17R3','2.2.5');
insert into TestingDevice Values('SDS-061C','DIXIE','[-83.0, -74.0, -79.0]',89314404000266650267,89610180002249046930,null,'3.88','GAT-17R3','2.2.5');
insert into TestingDevice Values('SDS-043C','CORSSRAY','[-76.0, -72.0, -66.0]',89314404000248186935,89610180002249048341,null,'3.92','GAT-17R3','2.2.5');

insert into WorkOrder Values('WO-00251301',date_format(str_to_date('19-2-2019--13-14', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'Eevee','SDS-196B',null,null,'kCLLocationAccuracyKilometer');
insert into WorkOrder Values('WO-00104116',date_format(str_to_date('1-5-2018--8-5', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'Pikachu','SDS-043C','152.752432376289','-27.6047716895375','kCLLocationAccuracyKilometer');
insert into WorkOrder Values('WO-00105349',date_format(str_to_date('30-4-2018--14-48', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'DIXIE','SDS-061C','139.34259429587','-35.6776790181507','kCLLocationAccuracyKilometer');
insert into WorkOrder Values('WO-00110610',date_format(str_to_date('17-4-2018--10-41', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'Snorlax','SDS-008C','152.984367638172','-27.4171041995673','kCLLocationAccuracyKilometer');
insert into WorkOrder Values('WO-00110925',date_format(str_to_date('26-4-2018--10-31', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'Charizard','SDS-049C','153.024695282944','-27.1806907654062','kCLLocationAccuracyKilometer');
insert into WorkOrder Values('WO-00248593',date_format(str_to_date('19-2-2019--8-42', "%d-%c-%Y--%H-%i"), "%d-%c-%Y--%H-%i"),'Mewtwo','SDS-026C','152.971914761231','-27.0792295037818','kCLLocationAccuracyKilometer');

insert into SignalThreshold Values(0,'WO-00251301','6.0','12.0','15.0','30.0','10.0','20.0');
insert into SignalThreshold Values(0,'WO-00104116','6.0','12.0','15.0','30.0','10.0','20.0');
insert into SignalThreshold Values(0,'WO-00105349','6.0','12.0','15.0','30.0','10.0','20.0');
insert into SignalThreshold Values(0,'WO-00110610','6.0','12.0','15.0','30.0','10.0','20.0');
insert into SignalThreshold Values(0,'WO-00110925','6.0','12.0','15.0','30.0','10.0','20.0');
insert into SignalThreshold Values(0,'WO-00248593','6.0','12.0','15.0','30.0','10.0','20.0');

insert into TelstraBlade Values(0, 'WO-00251301',(0.0), (0.0), (61.1333333333333), False, 'Telstra Mobile','["58_12-6", "61_19-6", "61_30-6", "61_30-6", "62_30-6", "62_32-6", "62_32-6", "61_26-6", "61_26-6", "61_30-6", "61_29-6", "61_21-6", "62_27-6", "62_27-6", "61_31-6"]','Registered, home network');
insert into TelstraBlade Values(0, 'WO-00104116',(0.0), (20.5), (21.7692307692308),False,'Telstra Mobile','["41_33-2", "41_33-2", "41_33-2", "99_99-0", "99_99-0", "99_99-0", "28_6-4", "29_6-4", "29_6-4", "28_4-4", "28_7-4", "27_2-4", "28_6-4", "29_11-4", "29_11-4", "28_7-4"]','Registered, home network');
insert into TelstraBlade Values(0, 'WO-00105349',(0.0), (27.2), (0.0),False,'Telstra Mobile','["28_31-2", "26_27-2", "26_27-2", "26_25-2", "26_25-2", "26_25-2", "25_27-2", "25_27-2", "28_31-2", "28_31-2", "28_31-2", "30_29-2", "30_29-2", "25_25-2", "25_25-2", "25_25-2", "26_29-2", "26_29-2", "26_29-2", "28_29-2", "28_29-2", "28_29-2", "28_29-2", "28_29-2", "29_31-2", "29_31-2", "28_31-2", "28_31-2", "28_31-2", "29_31-2"]','Registered, home network');
insert into TelstraBlade Values(0, 'WO-00110610',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into TelstraBlade Values(0, 'WO-00110925',(0.0), (16.4), (30.7857142857143),False, 'Telstra Mobile','["41_37-2", "41_39-2", "99_99-0", "99_99-0", "99_99-0", "37_22-4", "40_21-4", "43_26-4", "39_23-4", "38_9-4", "38_9-4", "38_7-4", "42_26-4", "37_26-4", "40_26-4", "39_26-4"]','Registered, home network');
insert into TelstraBlade Values(0, 'WO-00248593',(0.0), (0.0), (46.0666666666667),False, 'Telstra Mobile','["43_19-6", "43_19-6", "47_23-6", "47_23-6", "47_18-6", "47_18-6", "46_19-6", "46_19-6", "46_19-6", "44_12-6", "47_26-6", "47_23-6", "47_25-6", "47_28-6", "47_28-6"]','Registered, home network');

insert into TelstraWhip Values(0,'WO-00251301',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into TelstraWhip Values(0,'WO-00104116',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into TelstraWhip Values(0,'WO-00105349',(0.0),(0.0),(0.0),false,null,'[]',null);
insert into TelstraWhip Values(0,'WO-00110610',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into TelstraWhip Values(0,'WO-00110925',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into TelstraWhip Values(0,'WO-00248593',(0.0),(0.0),(0.0),False,null,'[]',null);

insert into VodafoneBlade Values(0,'WO-00251301',(0.0),(0.0),(0.0),True,null,'[]','Registeration Denied');
insert into VodafoneBlade Values(0,'WO-00104116',(0.0),(14.625),(23.0833333333333),False,'vodafone AU','["39_33-1", "39_33-1", "39_37-1", "99_99-0", "99_99-0", "99_99-0", "99_99-0", "99_99-0", "40_18-4", "40_18-4", "40_18-4", "39_29-4", "39_23-4", "39_23-4", "40_29-4"]','Registered, Roaming');
insert into VodafoneBlade Values(0,'WO-00105349',(0.0),(0.0),(0.0),True,null,'[]','Not Registered, searching for network');
insert into VodafoneBlade Values(0,'WO-00110610',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneBlade Values(0,'WO-00110925',(0.0),(12.0),(26.9230769230769),False,'vodafone AU','["42_43-1", "42_43-1", "99_99-0", "99_99-0", "99_99-0", "99_99-0", "99_99-0", "41_17-4", "41_17-4", "43_22-4", "45_24-4", "45_26-4", "45_23-4", "45_24-4", "45_24-4"]','Registered, Roaming');
insert into VodafoneBlade Values(0,'WO-00248593',(0.0),(0.0),(0.0),True,null,'[]','Registeration Denied');

insert into VodafoneWhip Values(0,'WO-00251301',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneWhip Values(0,'WO-00104116',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneWhip Values(0,'WO-00105349',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneWhip Values(0,'WO-00110610',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneWhip Values(0,'WO-00110925',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into VodafoneWhip Values(0,'WO-00248593',(0.0),(0.0),(0.0),False,null,'[]',null);

insert into ExternalModem Values(0,'WO-00251301',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into ExternalModem Values(0,'WO-00104116',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into ExternalModem Values(0,'WO-00105349',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into ExternalModem Values(0,'WO-00110610',(9.0),(0.0),(0.0),False,'vodafone AU','["9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I", "9_99-I"]','Registered, Roaming');
insert into ExternalModem Values(0,'WO-00110925',(0.0),(0.0),(0.0),False,null,'[]',null);
insert into ExternalModem Values(0,'WO-00248593',(0.0),(0.0),(0.0),False,null,'[]',null);
