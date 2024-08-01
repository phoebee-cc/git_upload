
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

insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A1', N'���J');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A2', N'�j��');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A3', N'���@�]�I');
insert into STUDENT.SHELTER_TYPE ("NO", "TYPE") VALUES ('A4', N'�p����');
commit;

insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M001', N'�˫n����', N'�]�߿��˫n����ڵ�72��',  N'03 747 4796');
insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M002', N'�]�ߤ���', N'�]�߿��]�ߥ������109��',  N'03 732 0059');
insert into STUDENT.POLICE_BRANCH ("POLICE_ID", "BRANCH_NM", "PLACE", "TEL") VALUES ('M003', N'�Y������', N'�]�߿��Y����������503��',  N'03 766 3004');
commit;

insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C001', N'�j�H��', N'03 758 1072', N'�˫n���q��1035��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C002', N'�˫n��', N'037-472735', N'�˫n��˫n�����s�� 103 ��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C003', N'�s�Ψ�', N'037-614186', N'�˫n��s�Ψ������ 14 ��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C004', N'�H����', N'037-724839', N'���s��H����������136-1��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C005', N'��]��', N'037-333240', N'�]�ߥ���]�������� 766 ��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C006', N'���ڨ�', N'037-660001', N'���ڨ����ڸ�96��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C007', N'������', N'037-661145', N'���������j��82��');
insert into STUDENT.VILLAGE ("ID", "VILLAGE_NM", "TEL", "PLACE") VALUES ('C008', N'�H�q��', N'037-616072', N'�H�q���H�q��53��1��');
commit;

insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B1', 'A1', 'C001', N'�]�߿��˫n���H��20��', '100', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B2', 'A2', 'C002', N'�]�߿��˫n��M����79��', '3142', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B3', 'A2', 'C003', N'�]�߿��˫n���s�s���T�q142��', '1072', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B4', 'A3', 'C004', N'�]�߿����s���ظ�1498��', '32', '1', 'M001');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B5', 'A1', 'C005', N'�]�߿��]�ߥ��̥���80��', '106', '1', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B6', 'A1', 'C005', N'�]�߿��]�ߥ����_��117��', '26', '1', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B7', 'A2', 'C005', N'�]�߿��]�ߥ��շR��109��', '2038', '2', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B8', 'A2', 'C005', N'�]�߿��]�ߥ��j�P��53��', '128', '2', 'M002');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B9', 'A3', 'C006', N'�]�߿��Y�������ڨ��M����102��', '353', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B10', 'A4', 'C007', N'�]�߿��Y�������������@��69��', '501', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B11', 'A1', 'C008', N'�]�߿��Y�����H�q��������65��', '194', '1', 'M003');
insert into STUDENT.SHELTER ("NO", "TYPE", "ID", "ADDRESS", "CAPACITY", "FLOOR", "POLICE_ID") VALUES ('B12', 'A4', 'C008', N'�]�߿��Y�����H�q��������116��', '78', '1', 'M003');
commit;

--4-1
select distinct pb.BRANCH_NM as "�Һޤ���", pb.TEL as "�����s���q��"
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 where CAPACITY >= 1000;
 
--4-2
select distinct pb.BRANCH_NM as "�Һޤ���", pb.TEL as "�����s���q��", count(ss.POLICE_ID) as �Һޤ����ƶq
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 where CAPACITY >= 1000
 group by pb.BRANCH_NM, pb.TEL;
 
--4-3
select distinct pb.BRANCH_NM as "�Һޤ���", pb.TEL as "�����s���q��", count(ss.POLICE_ID) as �Һޤ����ƶq, ss.ADDRESS as "�����]�I�a�}", st.TYPE as "����"
 from STUDENT.POLICE_BRANCH pb
 inner join STUDENT.SHELTER ss on ss.POLICE_ID = pb.POLICE_ID
 inner join STUDENT.SHELTER_TYPE st on st. NO = ss.TYPE
 where CAPACITY >= 1000
 group by pb.BRANCH_NM, pb.TEL, ss.ADDRESS, st.TYPE;
 
--4-4
select distinct vv.VILLAGE_NM as "�����O", ss.ADDRESS as "�����]�I�a�}", ss.CAPACITY as "�e�H�ƶq", pb.BRANCH_NM as "�Һޤ���", pb.TEL as "�����s���q��"
 from STUDENT.VILLAGE vv
 inner join STUDENT.SHELTER ss on ss.ID = vv.ID
 inner join STUDENT.POLICE_BRANCH pb on pb. POLICE_ID = ss.POLICE_ID
 where ss.ADDRESS like '%��%';
 
--4-5
select distinct vv.VILLAGE_NM as "�����O", vv.PLACE as "�����줽�Ǧ�m", ss.ADDRESS as "�����]�I�a�}", ss.CAPACITY as "�e�H�ƶq"
 from STUDENT.VILLAGE vv
 inner join STUDENT.SHELTER ss on ss.ID = vv.ID
 where ss.TYPE in ('A1','A2');
 
--5-1
update STUDENT.SHELTER set CAPACITY = 5000
 where ADDRESS = '�]�߿��˫n��M����79��';

--5-2
delete from STUDENT.SHELTER 
 where CAPACITY < 1000;



