
create table SHELTER_TYPE(
 �s�� CHAR(8) primary key,
 ���O NVARCHAR2(20));

create table POLICE_BRANCH(
 �Һޤ����N�X CHAR(10) primary key,
 �Һޤ��� NVARCHAR2(20),
 �����a�} NVARCHAR2(20),
 �����q�� NVARCHAR2(20));
 
create table VILLAGE(
 �����O�N�� CHAR(10) primary key,
 �����O NVARCHAR2(20),
 �����O�줽�ǹq�� NVARCHAR2(20));
 
create table SHELTER(
 �s�� CHAR(8) primary key,
 ���O CHAR(8) references SHELTER_TYPE(�s��),
 �����O�N�� CHAR(10) references VILLAGE(�����O�N��),
 �]�I�a�} NVARCHAR2(20),
 �e�H�H�� NUMBER(5,0),
 �a�U�Ӽh�� NUMBER(2,0),
 �Һޤ����N�X CHAR(10) references POLICE_BRANCH(�Һޤ����N�X));

INSERT INTO "STUDENT"."SHELTER_TYPE" ("�s��", "���O") VALUES ('A1', N'���J');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("�s��", "���O") VALUES ('A2', N'�j��');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("�s��", "���O") VALUES ('A3', N'���@�]�I');
INSERT INTO "STUDENT"."SHELTER_TYPE" ("�s��", "���O") VALUES ('A4', N'�p����');

INSERT INTO "STUDENT"."POLICE_BRANCH" ("�Һޤ����N�X", "�Һޤ���", "�����a�}", "�����q��") VALUES ('M001', N'�˫n����', N'�]�߿��˫n����ڵ�72��',  N'03 747 4796');
INSERT INTO "STUDENT"."POLICE_BRANCH" ("�Һޤ����N�X", "�Һޤ���", "�����a�}", "�����q��") VALUES ('M002', N'�]�ߤ���', N'�]�߿��]�ߥ������109��',  N'03 732 0059');
INSERT INTO "STUDENT"."POLICE_BRANCH" ("�Һޤ����N�X", "�Һޤ���", "�����a�}", "�����q��") VALUES ('M003', N'�Y������', N'�]�߿��Y����������503��',  N'03 766 3004');

INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C001', N'�j�H��', N'03 758 1072');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C002', N'�˫n��', N'037-472735');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C003', N'�s�Ψ�', N'037-614186');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C004', N'�H����', N'037-724839');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C005', N'��]��', N'037-333240');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C006', N'���ڨ�', N'037-660001');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C007', N'������', N'037-661145');
INSERT INTO "STUDENT"."VILLAGE" ("�����O�N��", "�����O", "�����O�줽�ǹq��") VALUES ('C008', N'�H�q��', N'037-616072');

INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B1', 'A1', 'C001', N'�]�߿��˫n���H��20��', '100', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B2', 'A2', 'C002', N'�]�߿��˫n��M����79��', '3142', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B3', 'A2', 'C003', N'�]�߿��˫n���s�s���T�q142��', '1072', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B4', 'A3', 'C004', N'�]�߿����s���ظ�1498��', '32', '1', 'M001');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B5', 'A1', 'C005', N'�]�߿��]�ߥ��̥���80��', '106', '1', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B6', 'A1', 'C005', N'�]�߿��]�ߥ����_��117��', '26', '1', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B7', 'A2', 'C005', N'�]�߿��]�ߥ��շR��109��', '2038', '2', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B8', 'A2', 'C005', N'�]�߿��]�ߥ��j�P��53��', '128', '2', 'M002');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B9', 'A3', 'C006', N'�]�߿��Y�������ڨ��M����102��', '353', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B10', 'A4', 'C007', N'�]�߿��Y�������������@��69��', '501', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B11', 'A1', 'C008', N'�]�߿��Y�����H�q��������65��', '194', '1', 'M003');
INSERT INTO "STUDENT"."SHELTER" ("�s��", "����", "�����O�N��", "�����]�I�a�}", "�e�H�ƶq", "�a�U�Ӽh��", "�Һޤ����N�X") VALUES ('B12', 'A4', 'C008', N'�]�߿��Y�����H�q��������116��', '78', '1', 'M003');

alter table shelter rename column ���O to ����;
alter table village add  �����줽�Ǧ�m NVARCHAR2(20);
update VILLAGE set �����줽�Ǧ�m = '�˫n���q��1035��' where �����O�N�� = 'C001';
update VILLAGE set �����줽�Ǧ�m = '�˫n��˫n�����s�� 103 ��' where �����O�N�� = 'C002';
update VILLAGE set �����줽�Ǧ�m = '�˫n��s�Ψ������ 14 ��' where �����O�N�� = 'C003';
update VILLAGE set �����줽�Ǧ�m = '���s��H����������136-1��' where �����O�N�� = 'C004';
update VILLAGE set �����줽�Ǧ�m = '�]�ߥ���]�������� 766 ��' where �����O�N�� = 'C005';
update VILLAGE set �����줽�Ǧ�m = '���ڨ����ڸ�96��' where �����O�N�� = 'C006';
update VILLAGE set �����줽�Ǧ�m = '���������j��82��' where �����O�N�� = 'C007';
update VILLAGE set �����줽�Ǧ�m = '�H�q���H�q��53��1��' where �����O�N�� = 'C008';


--4-1
select distinct pb.�Һޤ���, pb.�����s���q�� 
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.�Һޤ����N�X = pb.�Һޤ����N�X
 where �e�H�ƶq >= '1000';
 
--4-2
select distinct pb.�Һޤ���, pb.�����s���q��, count(ss.�Һޤ����N�X) as �Һޤ����ƶq
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.�Һޤ����N�X = pb.�Һޤ����N�X
 where �e�H�ƶq >= '1000'
 group by pb.�Һޤ���, pb.�����s���q��;
 
--4-3
select distinct pb.�Һޤ���, pb.�����s���q��, count(ss.�Һޤ����N�X), ss.�����]�I�a�}, st.���O
 from POLICE_BRANCH pb
 inner join SHELTER ss on ss.�Һޤ����N�X = pb.�Һޤ����N�X
 inner join SHELTER_TYPE st on st. �s�� = ss.����
 where �e�H�ƶq >= '1000'
 group by pb.�Һޤ���, pb.�����s���q��, ss.�����]�I�a�}, st.���O;
 
--4-4
select distinct vv.�����O, ss.�����]�I�a�}, ss.�e�H�ƶq, pb.�Һޤ���, pb.�����s���q��
 from VILLAGE vv
 inner join SHELTER ss on ss.�����O�N�� = vv.�����O�N��
 inner join POLICE_BRANCH pb on pb. �Һޤ����N�X = ss.�Һޤ����N�X
 where ss.�����]�I�a�} like '%��%';
 
--4-5
select distinct vv.�����O, vv.�����줽�Ǧ�m, ss.�����]�I�a�}, ss.�e�H�ƶq
 from VILLAGE vv
 inner join SHELTER ss on ss.�����O�N�� = vv.�����O�N��
 where ss."����" in ('A1','A2');
 
--5-1
update SHELTER  set �e�H�ƶq = '5000'
 where �����]�I�a�} = '�]�߿��˫n��M����79��';

--5-2
delete from SHELTER 
 where �e�H�ƶq < '1000';

