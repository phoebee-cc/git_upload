
create table SHELTER_TYPE(
 NO CHAR(8) primary key,
 TYPE NVARCHAR2(20));

create table POLICE_BRANCH(
 POLICE_ID CHAR(10) primary key,
 BRANCH_NM NVARCHAR2(20),
 PLACE NVARCHAR2(20),
 TEL VARCHAR2(20));

create table VILLAGE(
 ID CHAR(10) primary key,
 VILLAGE_NM NVARCHAR2(20),
 TEL VARCHAR2(20),
 PLACE NVARCHAR2(20));
 
create table SHELTER(
 NO CHAR(8) primary key,
 TYPE CHAR(8) references SHELTER_TYPE(NO),
 ID CHAR(10) references VILLAGE(ID),
 ADDRESS NVARCHAR2(20),
 CAPACITY NUMBER(5,0),
 FLOOR NUMBER(2,0),
 POLICE_ID CHAR(10) references POLICE_BRANCH(POLICE_ID));

insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A1', N'公寓');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A2', N'大樓');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A3', N'公共設施');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A4', N'私營單位');
commit;

insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M001', N'竹南分局', N'苗栗縣竹南鎮民族街72號',  N'03 747 4796');
insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M002', N'苗栗分局', N'苗栗縣苗栗市金鳳街109號',  N'03 732 0059');
insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M003', N'頭份分局', N'苗栗縣頭份市中興路503號',  N'03 766 3004');
commit;

insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C001', N'大埔里', N'03 758 1072', N'竹南鎮公義路1035號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C002', N'竹南里', N'037-472735', N'竹南鎮竹南里中山路 103 號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C003', N'山佳里', N'037-614186', N'竹南鎮山佳里國光街 14 號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C004', N'埔頂里', N'037-724839', N'後龍鎮埔頂里中興路136-1號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C005', N'綠苗里', N'037-333240', N'苗栗市綠苗里中正路 766 號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C006', N'民族里', N'037-660001', N'民族里民族路96號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C007', N'忠孝里', N'037-661145', N'忠孝里光大街82號');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C008', N'信義里', N'037-616072', N'信義里信義路53巷1號');
commit;

insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B1', 'A1', 'C001', N'苗栗縣竹南鎮中埔街20號', '100', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B2', 'A2', 'C002', N'苗栗縣竹南鎮和平街79號', '3142', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B3', 'A2', 'C003', N'苗栗縣竹南鎮龍山路三段142號', '1072', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B4', 'A3', 'C004', N'苗栗縣後龍鎮中華路1498號', '32', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B5', 'A1', 'C005', N'苗栗縣苗栗市米市街80號', '106', '1', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B6', 'A1', 'C005', N'苗栗縣苗栗市光復路117號', '26', '1', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B7', 'A2', 'C005', N'苗栗縣苗栗市博愛街109號', '2038', '2', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B8', 'A2', 'C005', N'苗栗縣苗栗市大同路53號', '128', '2', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B9', 'A3', 'C006', N'苗栗縣頭份市民族里和平路102號', '353', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B10', 'A4', 'C007', N'苗栗縣頭份市忠孝忠孝一路69號', '501', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B11', 'A1', 'C008', N'苗栗縣頭份市信義里中正路65號', '194', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B12', 'A4', 'C008', N'苗栗縣頭份市信義里中正路116號', '78', '1', 'M003');
commit;

--4-1
select distinct pb.BRANCH_NM as "轄管分局", pb.TEL as "分局連絡電話"
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 where CAPACITY >= 1000;
 
--4-2
select distinct pb.BRANCH_NM as "轄管分局", pb.TEL as "分局連絡電話", count(ss.POLICE_ID) as 轄管分局數量
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 where CAPACITY >= 1000
 group by pb.BRANCH_NM, pb.TEL;
 
--4-3
select distinct pb.BRANCH_NM as "轄管分局", pb.TEL as "分局連絡電話", count(ss.POLICE_ID) as 轄管分局數量, ss.ADDRESS as "避難設施地址", st.TYPE as "類型"
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 inner join STUDENT.SHELTER_TYPE st on st. NO = ss.TYPE
 where CAPACITY >= 1000
 group by pb.BRANCH_NM, pb.TEL, ss.ADDRESS, st.TYPE;
 
--4-4
select distinct vv.VILLAGE_NM as "村里別", ss.ADDRESS as "避難設施地址", ss.CAPACITY as "容人數量", pb.BRANCH_NM as "轄管分局", pb.TEL as "分局連絡電話"
 from STUDENT.VILLAGE vv
 inner join STUDENT.SHELTER ss on ss.ID = vv.ID
 inner join STUDENT.POLICE_BRANCH pb on pb. POLICE_ID = ss.POLICE_ID
 where ss.ADDRESS like '%中%';
 
--4-5
select distinct vv.VILLAGE_NM as "村里別", vv.PLACE as "村里辦公室位置", ss.ADDRESS as "避難設施地址", ss.CAPACITY as "容人數量"
 from STUDENT.VILLAGE vv
 inner join STUDENT.SHELTER ss on ss.ID = vv.ID
 where ss.TYPE in ('A1','A2');
 
--5-1
update STUDENT.SHELTER set CAPACITY = 5000
 where ADDRESS = '苗栗縣竹南鎮和平街79號';

--5-2
delete from STUDENT.SHELTER 
 where CAPACITY < 1000;



