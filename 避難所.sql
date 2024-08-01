
create table SHELTER_TYPE(
 編號 CHAR(8) primary key,
 類別 NVARCHAR2(20));

create table POLICE_BRANCH(
 轄管分局代碼 CHAR(10) primary key,
 轄管分局 NVARCHAR2(20),
 分局地址 NVARCHAR2(20),
 分局電話 NVARCHAR2(20));
 
create table VILLAGE(
 村里別代號 CHAR(10) primary key,
 村里別 NVARCHAR2(20),
 村里別辦公室電話 NVARCHAR2(20));
 
create table SHELTER(
 編號 CHAR(8) primary key,
 類別 CHAR(8) references SHELTER_TYPE(編號),
 村里別代號 CHAR(10) references VILLAGE(村里別代號),
 設施地址 NVARCHAR2(20),
 容人人數 NUMBER(5,0),
 地下樓層數 NUMBER(2,0),
 轄管分局代碼 CHAR(10) references POLICE_BRANCH(轄管分局代碼));

INSERT INTO "STUDENT"."SHELTER_TYPE" ("編號", "類別") VALUES ('A1', N'公寓');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("編號", "類別") VALUES ('A2', N'大樓');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("編號", "類別") VALUES ('A3', N'公共設施');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("編號", "類別") VALUES ('A4', N'私營單位');

INSERT INTO "STUDENT"."POLICE_BRANCH" ("轄管分局代碼", "轄管分局", "分局地址", "分局電話") VALUES ('M001', N'竹南分局', N'苗栗縣竹南鎮民族街72號',  N'03 747 4796');
INSERT INTO "STUDENT"."POLICE_BRANCH" ("轄管分局代碼", "轄管分局", "分局地址", "分局電話") VALUES ('M002', N'苗栗分局', N'苗栗縣苗栗市金鳳街109號',  N'03 732 0059');
INSERT INTO "STUDENT"."POLICE_BRANCH" ("轄管分局代碼", "轄管分局", "分局地址", "分局電話") VALUES ('M003', N'頭份分局', N'苗栗縣頭份市中興路503號',  N'03 766 3004');

INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C001', N'大埔里', N'03 758 1072');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C002', N'竹南里', N'037-472735');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C003', N'山佳里', N'037-614186');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C004', N'埔頂里', N'037-724839');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C005', N'綠苗里', N'037-333240');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C006', N'民族里', N'037-660001');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C007', N'忠孝里', N'037-661145');
INSERT INTO "STUDENT"."VILLAGE" ("村里別代號", "村里別", "村里別辦公室電話") VALUES ('C008', N'信義里', N'037-616072');

INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B1', 'A1', 'C001', N'苗栗縣竹南鎮中埔街20號', '100', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B2', 'A2', 'C002', N'苗栗縣竹南鎮和平街79號', '3142', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B3', 'A2', 'C003', N'苗栗縣竹南鎮龍山路三段142號', '1072', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B4', 'A3', 'C004', N'苗栗縣後龍鎮中華路1498號', '32', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B5', 'A1', 'C005', N'苗栗縣苗栗市米市街80號', '106', '1', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B6', 'A1', 'C005', N'苗栗縣苗栗市光復路117號', '26', '1', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B7', 'A2', 'C005', N'苗栗縣苗栗市博愛街109號', '2038', '2', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B8', 'A2', 'C005', N'苗栗縣苗栗市大同路53號', '128', '2', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B9', 'A3', 'C006', N'苗栗縣頭份市民族里和平路102號', '353', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B10', 'A4', 'C007', N'苗栗縣頭份市忠孝忠孝一路69號', '501', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B11', 'A1', 'C008', N'苗栗縣頭份市信義里中正路65號', '194', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("編號", "類型", "村里別代號", "避難設施地址", "容人數量", "地下樓層數", "轄管分局代碼") VALUES ('B12', 'A4', 'C008', N'苗栗縣頭份市信義里中正路116號', '78', '1', 'M003');

alter table shelter rename column 類別 to 類型;
alter table village add  村里辦公室位置 NVARCHAR2(20);
update VILLAGE set 村里辦公室位置 = '竹南鎮公義路1035號' where 村里別代號 = 'C001';
update VILLAGE set 村里辦公室位置 = '竹南鎮竹南里中山路 103 號' where 村里別代號 = 'C002';
update VILLAGE set 村里辦公室位置 = '竹南鎮山佳里國光街 14 號' where 村里別代號 = 'C003';
update VILLAGE set 村里辦公室位置 = '後龍鎮埔頂里中興路136-1號' where 村里別代號 = 'C004';
update VILLAGE set 村里辦公室位置 = '苗栗市綠苗里中正路 766 號' where 村里別代號 = 'C005';
update VILLAGE set 村里辦公室位置 = '民族里民族路96號' where 村里別代號 = 'C006';
update VILLAGE set 村里辦公室位置 = '忠孝里光大街82號' where 村里別代號 = 'C007';
update VILLAGE set 村里辦公室位置 = '信義里信義路53巷1號' where 村里別代號 = 'C008';


--4-1
select distinct pb.轄管分局, pb.分局連絡電話 
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.轄管分局代碼 = pb.轄管分局代碼
 where 容人數量 >= '1000';
 
--4-2
select distinct pb.轄管分局, pb.分局連絡電話, count(ss.轄管分局代碼) as 轄管分局數量
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.轄管分局代碼 = pb.轄管分局代碼
 where 容人數量 >= '1000'
 group by pb.轄管分局, pb.分局連絡電話;
 
--4-3
select distinct pb.轄管分局, pb.分局連絡電話, count(ss.轄管分局代碼), ss.避難設施地址, st.類別
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.轄管分局代碼 = pb.轄管分局代碼
 inner join SHELTER_TYPE st on st. 編號 = ss.類型
 where 容人數量 >= '1000'
 group by pb.轄管分局, pb.分局連絡電話, ss.避難設施地址, st.類別;
 
--4-4
select distinct vv.村里別, ss.避難設施地址, ss.容人數量, pb.轄管分局, pb.分局連絡電話
 from VILLAGE vv
 inner join SHELTER ss on ss.村里別代號 = vv.村里別代號
 inner join POLICE_BRANCH pb on pb. 轄管分局代碼 = ss.轄管分局代碼
 where ss.避難設施地址 like '%中%';
 
--4-5
select distinct vv.村里別, vv.村里辦公室位置, ss.避難設施地址, ss.容人數量
 from VILLAGE vv
 inner join SHELTER ss on ss.村里別代號 = vv.村里別代號
 where ss."類型" in ('A1','A2');
 
--5-1
update SHELTER  set 容人數量 = '5000'
 where 避難設施地址 = '苗栗縣竹南鎮和平街79號';

--5-2
delete from SHELTER 
 where 容人數量 < '1000';

