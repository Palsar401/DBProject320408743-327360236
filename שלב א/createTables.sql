
prompt Creating MECHANIC...
create table MECHANIC
(
  mechanicid     INTEGER not null,
  mechanicname   VARCHAR2(50),
  specialization VARCHAR2(50)
  constraint MECHANIC_PK primary key (MECHANICID)
)
;
alter table MECHANIC
  add primary key (MECHANICID);

prompt Creating PART...
create table PART
(
  partid          INTEGER not null,
  partname        VARCHAR2(50) not null,
  partdescription VARCHAR2(50) not null,
  partprice       INTEGER not null
)
;
alter table PART
  add primary key (PARTID);

prompt Creating VEHICLE...
create table VEHICLE
(
  vehicleid       INTEGER not null,
  busnumber       INTEGER,
  vehiclemodel    VARCHAR2(50),
  manufactureyear INTEGER
)
;
alter table VEHICLE
  add primary key (VEHICLEID);

prompt Creating REPAIR...
create table REPAIR
(
  repairid          INTEGER not null,
  vehicleid         INTEGER,
  repairdescription VARCHAR2(50),
  repairdate        DATE,
  mechanicid        INTEGER
)
;
alter table REPAIR
  add primary key (REPAIRID);
alter table REPAIR
  add foreign key (VEHICLEID)
  references VEHICLE (VEHICLEID);
alter table REPAIR
  add foreign key (MECHANICID)
  references MECHANIC (MECHANICID);

prompt Creating PARTINREPAIR...
create table PARTINREPAIR
(
  partinrepairid INTEGER not null,
  repairid       INTEGER,
  partid         INTEGER,
  quantity       INTEGER not null
)
;
alter table PARTINREPAIR
  add primary key (PARTINREPAIRID);
alter table PARTINREPAIR
  add foreign key (REPAIRID)
  references REPAIR (REPAIRID);
alter table PARTINREPAIR
  add foreign key (PARTID)
  references PART (PARTID)
  novalidate;

prompt Creating SPECIALIZATION...
create table SPECIALIZATION
(
  id      NUMBER,
  sp_name VARCHAR2(50)
)
;

prompt Disabling foreign key constraints for REPAIR...

alter table REPAIR disable constraint SYS_C008374;
alter table REPAIR disable constraint SYS_C008375;
prompt Disabling foreign key constraints for PARTINREPAIR...
alter table PARTINREPAIR disable constraint SYS_C008387;
alter table PARTINREPAIR disable constraint SYS_C008388;

prompt Truncating SPECIALIZATION...
truncate table SPECIALIZATION;
prompt Truncating PARTINREPAIR...
truncate table PARTINREPAIR;
prompt Truncating REPAIR...
truncate table REPAIR;
prompt Truncating VEHICLE...
truncate table VEHICLE;
prompt Truncating PART...
truncate table PART;
prompt Truncating MECHANIC...
truncate table MECHANIC;
prompt Loading MECHANIC...
prompt Enabling foreign key constraints for REPAIR...
alter table REPAIR enable constraint SYS_C008374;
alter table REPAIR enable constraint SYS_C008375;
prompt Enabling foreign key constraints for PARTINREPAIR...
alter table PARTINREPAIR enable constraint SYS_C008387;
alter table PARTINREPAIR enable constraint SYS_C008388;

set feedback on
set define on
prompt Done