prompt PL/SQL Developer Export Tables for user C##BOSS@XE
prompt Created by 97254 on יום רביעי 07 אוגוסט 2024
set feedback off
set define off

prompt Creating MECHANIC...
create table MECHANIC
(
  mechanicid     INTEGER not null,
  mechanicname   VARCHAR2(50),
  specialization VARCHAR2(50)
)
;
alter table MECHANIC
  add primary key (MECHANICID);

prompt Creating PART...
create table PART
(
  partid          INTEGER not null,
  partname        VARCHAR2(50) default 'Unknown' not null,
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
alter table VEHICLE
  add constraint CHK_BUSNUMBER
  check (BUSNUMBER > 0);
alter table VEHICLE
  add constraint CHK_MANUFACTUREYEAR
  check (MANUFACTUREYEAR BETWEEN 1990 AND 2024);

prompt Creating REPAIR...
create table REPAIR
(
  repairid          INTEGER not null,
  vehicleid         INTEGER,
  repairdescription VARCHAR2(50) not null,
  repairdate        DATE,
  mechanicid        INTEGER
)
;
alter table REPAIR
  add constraint REPAIR_PK primary key (REPAIRID);
alter table REPAIR
  add constraint MECHANIC_FK foreign key (MECHANICID)
  references MECHANIC (MECHANICID);
alter table REPAIR
  add constraint VEHICLE_FK foreign key (VEHICLEID)
  references VEHICLE (VEHICLEID);

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
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (72, 'cdobeson0', 'selman0');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (77, 'dboullin1', 'shaverty1');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (14, 'ebellamy2', 'nblake2');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (86, 'jbenedict3', 'ogoodsal3');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (57, 'ndorney4', 'nhuckstepp4');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (82, 'mcoppins5', 'gmoses5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (47, 'ehartwell6', 'afransson6');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (84, 'mmeriel7', 'rtwigley7');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (53, 'jmcgoldrick8', 'plaugherane8');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (62, 'moakden9', 'jsaffle9');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (43, 'ktorregiania', 'fprena');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (59, 'mwileyb', 'zithellb');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (15, 'arobetc', 'akunzec');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (27, 'jholwelld', 'jcheckleyd');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (50, 'eensere', 'eproswelle');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (31, 'agoodfellowef', 'rbyronf');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (95, 'mharsnepg', 'dbloysg');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (67, 'mpearsh', 'lguyonh');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (703, 'Jamal', 'Silverado');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (665, 'Kain', 'Astro');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (404, 'Durant', 'Outback');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (436, 'Doyle', '400SEL');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (700, 'Dorey', 'Vitara');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (469, 'Redd', 'A5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (689, 'Theodoric', '3 Series');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (616, 'Kalle', 'Forester');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (692, 'Jed', 'Ranger');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (546, 'Say', '5 Series');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (514, 'Windham', 'Prizm');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (688, 'Yehudit', 'Sunfire');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (652, 'Sebastian', 'Kizashi');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (341, 'Waring', 'Maxima');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (638, 'Raff', 'Protege');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (704, 'Ahmad', 'Tempest');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (539, 'Ario', 'Cooper Clubman');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (744, 'Alejoa', 'Liberty');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (601, 'Isaac', 'Engine Tuning');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (602, 'Marta', 'Bodywork');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (603, 'Erick', 'Transmission Repair');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (604, 'Amelia', 'Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (605, 'Carlos', 'Suspension');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (606, 'Rosa', 'Brakes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (607, 'Luca', 'Performance Tuning');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (608, 'Julia', 'Air Conditioning');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (609, 'Diego', 'Steering Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (610, 'Sofia', 'Fuel Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (611, 'Mateo', 'Exhaust Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (612, 'Valentina', 'Interior');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (613, 'Emilio', 'Wheels and Tires');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (614, 'Camila', 'Hybrid Vehicles');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (615, 'Manuel', 'Diesel Engines');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (617, 'Nicolas', 'Performance Upgrades');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (618, 'Isabella', 'Paint');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (619, 'Alejandro', 'Diagnostics');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (252, 'Roobbie', 'Mazdaspeed 3');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (268, 'Carlen', 'Legacy');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (275, 'Juieta', 'Equinox');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (461, 'Justus', 'GranTurismo');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (339, 'Carlye', 'Insight');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (374, 'Herc', 'tC');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (308, 'Raina', 'Eurovan');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (422, 'Sophie', 'Accord');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (504, 'Jillane', 'F150');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (395, 'Dixie', 'Amanti');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (257, 'Marian', 'Sunbird');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (396, 'Kathryn', 'SJ');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (574, 'Jonie', 'Camaro');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (204, 'Linzy', 'Esperante');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (298, 'Tamarah', 'Grand Prix');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (292, 'Dex', 'Forenza');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (226, 'Anita', 'H1');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (464, 'Fanny', 'Element');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (534, 'Kingsley', 'B-Series Plus');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (330, 'Vivien', 'Hombre Space');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (547, 'Brien', 'Colorado');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (354, 'Tobe', 'PT Cruiser');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (281, 'Stephannie', 'Forte');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (282, 'Sybila', 'Astro');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (527, 'Broderic', 'F-Series Super Duty');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (349, 'Kelly', '4Runner');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (225, 'Banky', '940');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (344, 'Sarita', 'Eclipse');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (367, 'Heidie', 'Evora');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (437, 'Moyna', 'Mirage');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (267, 'Traci', 'Land Cruiser');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (251, 'Iolanthe', 'Mazda6');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (375, 'Tyson', 'LS');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (216, 'Connie', 'Quest');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (279, 'Roselia', 'rio');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (537, 'Addi', 'Aventador');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (212, 'Moore', '3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (203, 'Glennis', 'Yaris');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (290, 'Zandra', 'Trooper');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (417, 'Delia', 'G25');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (214, 'Moshe', 'G-Series 3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (501, 'Delmar', 'Solstice');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (533, 'Augustin', 'CTS');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (431, 'Brett', 'Galant');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (313, 'Raoul', 'Impreza');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (591, 'Shelley', 'Mini');
commit;
prompt 100 records committed...
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (386, 'Florrie', 'Montego');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (474, 'Bren', 'Ridgeline');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (486, 'Genovera', 'Ranger');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (526, 'Hyman', 'VehiCROSS');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (418, 'Padraic', 'MX-5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (553, 'Yehudi', 'Ram 1500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (317, 'Frants', 'Sonata');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (398, 'Livvy', '944');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (481, 'Stanislas', 'RX Hybrid');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (570, 'Case', 'Ram 1500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (273, 'Jeniece', 'Pathfinder');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (265, 'Amata', 'Land Cruiser');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (596, 'Dom', 'Thunderbird');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (429, 'Curran', 'Diamante');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (255, 'Adena', 'Murano');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (583, 'Dannel', 'Dakota');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (237, 'Octavius', '3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (551, 'Loreen', 'Elan');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (272, 'Kristofer', 'W201');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (448, 'Benedikt', 'Prelude');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (511, 'Jasmine', 'Sebring');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (440, 'Dew', 'Grand Marquis');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (579, 'Mart', 'MR2');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (460, 'Monica', 'Maxima');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (468, 'Caye', 'LSS');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (575, 'Rodrigo', 'Grand Prix');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (578, 'Gian', 'Stratus');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (535, 'Obed', 'Accord');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (289, 'Aguste', 'Ram 1500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (410, 'Hobey', '9-5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (262, 'My', 'Alcyone SVX');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (447, 'Claudie', 'MKS');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (250, 'Emelita', 'Savana Cargo Van');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (568, 'Farrell', 'Land Cruiser');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (592, 'Zebulon', 'Bronco II');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (520, 'Vikki', '3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (509, 'Nate', 'SC');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (234, 'Fielding', 'Safari');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (476, 'Hildegarde', 'Town Car');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (466, 'Mikaela', 'Model T');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (521, 'Averil', 'Sentra');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (456, 'Thomas', 'XC90');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (566, 'Cordy', 'C-Class');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (562, 'Sigvard', 'G-Series G30');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (294, 'Fidole', 'Murci?lago');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (424, 'Jeth', 'Dakota');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (421, 'Meridel', 'Grand Voyager');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (384, 'Markus', 'Bonneville');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (283, 'Gloriana', 'LeSabre');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (280, 'Carly', 'Villager');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (245, 'Truda', 'Previa');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (390, 'Brianna', 'Galant');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (302, 'Zandra', 'Galaxie');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (420, 'Orran', 'S-Class');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (409, 'Theda', 'Lynx');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (487, 'Janie', 'Golf');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (208, 'Kynthia', 'Suburban 2500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (236, 'Joletta', 'Vantage');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (315, 'Court', 'TSX');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (488, 'Arri', 'Summit');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (576, 'Goddard', 'Accord');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (523, 'Kacy', '370Z');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (489, 'Ian', 'Taurus');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (230, 'Ulrich', 'MKT');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (555, 'Sigmund', 'Bonneville');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (323, 'Ted', 'Grand Prix');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (472, 'Francklin', 'SX4');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (600, 'Portie', 'Seville');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (227, 'Carr', 'V8 Vantage');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (438, 'Hebert', 'Spectra');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (207, 'Albie', 'S4');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (484, 'Randene', 'D350 Club');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (228, 'Sullivan', 'Mighty Max');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (222, 'Judah', 'L-Series');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (538, 'Fancy', 'Sentra');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (581, 'Cad', 'Amigo');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (363, 'York', 'Grand Prix');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (525, 'Orin', 'Fleetwood');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (348, 'Ericka', 'S40');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (366, 'Ruddy', 'Elantra');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (515, 'Corie', 'Tacoma');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (455, 'Worthington', 'Ridgeline');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (560, 'Karolina', 'Impala');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (427, 'Thaddus', 'VUE');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (449, 'Di', 'Crown Victoria');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (463, 'Gwyn', 'Vision');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (202, 'Perl', 'Navigator');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (499, 'Celinda', 'Econoline E250');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (394, 'Haze', 'Mazda2');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (300, 'Bennie', 'Ram 2500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (552, 'Gauthier', 'Touareg');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (500, 'Adrian', '3 Series');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (397, 'Herschel', 'X3');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (498, 'Shanna', 'Boxster');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (218, 'Sherman', 'Familia');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (483, 'Cleo', 'Legacy');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (425, 'Valentine', 'Tacoma');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (379, 'Cathrine', 'Corvette');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (239, 'Loydie', 'Sienna');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (473, 'Leigh', 'B-Series Plus');
commit;
prompt 200 records committed...
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (261, 'Freemon', 'A6');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (343, 'Starlene', 'Altima');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (516, 'Massimiliano', 'F150');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (492, 'Roana', 'Maxima');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (557, 'Sunny', 'Neon');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (558, 'Welch', 'Bravada');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (528, 'Quintina', 'Avalon');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (399, 'Griff', 'S-Class');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (383, 'Aurea', 'Sedona');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (510, 'Arthur', 'Avalanche 2500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (373, 'Fairfax', 'rio');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (502, 'Moritz', 'S8');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (478, 'Mollie', 'S8');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (563, 'Haroun', 'Camaro');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (288, 'Biddie', 'Borrego');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (405, 'Addison', 'Range Rover');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (595, 'Port', 'Tahoe');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (446, 'Idaline', 'GranSport');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (378, 'Bunnie', 'Impala');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (403, 'Dorolisa', 'Metro');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (393, 'Eda', 'Caprice');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (353, 'Blair', 'LFA');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (495, 'Yuri', 'Golf');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (589, 'Darell', 'X-Type');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (233, 'Tabbi', 'S8');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (408, 'Zarah', 'Corvette');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (274, 'Marie-ann', 'Colt');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (567, 'Wendeline', 'Suburban');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (318, 'Lola', 'LTD Crown Victoria');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (224, 'Toddie', 'C-Class');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (580, 'Bernice', 'Grand Prix');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (507, 'Rey', 'Vantage');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (331, 'Adina', 'Camry');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (325, 'Eugenio', 'X5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (543, 'Jolie', 'Vibe');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (458, 'Godfry', 'Caravan');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (451, 'Bunni', 'Land Cruiser');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (351, 'Rem', 'Ranger');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (340, 'Mayor', 'XG350');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (542, 'Levin', 'Pilot');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (412, 'Norbie', 'Cougar');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (321, 'Morgun', 'XJ');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (242, 'Kalil', 'Century');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (590, 'Joellyn', 'Town Car');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (452, 'Elston', 'Miata MX-5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (432, 'Abigael', 'Impala');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (522, 'Geno', 'NSX');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (215, 'Lula', 'Thunderbird');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (445, 'Jessika', 'Arnage');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (312, 'Emylee', 'LeSabre');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (497, 'Octavia', 'Mazda5');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (571, 'Philipa', 'Sienna');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (475, 'Hartley', '98');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (593, 'Mahmud', '3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (457, 'Veronique', 'Justy');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (306, 'Milena', 'Endeavor');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (387, 'Will', 'W201');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (482, 'Shina', 'Celica');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (503, 'Selene', 'Silverado 1500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (358, 'Eddi', '525');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (392, 'Kelsy', 'I');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (599, 'Rem', 'Civic');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (316, 'Jacquenette', 'Silverado 3500');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (286, 'Marwin', 'Grand Am');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (377, 'Leta', 'Swift');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (564, 'Broderic', 'Optima');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (620, 'Martina', 'Chassis');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (621, 'Benjamin', 'Detailing');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (622, 'Renata', 'Alloy Wheels');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (623, 'Juan', 'Turbochargers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (624, 'Luisa', 'Fuel Injection Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (625, 'Gustavo', 'Timing Belts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (626, 'Gabriela', 'Ignition Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (627, 'Matias', 'Cooling Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (628, 'Valeria', 'Clutches');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (629, 'Pablo', 'Radiator Repair');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (630, 'Antonella', 'Alternators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (631, 'Emiliano', 'Water Pumps');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (632, 'Catalina', 'Engine Rebuilding');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (633, 'Facundo', 'Brake Pads');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (634, 'Abril', 'Spark Plugs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (635, 'Maximiliano', 'Drive Belts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (636, 'Martina', 'Headlights');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (637, 'Federico', 'Tail Lights');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (639, 'Amalia', 'Power Windows');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (640, 'Joaquin', 'Door Locks');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (641, 'Constanza', 'Engine Oil');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (642, 'Ignacio', 'Gearboxes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (643, 'Valentina', 'Starter Motors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (644, 'Felipe', 'Air Filters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (645, 'Renata', 'Cabin Filters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (646, 'Bautista', 'Oxygen Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (647, 'Micaela', 'Fuel Filters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (648, 'Thiago', 'EGR Valves');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (649, 'Elena', 'MAP Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (650, 'Agustin', 'Camshaft Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (651, 'Victoria', 'Crankshaft Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (653, 'Amanda', 'ABS Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (654, 'Leonardo', 'Wheel Speed Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (655, 'Sol', 'Knock Sensors');
commit;
prompt 300 records committed...
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (656, 'Emma', 'Coolant Temperature Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (657, 'Julieta', 'Oil Pressure Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (658, 'Tom?s', 'Manifold Pressure Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (659, 'Isidro', 'Steering Angle Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (660, 'Olivia', 'Glow Plugs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (661, 'Luciano', 'Turbos');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (662, 'Juana', 'Intercoolers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (663, 'Gaspar', 'Thermostats');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (664, 'Irene', 'Fan Belts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (666, 'Eva', 'Blower Motors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (667, 'Marcos', 'Window Regulators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (668, 'Rocio', 'Sunroof Mechanisms');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (669, 'Hugo', 'Hood Struts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (670, 'Clara', 'Trunk Struts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (671, 'Facundo', 'Windshield Wipers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (672, 'Selena', 'Fog Lights');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (673, 'Simon', 'Side Mirrors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (674, 'Valentina', 'Car Batteries');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (675, 'Felipe', 'Jump Start');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (676, 'Martina', 'Alternator Belts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (677, 'Tomas', 'Cylinder Heads');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (678, 'Emilia', 'Pistons');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (679, 'Diego', 'Engine Blocks');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (680, 'Antonella', 'Cylinder Liners');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (681, 'Lautaro', 'Crankshafts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (682, 'Mia', 'Connecting Rods');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (683, 'Mateo', 'Oil Filters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (684, 'Valentina', 'Air Conditioning Filters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (685, 'Benicio', 'Emissions Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (686, 'Catalina', 'Evaporative Emission Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (687, 'Emilio', 'Fuel Vapor Canisters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (690, 'Micaela', 'Catalytic Converters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (691, 'Thiago', 'Exhaust Manifolds');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (693, 'Agustin', 'Resonators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (694, 'Victoria', 'Flex Pipes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (695, 'Santiago', 'Tailpipe Extensions');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (696, 'Amanda', 'Hangers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (697, 'Leonardo', 'Clamps');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (698, 'Sol', 'Gaskets');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (699, 'Emma', 'Seals');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (701, 'Julieta', 'Bushings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (702, 'Tom?s', 'Bearings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (705, 'Luciano', 'Tie Rod Ends');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (706, 'Juana', 'Sway Bars');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (707, 'Gaspar', 'Steering Racks');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (708, 'Irene', 'Power Steering Pumps');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (709, 'Eva', 'Struts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (710, 'Marcos', 'Shock Absorbers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (711, 'Rocio', 'Coil Springs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (712, 'Hugo', 'Leaf Springs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (713, 'Clara', 'Air Suspension');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (714, 'Facundo', 'Leveling Kits');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (715, 'Selena', 'Lift Kits');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (716, 'Simon', 'Wheel Bearings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (717, 'Valentina', 'Axles');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (718, 'Felipe', 'CV Joints');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (719, 'Martina', 'Differentials');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (720, 'Tomas', 'Transfer Cases');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (721, 'Emilia', 'Universal Joints');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (722, 'Diego', 'Drive Shafts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (723, 'Antonella', 'Clutch Kits');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (724, 'Lautaro', 'Flywheels');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (725, 'Mia', 'Pressure Plates');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (726, 'Mateo', 'Release Bearings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (727, 'Valentina', 'Slave Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (728, 'Benicio', 'Master Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (729, 'Catalina', 'Brake Calipers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (730, 'Emilio', 'Brake Rotors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (731, 'Valeria', 'Brake Drums');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (732, 'Bautista', 'Brake Shoes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (733, 'Micaela', 'Brake Lines');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (734, 'Thiago', 'Brake Fluid');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (735, 'Elena', 'ABS Control Modules');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (736, 'Agustin', 'Wheel Speed Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (737, 'Victoria', 'Hydraulic Modulators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (739, 'Santiago', 'Brake Boosters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (740, 'Amanda', 'Parking Brake Cables');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (741, 'Leonardo', 'Brake Master Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (742, 'Sol', 'Brake Proportioning Valves');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (743, 'Emma', 'Brake Pedal Assemblies');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (745, 'Tom?s', 'Clutch Slave Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (746, 'Isidro', 'Clutch Discs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (747, 'Olivia', 'Clutch Covers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (748, 'Luciano', 'Pressure Plates');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (749, 'Juana', 'Release Bearings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (750, 'Gaspar', 'Flywheels');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (751, 'Irene', 'Slave Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (752, 'Eva', 'Master Cylinders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (753, 'Marcos', 'Pressure Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (754, 'Rocio', 'Temperature Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (755, 'Hugo', 'Level Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (756, 'Clara', 'Position Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (757, 'Facundo', 'Speed Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (758, 'Selena', 'Fluid Pressure Sensors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (759, 'Simon', 'Voltage Regulators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (760, 'Valentina', 'Rectifiers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (761, 'Felipe', 'Alternator Brushes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (762, 'Martina', 'Voltage Regulators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (763, 'Tomas', 'Alternator Bearings');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (764, 'Emilia', 'Diodes');
commit;
prompt 400 records committed...
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (765, 'Diego', 'Brush Holders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (766, 'Antonella', 'Starter Drives');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (767, 'Lautaro', 'Armatures');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (768, 'Mia', 'Solenoids');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (769, 'Mateo', 'Field Coils');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (770, 'Valentina', 'Start/Stop Systems');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (771, 'Benicio', 'Battery Cables');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (772, 'Catalina', 'Battery Terminals');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (773, 'Emilio', 'Battery Trays');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (774, 'Valeria', 'Battery Hold-Downs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (775, 'Bautista', 'Battery Boxes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (776, 'Micaela', 'Battery Chargers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (777, 'Thiago', 'Jump Starters');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (778, 'Elena', 'Battery Testers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (779, 'Agustin', 'Battery Maintainers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (780, 'Victoria', 'Battery Desulfators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (781, 'Santiago', 'Battery Acid');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (782, 'Amanda', 'Battery Water');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (783, 'Leonardo', 'Battery Cleaner');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (784, 'Sol', 'Battery Terminal Protectors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (785, 'Emma', 'Battery Post Cleaners');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (786, 'Julieta', 'Battery Terminals');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (787, 'Tom?s', 'Battery Cables');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (788, 'Isidro', 'Battery Switches');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (789, 'Olivia', 'Battery Disconnects');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (790, 'Luciano', 'Battery Tenders');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (791, 'Juana', 'Battery Boxes');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (792, 'Gaspar', 'Battery Brackets');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (793, 'Irene', 'Battery Hold-Downs');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (794, 'Eva', 'Battery Trays');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (795, 'Marcos', 'Battery Mounts');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (796, 'Rocio', 'Battery Isolators');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (797, 'Hugo', 'Battery Monitors');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (798, 'Clara', 'Battery Analyzers');
insert into MECHANIC (mechanicid, mechanicname, specialization)
values (799, 'Facundo', 'Battery Chargers');
commit;
prompt 435 records loaded
prompt Loading PART...
insert into PART (partid, partname, partdescription, partprice)
values (83, 'jivanishin0', 'gboorer0', 613);
insert into PART (partid, partname, partdescription, partprice)
values (95, 'sshrimpling2', 'cstump2', 178);
insert into PART (partid, partname, partdescription, partprice)
values (77, 'vshutte3', 'hsymonds3', 2141);
insert into PART (partid, partname, partdescription, partprice)
values (81, 'bpandya5', 'mswatheridge5', 147);
insert into PART (partid, partname, partdescription, partprice)
values (62, 'npaxforde6', 'vproctor6', 3557);
insert into PART (partid, partname, partdescription, partprice)
values (50, 'ablythe7', 'nmcnally7', 4525);
insert into PART (partid, partname, partdescription, partprice)
values (54, 'gclayden9', 'gvalentinetti9', 3574);
insert into PART (partid, partname, partdescription, partprice)
values (78, 'jcourtneyf', 'fpraterf', 3787);
insert into PART (partid, partname, partdescription, partprice)
values (30, 'afaintg', 'jdreinang', 3282);
insert into PART (partid, partname, partdescription, partprice)
values (76, 'ibottomerh', 'hmencoh', 2285);
insert into PART (partid, partname, partdescription, partprice)
values (73, 'eranbyi', 'slarrosai', 572);
insert into PART (partid, partname, partdescription, partprice)
values (90, 'cblanpeinl', 'llewzeyl', 3621);
insert into PART (partid, partname, partdescription, partprice)
values (92, 'vbakhrushkino', 'iroblouo', 3273);
insert into PART (partid, partname, partdescription, partprice)
values (100, 'nsawdon1', 'idrewitt1', 78);
insert into PART (partid, partname, partdescription, partprice)
values (60, 'iclohissy4', 'escogin4', 38);
insert into PART (partid, partname, partdescription, partprice)
values (69, 'esayes5', 'ttuke5', 56);
insert into PART (partid, partname, partdescription, partprice)
values (93, 'dkopfb', 'atowheyb', 87);
insert into PART (partid, partname, partdescription, partprice)
values (71, 'wgreensladed', 'bkollaschekd', 27);
insert into PART (partid, partname, partdescription, partprice)
values (51, 'vkerfordf', 'bledwardf', 37);
insert into PART (partid, partname, partdescription, partprice)
values (97, 'balcottg', 'kpendreg', 60);
insert into PART (partid, partname, partdescription, partprice)
values (67, 'achildrensi', 'chaighi', 1);
insert into PART (partid, partname, partdescription, partprice)
values (68, 'acranshawm', 'ldiblem', 49);
insert into PART (partid, partname, partdescription, partprice)
values (82, 'gabramovitzr', 'vhoxeyr', 12);
insert into PART (partid, partname, partdescription, partprice)
values (29, 'fskirvenu', 'mbernocchiu', 19);
insert into PART (partid, partname, partdescription, partprice)
values (84, 'lthickensw', 'mthornebarroww', 96);
insert into PART (partid, partname, partdescription, partprice)
values (59, 'wskusex', 'oalldisx', 8);
insert into PART (partid, partname, partdescription, partprice)
values (64, 'sgniewoszy', 'hwillbourney', 10);
insert into PART (partid, partname, partdescription, partprice)
values (58, 'scadogan14', 'shoodlass14', 80);
insert into PART (partid, partname, partdescription, partprice)
values (74, 'shenfre15', 'lmumbey15', 42);
insert into PART (partid, partname, partdescription, partprice)
values (55, 'gjakubovsky18', 'iprandi18', 27);
insert into PART (partid, partname, partdescription, partprice)
values (225, 'dcrady0', 'cdackombe0', 155);
insert into PART (partid, partname, partdescription, partprice)
values (256, 'sarons1', 'cpitcaithly1', 133);
insert into PART (partid, partname, partdescription, partprice)
values (261, 'cwoodwind2', 'elamminam2', 101);
insert into PART (partid, partname, partdescription, partprice)
values (212, 'abidgood3', 'jsprigings3', 119);
insert into PART (partid, partname, partdescription, partprice)
values (200, 'doshiels4', 'ahuey4', 136);
insert into PART (partid, partname, partdescription, partprice)
values (217, 'pcopas5', 'abaldwin5', 111);
insert into PART (partid, partname, partdescription, partprice)
values (269, 'sobrallaghan6', 'mbagguley6', 141);
insert into PART (partid, partname, partdescription, partprice)
values (273, 'pgarrique7', 'vprodrick7', 176);
insert into PART (partid, partname, partdescription, partprice)
values (257, 'pbodker8', 'hlartice8', 109);
insert into PART (partid, partname, partdescription, partprice)
values (291, 'mhandlin9', 'shedditeh9', 176);
insert into PART (partid, partname, partdescription, partprice)
values (205, 'wnolleaua', 'rjaquesa', 127);
insert into PART (partid, partname, partdescription, partprice)
values (220, 'ldecourcyc', 'rhuxleyc', 145);
insert into PART (partid, partname, partdescription, partprice)
values (230, 'sdykesd', 'tloomisd', 142);
insert into PART (partid, partname, partdescription, partprice)
values (274, 'ndannattf', 'garonovichf', 141);
insert into PART (partid, partname, partdescription, partprice)
values (231, 'scoarserg', 'ateasdaleg', 102);
insert into PART (partid, partname, partdescription, partprice)
values (213, 'rlantophh', 'wavrashinh', 122);
insert into PART (partid, partname, partdescription, partprice)
values (287, 'cmalarkeyi', 'tyakovlevi', 146);
insert into PART (partid, partname, partdescription, partprice)
values (253, 'kstrethillj', 'abrunskillj', 102);
insert into PART (partid, partname, partdescription, partprice)
values (201, 'shaxleyk', 'jclacsonk', 200);
insert into PART (partid, partname, partdescription, partprice)
values (284, 'ewormanl', 'pblindermannl', 186);
insert into PART (partid, partname, partdescription, partprice)
values (223, 'barentm', 'dhundleym', 173);
insert into PART (partid, partname, partdescription, partprice)
values (299, 'ctourmelln', 'tellorn', 197);
insert into PART (partid, partname, partdescription, partprice)
values (268, 'jwealleanso', 'dbahikeo', 137);
insert into PART (partid, partname, partdescription, partprice)
values (285, 'kbelseyp', 'amcawp', 130);
insert into PART (partid, partname, partdescription, partprice)
values (295, 'dbranchflowerq', 'mfriaryq', 110);
insert into PART (partid, partname, partdescription, partprice)
values (271, 'cbecconsalls', 'sallsups', 117);
insert into PART (partid, partname, partdescription, partprice)
values (265, 'adolbeyu', 'gdecourseyu', 193);
insert into PART (partid, partname, partdescription, partprice)
values (278, 'bdantesiav', 'hjeffersonv', 179);
insert into PART (partid, partname, partdescription, partprice)
values (245, 'aodreainx', 'cgradwellx', 177);
insert into PART (partid, partname, partdescription, partprice)
values (216, 'nleyy', 'afidelliy', 119);
insert into PART (partid, partname, partdescription, partprice)
values (292, 'wsouthers10', 'rgraddell10', 147);
insert into PART (partid, partname, partdescription, partprice)
values (286, 'egumbley11', 'ncrawforth11', 103);
insert into PART (partid, partname, partdescription, partprice)
values (293, 'fdarnell12', 'bcotterill12', 120);
insert into PART (partid, partname, partdescription, partprice)
values (258, 'blemaitre15', 'obispham15', 131);
insert into PART (partid, partname, partdescription, partprice)
values (232, 'pgolby19', 'snowell19', 116);
insert into PART (partid, partname, partdescription, partprice)
values (214, 'fbresner1a', 'lsnowman1a', 123);
insert into PART (partid, partname, partdescription, partprice)
values (247, 'dbalcon1b', 'cgillivrie1b', 167);
insert into PART (partid, partname, partdescription, partprice)
values (215, 'jromero1c', 'cgreenig1c', 138);
insert into PART (partid, partname, partdescription, partprice)
values (249, 'tpalluschek1d', 'hfairpool1d', 188);
insert into PART (partid, partname, partdescription, partprice)
values (290, 'jcrocken1e', 'uthome1e', 156);
insert into PART (partid, partname, partdescription, partprice)
values (276, 'tcatlette1f', 'htrenouth1f', 193);
insert into PART (partid, partname, partdescription, partprice)
values (226, 'fgreenhough1g', 'alockyer1g', 140);
insert into PART (partid, partname, partdescription, partprice)
values (277, 'wgaunson1h', 'bjanas1h', 143);
insert into PART (partid, partname, partdescription, partprice)
values (229, 'bubank1j', 'klincoln1j', 161);
insert into PART (partid, partname, partdescription, partprice)
values (209, 'browling1k', 'aduhamel1k', 164);
insert into PART (partid, partname, partdescription, partprice)
values (250, 'mpenfold1l', 'mchecchetelli1l', 114);
insert into PART (partid, partname, partdescription, partprice)
values (211, 'slars1m', 'rpleven1m', 200);
insert into PART (partid, partname, partdescription, partprice)
values (297, 'mivins1n', 'crennie1n', 182);
insert into PART (partid, partname, partdescription, partprice)
values (202, 'jcaudray1p', 'jcastelletto1p', 138);
insert into PART (partid, partname, partdescription, partprice)
values (207, 'acordingley1q', 'tredit1q', 144);
insert into PART (partid, partname, partdescription, partprice)
values (236, 'tmuspratt1r', 'sdreigher1r', 149);
insert into PART (partid, partname, partdescription, partprice)
values (244, 'tbalcers1s', 'sashbee1s', 193);
insert into PART (partid, partname, partdescription, partprice)
values (288, 'hfellgate1t', 'hbiesterfeld1t', 195);
insert into PART (partid, partname, partdescription, partprice)
values (206, 'kbeardwell1u', 'acable1u', 134);
insert into PART (partid, partname, partdescription, partprice)
values (238, 'moverstall1v', 'jblasoni1v', 164);
insert into PART (partid, partname, partdescription, partprice)
values (203, 'jchalkly1w', 'lgoodboddy1w', 159);
insert into PART (partid, partname, partdescription, partprice)
values (275, 'rohannigan1x', 'zbroddle1x', 150);
insert into PART (partid, partname, partdescription, partprice)
values (283, 'rprettyman21', 'agymlett21', 132);
insert into PART (partid, partname, partdescription, partprice)
values (241, 'ddudney22', 'bcatley22', 142);
insert into PART (partid, partname, partdescription, partprice)
values (281, 'lgeldard23', 'mtomkins23', 158);
insert into PART (partid, partname, partdescription, partprice)
values (270, 'partName270', 'partDesc270', 27);
insert into PART (partid, partname, partdescription, partprice)
values (272, 'partName272', 'partDesc272', 29);
insert into PART (partid, partname, partdescription, partprice)
values (279, 'partName279', 'partDesc279', 36);
insert into PART (partid, partname, partdescription, partprice)
values (280, 'partName280', 'partDesc280', 37);
insert into PART (partid, partname, partdescription, partprice)
values (282, 'partName282', 'partDesc282', 39);
insert into PART (partid, partname, partdescription, partprice)
values (289, 'partName289', 'partDesc289', 46);
insert into PART (partid, partname, partdescription, partprice)
values (294, 'partName294', 'partDesc294', 51);
insert into PART (partid, partname, partdescription, partprice)
values (296, 'partName296', 'partDesc296', 53);
insert into PART (partid, partname, partdescription, partprice)
values (298, 'partName298', 'partDesc298', 55);
insert into PART (partid, partname, partdescription, partprice)
values (300, 'partName300', 'partDesc300', 57);
commit;
prompt 100 records committed...
insert into PART (partid, partname, partdescription, partprice)
values (301, 'partName301', 'partDesc301', 58);
insert into PART (partid, partname, partdescription, partprice)
values (302, 'partName302', 'partDesc302', 59);
insert into PART (partid, partname, partdescription, partprice)
values (303, 'partName303', 'partDesc303', 60);
insert into PART (partid, partname, partdescription, partprice)
values (304, 'partName304', 'partDesc304', 61);
insert into PART (partid, partname, partdescription, partprice)
values (305, 'partName305', 'partDesc305', 62);
insert into PART (partid, partname, partdescription, partprice)
values (306, 'partName306', 'partDesc306', 63);
insert into PART (partid, partname, partdescription, partprice)
values (307, 'partName307', 'partDesc307', 64);
insert into PART (partid, partname, partdescription, partprice)
values (308, 'partName308', 'partDesc308', 65);
insert into PART (partid, partname, partdescription, partprice)
values (309, 'partName309', 'partDesc309', 66);
insert into PART (partid, partname, partdescription, partprice)
values (310, 'partName310', 'partDesc310', 67);
insert into PART (partid, partname, partdescription, partprice)
values (311, 'partName311', 'partDesc311', 68);
insert into PART (partid, partname, partdescription, partprice)
values (312, 'partName312', 'partDesc312', 69);
insert into PART (partid, partname, partdescription, partprice)
values (313, 'partName313', 'partDesc313', 70);
insert into PART (partid, partname, partdescription, partprice)
values (314, 'partName314', 'partDesc314', 71);
insert into PART (partid, partname, partdescription, partprice)
values (315, 'partName315', 'partDesc315', 72);
insert into PART (partid, partname, partdescription, partprice)
values (316, 'partName316', 'partDesc316', 73);
insert into PART (partid, partname, partdescription, partprice)
values (317, 'partName317', 'partDesc317', 74);
insert into PART (partid, partname, partdescription, partprice)
values (318, 'partName318', 'partDesc318', 75);
insert into PART (partid, partname, partdescription, partprice)
values (319, 'partName319', 'partDesc319', 76);
insert into PART (partid, partname, partdescription, partprice)
values (320, 'partName320', 'partDesc320', 77);
insert into PART (partid, partname, partdescription, partprice)
values (321, 'partName321', 'partDesc321', 78);
insert into PART (partid, partname, partdescription, partprice)
values (322, 'partName322', 'partDesc322', 79);
insert into PART (partid, partname, partdescription, partprice)
values (323, 'partName323', 'partDesc323', 80);
insert into PART (partid, partname, partdescription, partprice)
values (324, 'partName324', 'partDesc324', 81);
insert into PART (partid, partname, partdescription, partprice)
values (325, 'partName325', 'partDesc325', 82);
insert into PART (partid, partname, partdescription, partprice)
values (326, 'partName326', 'partDesc326', 83);
insert into PART (partid, partname, partdescription, partprice)
values (327, 'partName327', 'partDesc327', 84);
insert into PART (partid, partname, partdescription, partprice)
values (328, 'partName328', 'partDesc328', 85);
insert into PART (partid, partname, partdescription, partprice)
values (329, 'partName329', 'partDesc329', 86);
insert into PART (partid, partname, partdescription, partprice)
values (330, 'partName330', 'partDesc330', 87);
insert into PART (partid, partname, partdescription, partprice)
values (331, 'partName331', 'partDesc331', 88);
insert into PART (partid, partname, partdescription, partprice)
values (332, 'partName332', 'partDesc332', 89);
insert into PART (partid, partname, partdescription, partprice)
values (333, 'partName333', 'partDesc333', 90);
insert into PART (partid, partname, partdescription, partprice)
values (334, 'partName334', 'partDesc334', 91);
insert into PART (partid, partname, partdescription, partprice)
values (335, 'partName335', 'partDesc335', 92);
insert into PART (partid, partname, partdescription, partprice)
values (336, 'partName336', 'partDesc336', 93);
insert into PART (partid, partname, partdescription, partprice)
values (337, 'partName337', 'partDesc337', 94);
insert into PART (partid, partname, partdescription, partprice)
values (338, 'partName338', 'partDesc338', 95);
insert into PART (partid, partname, partdescription, partprice)
values (339, 'partName339', 'partDesc339', 96);
insert into PART (partid, partname, partdescription, partprice)
values (340, 'partName340', 'partDesc340', 97);
insert into PART (partid, partname, partdescription, partprice)
values (341, 'partName341', 'partDesc341', 98);
insert into PART (partid, partname, partdescription, partprice)
values (342, 'partName342', 'partDesc342', 99);
insert into PART (partid, partname, partdescription, partprice)
values (343, 'partName343', 'partDesc343', 100);
insert into PART (partid, partname, partdescription, partprice)
values (344, 'partName344', 'partDesc344', 101);
insert into PART (partid, partname, partdescription, partprice)
values (345, 'partName345', 'partDesc345', 102);
insert into PART (partid, partname, partdescription, partprice)
values (346, 'partName346', 'partDesc346', 103);
insert into PART (partid, partname, partdescription, partprice)
values (347, 'partName347', 'partDesc347', 104);
insert into PART (partid, partname, partdescription, partprice)
values (348, 'partName348', 'partDesc348', 105);
insert into PART (partid, partname, partdescription, partprice)
values (349, 'partName349', 'partDesc349', 106);
insert into PART (partid, partname, partdescription, partprice)
values (350, 'partName350', 'partDesc350', 107);
insert into PART (partid, partname, partdescription, partprice)
values (351, 'partName351', 'partDesc351', 108);
insert into PART (partid, partname, partdescription, partprice)
values (352, 'partName352', 'partDesc352', 109);
insert into PART (partid, partname, partdescription, partprice)
values (353, 'partName353', 'partDesc353', 110);
insert into PART (partid, partname, partdescription, partprice)
values (354, 'partName354', 'partDesc354', 111);
insert into PART (partid, partname, partdescription, partprice)
values (355, 'partName355', 'partDesc355', 112);
insert into PART (partid, partname, partdescription, partprice)
values (356, 'partName356', 'partDesc356', 113);
insert into PART (partid, partname, partdescription, partprice)
values (357, 'partName357', 'partDesc357', 114);
insert into PART (partid, partname, partdescription, partprice)
values (358, 'partName358', 'partDesc358', 115);
insert into PART (partid, partname, partdescription, partprice)
values (359, 'partName359', 'partDesc359', 116);
insert into PART (partid, partname, partdescription, partprice)
values (360, 'partName360', 'partDesc360', 117);
insert into PART (partid, partname, partdescription, partprice)
values (361, 'partName361', 'partDesc361', 118);
insert into PART (partid, partname, partdescription, partprice)
values (362, 'partName362', 'partDesc362', 119);
insert into PART (partid, partname, partdescription, partprice)
values (363, 'partName363', 'partDesc363', 120);
insert into PART (partid, partname, partdescription, partprice)
values (364, 'partName364', 'partDesc364', 121);
insert into PART (partid, partname, partdescription, partprice)
values (365, 'partName365', 'partDesc365', 122);
insert into PART (partid, partname, partdescription, partprice)
values (366, 'partName366', 'partDesc366', 123);
insert into PART (partid, partname, partdescription, partprice)
values (367, 'partName367', 'partDesc367', 124);
insert into PART (partid, partname, partdescription, partprice)
values (368, 'partName368', 'partDesc368', 125);
insert into PART (partid, partname, partdescription, partprice)
values (369, 'partName369', 'partDesc369', 126);
insert into PART (partid, partname, partdescription, partprice)
values (370, 'partName370', 'partDesc370', 127);
insert into PART (partid, partname, partdescription, partprice)
values (371, 'partName371', 'partDesc371', 128);
insert into PART (partid, partname, partdescription, partprice)
values (372, 'partName372', 'partDesc372', 129);
insert into PART (partid, partname, partdescription, partprice)
values (373, 'partName373', 'partDesc373', 130);
insert into PART (partid, partname, partdescription, partprice)
values (374, 'partName374', 'partDesc374', 131);
insert into PART (partid, partname, partdescription, partprice)
values (375, 'partName375', 'partDesc375', 132);
insert into PART (partid, partname, partdescription, partprice)
values (376, 'partName376', 'partDesc376', 133);
insert into PART (partid, partname, partdescription, partprice)
values (377, 'partName377', 'partDesc377', 134);
insert into PART (partid, partname, partdescription, partprice)
values (378, 'partName378', 'partDesc378', 135);
insert into PART (partid, partname, partdescription, partprice)
values (379, 'partName379', 'partDesc379', 136);
insert into PART (partid, partname, partdescription, partprice)
values (380, 'partName380', 'partDesc380', 137);
insert into PART (partid, partname, partdescription, partprice)
values (381, 'partName381', 'partDesc381', 138);
insert into PART (partid, partname, partdescription, partprice)
values (382, 'partName382', 'partDesc382', 139);
insert into PART (partid, partname, partdescription, partprice)
values (383, 'partName383', 'partDesc383', 140);
insert into PART (partid, partname, partdescription, partprice)
values (384, 'partName384', 'partDesc384', 141);
insert into PART (partid, partname, partdescription, partprice)
values (385, 'partName385', 'partDesc385', 142);
insert into PART (partid, partname, partdescription, partprice)
values (386, 'partName386', 'partDesc386', 143);
insert into PART (partid, partname, partdescription, partprice)
values (387, 'partName387', 'partDesc387', 144);
insert into PART (partid, partname, partdescription, partprice)
values (388, 'partName388', 'partDesc388', 145);
insert into PART (partid, partname, partdescription, partprice)
values (389, 'partName389', 'partDesc389', 146);
insert into PART (partid, partname, partdescription, partprice)
values (390, 'partName390', 'partDesc390', 147);
insert into PART (partid, partname, partdescription, partprice)
values (391, 'partName391', 'partDesc391', 148);
insert into PART (partid, partname, partdescription, partprice)
values (392, 'partName392', 'partDesc392', 149);
insert into PART (partid, partname, partdescription, partprice)
values (393, 'partName393', 'partDesc393', 150);
insert into PART (partid, partname, partdescription, partprice)
values (394, 'partName394', 'partDesc394', 151);
insert into PART (partid, partname, partdescription, partprice)
values (397, 'partName397', 'partDesc397', 154);
insert into PART (partid, partname, partdescription, partprice)
values (398, 'partName398', 'partDesc398', 155);
insert into PART (partid, partname, partdescription, partprice)
values (399, 'partName399', 'partDesc399', 156);
insert into PART (partid, partname, partdescription, partprice)
values (400, 'partName400', 'partDesc400', 157);
insert into PART (partid, partname, partdescription, partprice)
values (401, 'partName401', 'partDesc401', 158);
insert into PART (partid, partname, partdescription, partprice)
values (402, 'partName402', 'partDesc402', 159);
commit;
prompt 200 records committed...
insert into PART (partid, partname, partdescription, partprice)
values (403, 'partName403', 'partDesc403', 160);
commit;
prompt 201 records loaded
prompt Loading VEHICLE...
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (61, 86, 'cbudding0', 2004);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (34, 27, 'anani1', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (54, 3, 'whazeldean2', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (92, 34, 'treedie3', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (80, 53, 'brazoux4', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (16, 7, 'hheardman5', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (55, 33, 'gwinkle6', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (87, 87, 'wfarebrother7', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (41, 65, 'lvella8', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (20, 59, 'jtrevethan9', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (26, 76, 'csimistera', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (57, 11, 'mvanyarkinb', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (65, 100, 'eseabrightc', 2011);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (84, 75, 'ssaziod', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (6, 89, 'igrigolettie', 2015);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (19, 47, 'dprandif', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (67, 90, 'jdambrogig', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (27, 89, 'lfulopi', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (18, 68, 'plearmountj', 2010);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (44, 7, 'eemettk', 2012);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (52, 52, 'iklishinl', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (59, 96, 'kpullingerm', 2007);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (30, 93, 'dguiettn', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (82, 45, 'gcharriero', 2005);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (85, 19, 'ksantir', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (98, 23, 'nlabells', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (37, 67, 'mcoldridget', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (21, 1, 'model 21', 2001);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (22, 2, 'model 22', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (38, 57, 'jcaley0', 2010);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (88, 87, 'mmedgewick1', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (50, 88, 'ataudevin4', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (83, 95, 'agipp6', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (10, 92, 'tcorbitt7', 2010);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (4, 87, 'dkeers8', 1992);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (36, 79, 'hchristophe9', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (25, 81, 'lchipchasea', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (31, 10, 'redgsonb', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (64, 18, 'peshmadec', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (43, 2, 'mtattooe', 2015);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (7, 31, 'lbrusing', 2001);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (11, 3, 'abartrum0', 2011);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (68, 29, 'ostellin1', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (78, 51, 'ccapenor2', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (45, 63, 'mbonniface4', 2001);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (13, 58, 'mdraco5', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (1, 12345, 'fbrisker6', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (81, 74, 'mhambelton8', 2012);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (91, 12, 'cmaxwell9', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (14, 48, 'hbreama', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (23, 3, 'model 23', 2003);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (24, 4, 'model 24', 2004);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (120, 57, 'usainsburybrown0', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (105, 24, 'cfeitosa1', 2001);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (145, 40, 'efleisch2', 1996);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (140, 87, 'bklimushev3', 2015);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (164, 84, 'qflegg4', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (143, 80, 'cneedham5', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (122, 8, 'tduxbarry6', 1992);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (125, 5, 'rhiom7', 2014);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (113, 94, 'mshaw8', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (167, 96, 'valbers9', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (184, 88, 'ltoffolettob', 1993);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (119, 58, 'sperrettc', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (118, 83, 'mlittlere', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (147, 79, 'ggadsonf', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (178, 10, 'ypryorg', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (102, 61, 'epoulsumh', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (146, 79, 'dmapotheri', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (194, 84, 'mfaldoj', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (139, 46, 'dtearl', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (175, 13, 'hpandiem', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (192, 58, 'kallbonn', 1997);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (114, 69, 'dcaenp', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (152, 99, 'toakhillq', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (169, 64, 'jbristerr', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (195, 83, 'rsharphouses', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (111, 25, 'bpacheru', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (130, 82, 'esheehyv', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (121, 21, 'asnibsonw', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (128, 85, 'gmylchreestx', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (158, 89, 'lnasseyy', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (198, 24, 'fgiraudoz', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (199, 9, 'mbraikenridge11', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (200, 94, 'pohagerty13', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (197, 48, 'hfettis14', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (157, 46, 'vinderwick15', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (137, 4, 'mnorcop16', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (131, 51, 'bdoick17', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (135, 82, 'ddougary19', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (101, 59, 'vmallatratt1a', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (181, 82, 'vjakubovics1c', 2020);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (172, 61, 'plockwood1d', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (127, 45, 'ctate1e', 1995);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (170, 29, 'rstilgoe1f', 2011);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (109, 58, 'grimour1g', 2017);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (161, 88, 'abeauchamp1h', 2014);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (163, 33, 'areardon1l', 2018);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (115, 61, 'amcgourty1m', 2006);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (156, 96, 'ckytley1n', 2012);
commit;
prompt 100 records committed...
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (171, 6, 'comulderrig1s', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (196, 95, 'lbensley1t', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (153, 21, 'hkeeffe1v', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (190, 92, 'etutchings1x', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (106, 24, 'clewin1y', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (168, 40, 'dhighman1z', 1993);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (183, 19, 'rfarfalameev21', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (124, 53, 'bever26', 2016);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (283, 131, 'cvondrys0', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (242, 135, 'ascrafton1', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (225, 178, 'aschubuser2', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (276, 152, 'ehamly3', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (255, 188, 'wlinfitt4', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (297, 109, 'tamer5', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (262, 169, 'htyres6', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (285, 147, 'mbrandacci8', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (229, 199, 'nbourbon9', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (284, 148, 'sharriskinea', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (253, 179, 'rtippellb', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (236, 109, 'dboskellc', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (243, 112, 'grillstoned', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (230, 117, 'krousele', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (288, 135, 'vlewcockf', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (224, 185, 'ringlesg', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (274, 182, 'hwilhelmyh', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (222, 126, 'arubii', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (237, 174, 'bgrabbanj', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (210, 142, 'dgoatcherm', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (211, 104, 'mbleacklyn', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (258, 127, 'bridgwello', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (286, 151, 'tcaddiep', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (241, 123, 'ctoffolettoq', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (206, 127, 'smcgiveens', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (299, 103, 'eplanet', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (298, 182, 'lkellockv', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (215, 178, 'lkettsy', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (203, 154, 'ccarthew10', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (271, 178, 'adymidowski14', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (238, 120, 'cwadeson15', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (233, 147, 'sbalharrie16', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (232, 164, 'gsmeed17', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (300, 183, 'whallor19', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (269, 121, 'cbrimming1e', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (294, 121, 'jgilsthorpe1f', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (228, 134, 'dbeevers1g', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (291, 157, 'pspurgin1i', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (207, 160, 'edouse1k', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (278, 171, 'bstaines1l', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (249, 131, 'rwestwood1m', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (202, 135, 'lrussell1o', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (293, 122, 'nwallerbridge1q', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (226, 130, 'jbartoshevich1r', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (254, 151, 'fasel1s', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (251, 105, 'mickovitz1t', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (279, 160, 'swynn1u', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (218, 141, 'lpressman1v', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (281, 174, 'ppollicote1y', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (56, 83, 'M5', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (94, 19, 'Safari', 2010);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (28, 63, 'Mazda3', 2003);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (39, 50, 'Rodeo', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (73, 79, 'B-Series Plus', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (12, 88, 'Rendezvous', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (58, 74, 'Laser', 2020);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (72, 2, 'G', 2023);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (32, 51, 'Ram Van B250', 2007);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (53, 66, 'Hombre', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (77, 88, 'Altima', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (33, 21, 'Xterra', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (100, 86, '7 Series', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (71, 54, 'Stratus', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (17, 12, 'Express 1500', 2004);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (97, 9, 'CLS-Class', 2020);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (29, 96, 'Sunbird', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (9, 70, 'S-Class', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (95, 46, 'Expedition', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (5, 68, 'Allroad', 2007);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (63, 26, 'Ranger', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (66, 34, 'Envoy', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (90, 20, 'MKS', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (89, 79, 'Marauder', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (99, 45, 'X5', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (437, 375, 'Cube', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (313, 275, 'F350', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (384, 197, 'Rogue', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (223, 405, 'Dakota', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (270, 425, '7 Series', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (478, 250, 'Mazdaspeed 3', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (166, 239, 'Sportage', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (277, 222, 'Integra', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (414, 548, 'Taurus', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (322, 242, 'Rally Wagon 2500', 2022);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (189, 385, 'Phantom', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (342, 163, 'Jetta', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (162, 185, 'Durango', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (466, 544, 'Esprit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (508, 301, 'Challenger', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (302, 495, '911', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (491, 320, 'F-Series', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (382, 131, 'MPV', 1990);
commit;
prompt 200 records committed...
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (217, 128, 'Explorer Sport Trac', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (260, 382, 'Taurus', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (151, 394, '9000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (495, 505, 'Chariot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (361, 196, 'Mark LT', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (515, 495, 'Quest', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (107, 135, 'Ion', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (308, 478, 'QX', 2024);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (138, 538, 'IS', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (176, 172, 'S-Class', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (348, 435, '599 GTB Fiorano', 2020);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (193, 527, 'Sedona', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (442, 284, 'Somerset', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (512, 492, 'Silverado 2500', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (306, 508, 'Accent', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (185, 577, 'Econoline E350', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (538, 516, 'Viper', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (373, 331, 'Grand Caravan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (246, 219, 'Continental', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (464, 107, 'Excel', 2016);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (379, 265, 'RX-8', 1993);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (327, 531, 'Aveo', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (490, 408, 'R8', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (530, 179, 'Wrangler', 2016);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (477, 152, 'Tracker', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (275, 446, 'Santa Fe', 2000);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (133, 597, 'Thunderbird', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (268, 241, '924 S', 2023);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (282, 515, 'G', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (510, 256, 'MKS', 2016);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (315, 270, 'Canyon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (201, 409, '6 Series', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (366, 574, 'Mustang', 2017);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (290, 518, 'SL-Class', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (461, 578, 'A6', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (148, 590, 'Reatta', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (359, 520, 'Continental Mark VII', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (440, 401, 'G-Class', 2011);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (551, 378, 'Equus', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (500, 498, 'XL-7', 2016);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (501, 111, '599 GTB Fiorano', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (502, 112, 'Model S', 2020);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (503, 113, 'Civic', 2018);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (504, 114, 'Accord', 2017);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (505, 115, 'Camry', 2019);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (506, 116, 'Corolla', 2021);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (507, 117, 'Mustang', 2015);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (509, 119, 'Challenger', 2013);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (511, 121, 'Malibu', 2011);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (513, 123, 'Volt', 2009);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (514, 124, 'Bolt', 2008);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (516, 126, 'Silverado', 2006);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (517, 127, 'Ram 1500', 2005);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (518, 128, 'Sierra', 2004);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (519, 129, 'Tacoma', 2003);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (520, 130, 'Tundra', 2002);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (521, 131, 'Ranger', 2001);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (522, 132, 'Frontier', 2000);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (523, 133, 'Titan', 1999);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (524, 134, 'Canyon', 1998);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (525, 135, 'Ridgeline', 1997);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (526, 136, 'Savana', 1996);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (527, 137, 'Express', 1995);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (528, 138, 'Transit', 1994);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (529, 139, 'Sprinter', 1993);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (531, 141, 'NV200', 1991);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (532, 142, 'City Express', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (533, 143, 'Metris', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (534, 144, 'Sprinter Classic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (535, 145, 'eSprinter', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (536, 146, 'Model 3', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (537, 147, 'Model X', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (539, 149, 'Roadster', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (540, 150, 'Cybertruck', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (541, 151, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (542, 152, 'Accord', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (543, 153, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (544, 154, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (545, 155, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (546, 156, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (547, 157, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (548, 158, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (549, 159, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (550, 160, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (552, 162, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (553, 163, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (554, 164, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (555, 165, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (556, 166, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (557, 167, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (558, 168, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (559, 169, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (560, 170, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (561, 171, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (562, 172, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (563, 173, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (564, 174, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (565, 175, 'Accord Plug-In Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (566, 176, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (567, 177, 'Accord Sedan', 1990);
commit;
prompt 300 records committed...
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (568, 178, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (569, 179, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (570, 180, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (571, 181, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (572, 182, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (573, 183, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (574, 184, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (575, 185, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (576, 186, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (577, 187, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (578, 188, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (579, 189, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (580, 190, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (581, 191, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (582, 192, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (583, 193, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (584, 194, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (585, 195, 'Fit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (586, 196, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (587, 197, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (588, 198, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (589, 199, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (590, 200, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (591, 201, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (592, 202, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (593, 203, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (594, 204, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (595, 205, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (596, 206, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (597, 207, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (598, 208, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (599, 209, 'Accord Plug-In Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (600, 210, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (601, 211, 'Accord Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (602, 212, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (603, 213, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (604, 214, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (605, 215, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (606, 216, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (607, 217, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (608, 218, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (609, 219, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (610, 220, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (611, 221, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (612, 222, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (613, 223, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (614, 224, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (615, 225, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (616, 226, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (617, 227, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (618, 228, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (619, 229, 'Fit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (620, 230, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (621, 231, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (622, 232, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (623, 233, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (624, 234, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (625, 235, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (626, 236, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (627, 237, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (628, 238, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (629, 239, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (630, 240, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (631, 241, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (632, 242, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (633, 243, 'Accord Plug-In Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (634, 244, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (635, 245, 'Accord Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (636, 246, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (637, 247, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (638, 248, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (639, 249, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (640, 250, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (641, 251, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (642, 252, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (643, 253, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (644, 254, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (645, 255, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (646, 256, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (647, 257, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (648, 258, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (649, 259, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (650, 260, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (651, 261, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (652, 262, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (653, 263, 'Fit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (654, 264, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (655, 265, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (656, 266, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (657, 267, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (658, 268, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (659, 269, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (660, 270, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (661, 271, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (662, 272, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (663, 273, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (664, 274, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (665, 275, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (666, 276, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (667, 277, 'Accord Plug-In Hybrid', 1990);
commit;
prompt 400 records committed...
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (668, 278, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (669, 279, 'Accord Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (670, 280, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (671, 281, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (672, 282, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (673, 283, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (674, 284, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (675, 285, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (676, 286, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (677, 287, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (678, 288, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (679, 289, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (680, 290, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (681, 291, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (682, 292, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (683, 293, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (684, 294, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (685, 295, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (686, 296, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (687, 297, 'Fit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (688, 298, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (689, 299, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (690, 300, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (691, 301, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (692, 302, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (693, 303, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (694, 304, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (695, 305, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (696, 306, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (697, 307, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (698, 308, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (699, 309, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (700, 310, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (701, 311, 'Accord Plug-In Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (702, 312, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (703, 313, 'Accord Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (704, 314, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (705, 315, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (706, 316, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (707, 317, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (708, 318, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (709, 319, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (710, 320, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (711, 321, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (712, 322, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (713, 323, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (714, 324, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (715, 325, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (716, 326, 'CR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (717, 327, 'Passport', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (718, 328, 'Pilot', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (719, 329, 'Odyssey', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (720, 330, 'Ridgeline', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (721, 331, 'Fit', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (722, 332, 'Jazz', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (723, 333, 'Brio', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (724, 334, 'Amaze', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (725, 335, 'City', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (726, 336, 'Ballade', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (727, 337, 'Civic', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (728, 338, 'Civic Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (729, 339, 'Civic Si', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (730, 340, 'Civic Type R', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (731, 341, 'Civic Hatchback', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (732, 342, 'Civic Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (733, 343, 'Accord Crosstour', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (734, 344, 'Accord Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (735, 345, 'Accord Plug-In Hybrid', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (736, 346, 'Accord Coupe', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (737, 347, 'Accord Sedan', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (738, 348, 'Accord Tourer', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (739, 349, 'Accord Wagon', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (740, 350, 'Prelude', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (741, 351, 'CRX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (742, 352, 'CR-Z', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (743, 353, 'S2000', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (744, 354, 'NSX', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (745, 355, 'Element', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (746, 356, 'Del Sol', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (747, 357, 'Insight', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (748, 358, 'Clarity', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (749, 359, 'HR-V', 1990);
insert into VEHICLE (vehicleid, busnumber, vehiclemodel, manufactureyear)
values (750, 360, 'CR-V', 1990);
commit;
prompt 483 records loaded
prompt Loading REPAIR...
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (49, 61, 'dgreson3', to_date('17-02-2025', 'dd-mm-yyyy'), 72);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (31, 34, 'agreenall4', to_date('17-02-2025', 'dd-mm-yyyy'), 77);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (68, 65, 'jenns3', to_date('12-09-2024', 'dd-mm-yyyy'), 77);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (18, 68, 'jmaghull5', to_date('30-03-2025', 'dd-mm-yyyy'), 62);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (12, 23, 'pcozinst', to_date('29-01-2025', 'dd-mm-yyyy'), 43);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (6, 54, 'ntextonx', to_date('03-11-2024', 'dd-mm-yyyy'), 31);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (9, 54, 'gdaspar1n', to_date('31-03-2025', 'dd-mm-yyyy'), 77);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (1, 61, 'Engine overhaul', to_date('01-01-2024', 'dd-mm-yyyy'), 72);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (14, 54, 'gus', to_date('20-05-2025', 'dd-mm-yyyy'), 14);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (40, 92, 'mlongcake3', to_date('03-03-2025', 'dd-mm-yyyy'), 86);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (50, 16, 'bmoat5', to_date('13-11-2024', 'dd-mm-yyyy'), 82);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (45, 55, 'rfrost6', to_date('20-02-2025', 'dd-mm-yyyy'), 47);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (30, 87, 'vavrahamov7', to_date('30-01-2025', 'dd-mm-yyyy'), 84);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (44, 41, 'eduggon8', to_date('29-03-2025', 'dd-mm-yyyy'), 53);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (100, 20, 'nbaker9', to_date('02-09-2024', 'dd-mm-yyyy'), 62);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (84, 57, 'cskrineb', to_date('07-06-2025', 'dd-mm-yyyy'), 59);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (7, 65, 'ddarlowc', to_date('16-06-2025', 'dd-mm-yyyy'), 15);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (41, 84, 'acreddond', to_date('01-08-2024', 'dd-mm-yyyy'), 27);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (27, 19, 'cnundf', to_date('05-08-2024', 'dd-mm-yyyy'), 31);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (5, 67, 'rlosebieg', to_date('04-08-2024', 'dd-mm-yyyy'), 95);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (63, 27, 'jlanth', to_date('28-11-2024', 'dd-mm-yyyy'), 67);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (2, 34, 'Repair description 2', to_date('02-02-2024', 'dd-mm-yyyy'), 77);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (3, 54, 'gus', to_date('03-03-2024', 'dd-mm-yyyy'), 14);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (4, 92, 'Repair description 4', to_date('04-04-2024', 'dd-mm-yyyy'), 86);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (8, 87, 'Repair description 8', to_date('08-08-2024', 'dd-mm-yyyy'), 84);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (10, 20, 'Brake pad replacement', to_date('10-10-2024', 'dd-mm-yyyy'), 62);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (11, 26, 'Repair description 11', to_date('11-11-2024', 'dd-mm-yyyy'), 43);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (13, 65, 'Repair description 13', to_date('13-01-2025', 'dd-mm-yyyy'), 15);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (15, 6, 'Repair description 15', to_date('15-03-2025', 'dd-mm-yyyy'), 50);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (16, 19, 'Repair description 16', to_date('16-04-2025', 'dd-mm-yyyy'), 31);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (17, 67, 'Repair description 17', to_date('17-05-2025', 'dd-mm-yyyy'), 95);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (19, 18, 'Repair description 19', to_date('19-07-2025', 'dd-mm-yyyy'), 252);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (20, 44, 'Repair description 20', to_date('20-08-2025', 'dd-mm-yyyy'), 268);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (21, 52, 'Repair description 21', to_date('21-09-2025', 'dd-mm-yyyy'), 275);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (22, 59, 'Repair description 22', to_date('22-10-2025', 'dd-mm-yyyy'), 461);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (23, 30, 'Repair description 23', to_date('23-11-2025', 'dd-mm-yyyy'), 339);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (24, 82, 'Repair description 24', to_date('24-12-2025', 'dd-mm-yyyy'), 374);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (25, 85, 'Repair description 25', to_date('25-01-2026', 'dd-mm-yyyy'), 308);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (26, 98, 'Repair description 26', to_date('26-02-2026', 'dd-mm-yyyy'), 422);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (28, 21, 'Repair description 28', to_date('28-04-2026', 'dd-mm-yyyy'), 395);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (29, 22, 'Repair description 29', to_date('29-05-2026', 'dd-mm-yyyy'), 257);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (32, 50, 'Repair description 32', to_date('02-08-2026', 'dd-mm-yyyy'), 204);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (33, 83, 'Repair description 33', to_date('03-09-2026', 'dd-mm-yyyy'), 298);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (34, 10, 'Repair description 34', to_date('04-10-2026', 'dd-mm-yyyy'), 292);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (35, 4, 'Repair description 35', to_date('05-11-2026', 'dd-mm-yyyy'), 226);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (36, 36, 'Repair description 36', to_date('06-12-2026', 'dd-mm-yyyy'), 464);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (37, 25, 'Repair description 37', to_date('07-01-2027', 'dd-mm-yyyy'), 534);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (38, 31, 'Repair description 38', to_date('08-02-2027', 'dd-mm-yyyy'), 330);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (39, 64, 'Repair description 39', to_date('09-03-2027', 'dd-mm-yyyy'), 547);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (42, 11, 'Repair description 42', to_date('12-06-2027', 'dd-mm-yyyy'), 282);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (43, 68, 'Repair description 43', to_date('13-07-2027', 'dd-mm-yyyy'), 527);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (46, 13, 'Repair description 46', to_date('16-10-2027', 'dd-mm-yyyy'), 344);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (47, 1, 'Repair description 47', to_date('17-11-2027', 'dd-mm-yyyy'), 367);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (48, 81, 'Repair description 48', to_date('18-12-2027', 'dd-mm-yyyy'), 437);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (51, 23, 'Repair description 51', to_date('21-03-2028', 'dd-mm-yyyy'), 375);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (52, 24, 'Repair description 52', to_date('22-04-2028', 'dd-mm-yyyy'), 216);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (53, 120, 'Repair description 53', to_date('23-05-2028', 'dd-mm-yyyy'), 279);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (54, 105, 'Repair description 54', to_date('24-06-2028', 'dd-mm-yyyy'), 537);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (55, 145, 'Repair description 55', to_date('25-07-2028', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (56, 140, 'Repair description 56', to_date('26-08-2028', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (57, 164, 'Repair description 57', to_date('27-09-2028', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (58, 143, 'Repair description 58', to_date('28-10-2028', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (59, 122, 'Repair description 59', to_date('29-11-2028', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (60, 125, 'Repair description 60', to_date('30-12-2028', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (61, 113, 'Repair description 61', to_date('01-01-2029', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (62, 167, 'Repair description 62', to_date('02-02-2029', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (64, 119, 'Repair description 64', to_date('04-04-2029', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (65, 118, 'Repair description 65', to_date('05-05-2029', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (66, 147, 'Repair description 66', to_date('06-06-2029', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (67, 178, 'Repair description 67', to_date('07-07-2029', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (69, 146, 'Repair description 69', to_date('09-09-2029', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (70, 194, 'Repair description 70', to_date('10-10-2029', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (71, 139, 'Repair description 71', to_date('11-11-2029', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (72, 175, 'Repair description 72', to_date('12-12-2029', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (73, 192, 'Repair description 73', to_date('13-01-2030', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (74, 114, 'Repair description 74', to_date('14-02-2030', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (75, 152, 'Repair description 75', to_date('15-03-2030', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (76, 169, 'Repair description 76', to_date('16-04-2030', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (77, 195, 'Repair description 77', to_date('17-05-2030', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (78, 111, 'Repair description 78', to_date('18-06-2030', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (79, 130, 'Repair description 79', to_date('19-07-2030', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (80, 121, 'Repair description 80', to_date('20-08-2030', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (81, 128, 'Repair description 81', to_date('21-09-2030', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (82, 158, 'Repair description 82', to_date('22-10-2030', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (83, 198, 'Repair description 83', to_date('23-11-2030', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (85, 200, 'Repair description 85', to_date('25-01-2031', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (86, 197, 'Repair description 86', to_date('26-02-2031', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (87, 157, 'Repair description 87', to_date('27-03-2031', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (88, 137, 'Repair description 88', to_date('28-04-2031', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (89, 131, 'Repair description 89', to_date('29-05-2031', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (90, 135, 'Repair description 90', to_date('30-06-2031', 'dd-mm-yyyy'), 575);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (91, 101, 'Repair description 91', to_date('01-07-2031', 'dd-mm-yyyy'), 578);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (92, 181, 'Repair description 92', to_date('02-08-2031', 'dd-mm-yyyy'), 535);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (93, 172, 'Repair description 93', to_date('03-09-2031', 'dd-mm-yyyy'), 289);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (94, 127, 'Repair description 94', to_date('04-10-2031', 'dd-mm-yyyy'), 410);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (95, 170, 'Repair description 95', to_date('05-11-2031', 'dd-mm-yyyy'), 262);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (96, 109, 'Repair description 96', to_date('06-12-2031', 'dd-mm-yyyy'), 447);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (97, 161, 'Repair description 97', to_date('07-01-2032', 'dd-mm-yyyy'), 250);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (98, 163, 'Repair description 98', to_date('08-02-2032', 'dd-mm-yyyy'), 568);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (99, 115, 'Repair description 99', to_date('09-03-2032', 'dd-mm-yyyy'), 592);
commit;
prompt 100 records committed...
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (101, 13, 'Repair description 46', to_date('16-10-2027', 'dd-mm-yyyy'), 344);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (102, 1, 'Repair description 47', to_date('17-11-2027', 'dd-mm-yyyy'), 367);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (103, 81, 'Repair description 48', to_date('18-12-2027', 'dd-mm-yyyy'), 437);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (104, 91, 'Repair description 49', to_date('19-01-2028', 'dd-mm-yyyy'), 267);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (105, 14, 'Repair description 50', to_date('20-02-2028', 'dd-mm-yyyy'), 251);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (106, 23, 'Repair description 51', to_date('21-03-2028', 'dd-mm-yyyy'), 375);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (107, 24, 'Repair description 52', to_date('22-04-2028', 'dd-mm-yyyy'), 216);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (108, 120, 'Repair description 53', to_date('23-05-2028', 'dd-mm-yyyy'), 279);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (109, 105, 'Repair description 54', to_date('24-06-2028', 'dd-mm-yyyy'), 537);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (110, 145, 'Repair description 55', to_date('25-07-2028', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (111, 140, 'Repair description 56', to_date('26-08-2028', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (112, 164, 'Repair description 57', to_date('27-09-2028', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (113, 143, 'Repair description 58', to_date('28-10-2028', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (114, 122, 'Repair description 59', to_date('29-11-2028', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (115, 125, 'Repair description 60', to_date('30-12-2028', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (116, 113, 'Repair description 61', to_date('01-01-2029', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (117, 167, 'Repair description 62', to_date('02-02-2029', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (118, 184, 'Repair description 63', to_date('03-03-2029', 'dd-mm-yyyy'), 313);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (119, 119, 'Repair description 64', to_date('04-04-2029', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (120, 118, 'Repair description 65', to_date('05-05-2029', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (121, 147, 'Repair description 66', to_date('06-06-2029', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (122, 178, 'Repair description 67', to_date('07-07-2029', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (123, 102, 'Repair description 68', to_date('08-08-2029', 'dd-mm-yyyy'), 526);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (124, 146, 'Repair description 69', to_date('09-09-2029', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (125, 194, 'Repair description 70', to_date('10-10-2029', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (126, 139, 'Repair description 71', to_date('11-11-2029', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (127, 175, 'Repair description 72', to_date('12-12-2029', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (128, 192, 'Repair description 73', to_date('13-01-2030', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (129, 114, 'Repair description 74', to_date('14-02-2030', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (130, 152, 'Repair description 75', to_date('15-03-2030', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (131, 169, 'Repair description 76', to_date('16-04-2030', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (132, 195, 'Repair description 77', to_date('17-05-2030', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (133, 111, 'Repair description 78', to_date('18-06-2030', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (134, 130, 'Repair description 79', to_date('19-07-2030', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (135, 121, 'Repair description 80', to_date('20-08-2030', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (136, 128, 'Repair description 81', to_date('21-09-2030', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (137, 158, 'Repair description 82', to_date('22-10-2030', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (138, 198, 'Repair description 83', to_date('23-11-2030', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (139, 199, 'Repair description 84', to_date('24-12-2030', 'dd-mm-yyyy'), 448);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (140, 200, 'Repair description 85', to_date('25-01-2031', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (141, 197, 'Repair description 86', to_date('26-02-2031', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (142, 157, 'Repair description 87', to_date('27-03-2031', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (143, 137, 'Repair description 88', to_date('28-04-2031', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (144, 131, 'Repair description 89', to_date('29-05-2031', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (145, 135, 'Repair description 90', to_date('30-06-2031', 'dd-mm-yyyy'), 575);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (146, 101, 'Repair description 91', to_date('01-07-2031', 'dd-mm-yyyy'), 578);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (147, 181, 'Repair description 92', to_date('02-08-2031', 'dd-mm-yyyy'), 535);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (148, 172, 'Repair description 93', to_date('03-09-2031', 'dd-mm-yyyy'), 289);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (149, 127, 'Repair description 94', to_date('04-10-2031', 'dd-mm-yyyy'), 410);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (150, 170, 'Repair description 95', to_date('05-11-2031', 'dd-mm-yyyy'), 262);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (151, 109, 'Repair description 96', to_date('06-12-2031', 'dd-mm-yyyy'), 447);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (152, 161, 'Repair description 97', to_date('07-01-2032', 'dd-mm-yyyy'), 250);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (153, 163, 'Repair description 98', to_date('08-02-2032', 'dd-mm-yyyy'), 568);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (154, 115, 'Repair description 99', to_date('09-03-2032', 'dd-mm-yyyy'), 592);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (155, 156, 'Repair description 100', to_date('10-04-2032', 'dd-mm-yyyy'), 520);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (156, 13, 'Repair description 46', to_date('16-10-2027', 'dd-mm-yyyy'), 344);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (157, 1, 'Repair description 47', to_date('17-11-2027', 'dd-mm-yyyy'), 367);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (158, 81, 'Repair description 48', to_date('18-12-2027', 'dd-mm-yyyy'), 437);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (159, 91, 'Repair description 49', to_date('19-01-2028', 'dd-mm-yyyy'), 267);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (160, 14, 'Repair description 50', to_date('20-02-2028', 'dd-mm-yyyy'), 251);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (161, 23, 'Repair description 51', to_date('21-03-2028', 'dd-mm-yyyy'), 375);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (162, 24, 'Repair description 52', to_date('22-04-2028', 'dd-mm-yyyy'), 216);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (163, 120, 'Repair description 53', to_date('23-05-2028', 'dd-mm-yyyy'), 279);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (164, 105, 'Repair description 54', to_date('24-06-2028', 'dd-mm-yyyy'), 537);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (165, 145, 'Repair description 55', to_date('25-07-2028', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (166, 140, 'Repair description 56', to_date('26-08-2028', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (167, 164, 'Repair description 57', to_date('27-09-2028', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (168, 143, 'Repair description 58', to_date('28-10-2028', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (169, 122, 'Repair description 59', to_date('29-11-2028', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (170, 125, 'Repair description 60', to_date('30-12-2028', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (171, 113, 'Repair description 61', to_date('01-01-2029', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (172, 167, 'Repair description 62', to_date('02-02-2029', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (173, 184, 'Repair description 63', to_date('03-03-2029', 'dd-mm-yyyy'), 313);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (174, 119, 'Repair description 64', to_date('04-04-2029', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (175, 118, 'Repair description 65', to_date('05-05-2029', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (176, 147, 'Repair description 66', to_date('06-06-2029', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (177, 178, 'Repair description 67', to_date('07-07-2029', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (178, 102, 'Repair description 68', to_date('08-08-2029', 'dd-mm-yyyy'), 526);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (179, 146, 'Repair description 69', to_date('09-09-2029', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (180, 194, 'Repair description 70', to_date('10-10-2029', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (181, 139, 'Repair description 71', to_date('11-11-2029', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (182, 175, 'Repair description 72', to_date('12-12-2029', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (183, 192, 'Repair description 73', to_date('13-01-2030', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (184, 114, 'Repair description 74', to_date('14-02-2030', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (185, 152, 'Repair description 75', to_date('15-03-2030', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (186, 169, 'Repair description 76', to_date('16-04-2030', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (187, 195, 'Repair description 77', to_date('17-05-2030', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (188, 111, 'Repair description 78', to_date('18-06-2030', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (189, 130, 'Repair description 79', to_date('19-07-2030', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (190, 121, 'Repair description 80', to_date('20-08-2030', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (191, 128, 'Repair description 81', to_date('21-09-2030', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (192, 158, 'Repair description 82', to_date('22-10-2030', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (193, 198, 'Repair description 83', to_date('23-11-2030', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (194, 199, 'Repair description 84', to_date('24-12-2030', 'dd-mm-yyyy'), 448);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (195, 200, 'Repair description 85', to_date('25-01-2031', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (196, 197, 'Repair description 86', to_date('26-02-2031', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (197, 157, 'Repair description 87', to_date('27-03-2031', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (198, 137, 'Repair description 88', to_date('28-04-2031', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (199, 131, 'Repair description 89', to_date('29-05-2031', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (200, 135, 'Repair description 90', to_date('30-06-2031', 'dd-mm-yyyy'), 575);
commit;
prompt 200 records committed...
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (201, 61, 'Repair description 201', to_date('01-01-2024', 'dd-mm-yyyy'), 72);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (202, 34, 'Repair description 202', to_date('02-02-2024', 'dd-mm-yyyy'), 77);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (203, 54, 'gus', to_date('03-03-2024', 'dd-mm-yyyy'), 14);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (204, 92, 'Repair description 204', to_date('04-04-2024', 'dd-mm-yyyy'), 86);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (205, 80, 'Repair description 205', to_date('05-05-2024', 'dd-mm-yyyy'), 57);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (206, 16, 'Repair description 206', to_date('06-06-2024', 'dd-mm-yyyy'), 82);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (207, 55, 'Repair description 207', to_date('07-07-2024', 'dd-mm-yyyy'), 47);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (208, 87, 'Repair description 208', to_date('08-08-2024', 'dd-mm-yyyy'), 84);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (209, 41, 'Repair description 209', to_date('09-09-2024', 'dd-mm-yyyy'), 53);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (210, 20, 'Repair description 210', to_date('10-10-2024', 'dd-mm-yyyy'), 62);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (211, 26, 'Repair description 211', to_date('11-11-2024', 'dd-mm-yyyy'), 43);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (212, 57, 'Repair description 212', to_date('12-12-2024', 'dd-mm-yyyy'), 59);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (213, 65, 'Repair description 213', to_date('13-01-2025', 'dd-mm-yyyy'), 15);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (214, 84, 'Repair description 214', to_date('14-02-2025', 'dd-mm-yyyy'), 27);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (215, 6, 'Repair description 215', to_date('15-03-2025', 'dd-mm-yyyy'), 50);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (216, 19, 'Repair description 216', to_date('16-04-2025', 'dd-mm-yyyy'), 31);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (217, 67, 'Repair description 217', to_date('17-05-2025', 'dd-mm-yyyy'), 95);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (218, 27, 'Repair description 218', to_date('18-06-2025', 'dd-mm-yyyy'), 67);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (219, 18, 'Repair description 219', to_date('19-07-2025', 'dd-mm-yyyy'), 252);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (220, 44, 'Repair description 220', to_date('20-08-2025', 'dd-mm-yyyy'), 268);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (221, 52, 'Repair description 221', to_date('21-09-2025', 'dd-mm-yyyy'), 275);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (222, 59, 'Repair description 222', to_date('22-10-2025', 'dd-mm-yyyy'), 461);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (223, 30, 'Repair description 223', to_date('23-11-2025', 'dd-mm-yyyy'), 339);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (224, 82, 'Repair description 224', to_date('24-12-2025', 'dd-mm-yyyy'), 374);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (225, 85, 'Repair description 225', to_date('25-01-2026', 'dd-mm-yyyy'), 308);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (226, 98, 'Repair description 226', to_date('26-02-2026', 'dd-mm-yyyy'), 422);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (227, 37, 'Repair description 227', to_date('27-03-2026', 'dd-mm-yyyy'), 504);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (228, 21, 'Repair description 228', to_date('28-04-2026', 'dd-mm-yyyy'), 395);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (229, 22, 'Repair description 229', to_date('29-05-2026', 'dd-mm-yyyy'), 257);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (230, 38, 'Repair description 230', to_date('30-06-2026', 'dd-mm-yyyy'), 396);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (231, 88, 'Repair description 231', to_date('01-07-2026', 'dd-mm-yyyy'), 574);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (232, 50, 'Repair description 232', to_date('02-08-2026', 'dd-mm-yyyy'), 204);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (233, 83, 'Repair description 233', to_date('03-09-2026', 'dd-mm-yyyy'), 298);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (234, 10, 'Repair description 234', to_date('04-10-2026', 'dd-mm-yyyy'), 292);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (235, 4, 'Repair description 235', to_date('05-11-2026', 'dd-mm-yyyy'), 226);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (236, 36, 'Repair description 236', to_date('06-12-2026', 'dd-mm-yyyy'), 464);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (237, 25, 'Repair description 237', to_date('07-01-2027', 'dd-mm-yyyy'), 534);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (238, 31, 'Repair description 238', to_date('08-02-2027', 'dd-mm-yyyy'), 330);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (239, 64, 'Repair description 239', to_date('09-03-2027', 'dd-mm-yyyy'), 547);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (240, 43, 'Repair description 240', to_date('10-04-2027', 'dd-mm-yyyy'), 354);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (241, 7, 'Repair description 241', to_date('11-05-2027', 'dd-mm-yyyy'), 281);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (242, 11, 'Repair description 242', to_date('12-06-2027', 'dd-mm-yyyy'), 282);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (243, 68, 'Repair description 243', to_date('13-07-2027', 'dd-mm-yyyy'), 527);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (244, 78, 'Repair description 244', to_date('14-08-2027', 'dd-mm-yyyy'), 349);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (245, 45, 'Repair description 245', to_date('15-09-2027', 'dd-mm-yyyy'), 225);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (246, 13, 'Repair description 246', to_date('16-10-2027', 'dd-mm-yyyy'), 344);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (247, 1, 'Repair description 247', to_date('17-11-2027', 'dd-mm-yyyy'), 367);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (248, 81, 'Repair description 248', to_date('18-12-2027', 'dd-mm-yyyy'), 437);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (249, 91, 'Repair description 249', to_date('19-01-2028', 'dd-mm-yyyy'), 267);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (250, 14, 'Repair description 250', to_date('20-02-2028', 'dd-mm-yyyy'), 251);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (251, 23, 'Repair description 251', to_date('21-03-2028', 'dd-mm-yyyy'), 375);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (252, 24, 'Repair description 252', to_date('22-04-2028', 'dd-mm-yyyy'), 216);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (253, 120, 'Repair description 253', to_date('23-05-2028', 'dd-mm-yyyy'), 279);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (254, 105, 'Repair description 254', to_date('24-06-2028', 'dd-mm-yyyy'), 537);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (255, 145, 'Repair description 255', to_date('25-07-2028', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (256, 140, 'Repair description 256', to_date('26-08-2028', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (257, 164, 'Repair description 257', to_date('27-09-2028', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (258, 143, 'Repair description 258', to_date('28-10-2028', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (259, 122, 'Repair description 259', to_date('29-11-2028', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (260, 125, 'Repair description 260', to_date('30-12-2028', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (261, 113, 'Repair description 261', to_date('01-01-2029', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (262, 167, 'Repair description 262', to_date('02-02-2029', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (263, 184, 'Repair description 263', to_date('03-03-2029', 'dd-mm-yyyy'), 313);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (264, 119, 'Repair description 264', to_date('04-04-2029', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (265, 118, 'Repair description 265', to_date('05-05-2029', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (266, 147, 'Repair description 266', to_date('06-06-2029', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (267, 178, 'Repair description 267', to_date('07-07-2029', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (268, 102, 'Repair description 268', to_date('08-08-2029', 'dd-mm-yyyy'), 526);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (269, 146, 'Repair description 269', to_date('09-09-2029', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (270, 194, 'Repair description 270', to_date('10-10-2029', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (271, 139, 'Repair description 271', to_date('11-11-2029', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (272, 175, 'Repair description 272', to_date('12-12-2029', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (273, 192, 'Repair description 273', to_date('13-01-2030', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (274, 114, 'Repair description 274', to_date('14-02-2030', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (275, 152, 'Repair description 275', to_date('15-03-2030', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (276, 169, 'Repair description 276', to_date('16-04-2030', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (277, 195, 'Repair description 277', to_date('17-05-2030', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (278, 111, 'Repair description 278', to_date('18-06-2030', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (279, 130, 'Repair description 279', to_date('19-07-2030', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (280, 121, 'Repair description 280', to_date('20-08-2030', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (281, 128, 'Repair description 281', to_date('21-09-2030', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (282, 158, 'Repair description 282', to_date('22-10-2030', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (283, 198, 'Repair description 283', to_date('23-11-2030', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (284, 199, 'Repair description 284', to_date('24-12-2030', 'dd-mm-yyyy'), 448);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (285, 200, 'Repair description 285', to_date('25-01-2031', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (286, 197, 'Repair description 286', to_date('26-02-2031', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (287, 157, 'Repair description 287', to_date('27-03-2031', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (288, 137, 'Repair description 288', to_date('28-04-2031', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (289, 131, 'Repair description 289', to_date('29-05-2031', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (290, 135, 'Repair description 290', to_date('30-06-2031', 'dd-mm-yyyy'), 575);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (291, 101, 'Repair description 291', to_date('01-07-2031', 'dd-mm-yyyy'), 578);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (292, 181, 'Repair description 292', to_date('02-08-2031', 'dd-mm-yyyy'), 535);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (293, 172, 'Repair description 293', to_date('03-09-2031', 'dd-mm-yyyy'), 289);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (294, 127, 'Repair description 294', to_date('04-10-2031', 'dd-mm-yyyy'), 410);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (295, 170, 'Repair description 295', to_date('05-11-2031', 'dd-mm-yyyy'), 262);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (296, 109, 'Repair description 296', to_date('06-12-2031', 'dd-mm-yyyy'), 447);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (297, 161, 'Repair description 297', to_date('07-01-2032', 'dd-mm-yyyy'), 250);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (298, 163, 'Repair description 298', to_date('08-02-2032', 'dd-mm-yyyy'), 568);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (299, 115, 'Repair description 299', to_date('09-03-2032', 'dd-mm-yyyy'), 592);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (300, 156, 'Repair description 300', to_date('10-04-2032', 'dd-mm-yyyy'), 520);
commit;
prompt 300 records committed...
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (301, 13, 'Repair description 301', to_date('16-10-2027', 'dd-mm-yyyy'), 344);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (302, 1, 'Repair description 302', to_date('17-11-2027', 'dd-mm-yyyy'), 367);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (303, 81, 'Repair description 303', to_date('18-12-2027', 'dd-mm-yyyy'), 437);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (304, 91, 'Repair description 304', to_date('19-01-2028', 'dd-mm-yyyy'), 267);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (305, 14, 'Repair description 305', to_date('20-02-2028', 'dd-mm-yyyy'), 251);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (306, 23, 'Repair description 306', to_date('21-03-2028', 'dd-mm-yyyy'), 375);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (307, 24, 'Repair description 307', to_date('22-04-2028', 'dd-mm-yyyy'), 216);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (308, 120, 'Repair description 308', to_date('23-05-2028', 'dd-mm-yyyy'), 279);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (309, 105, 'Repair description 309', to_date('24-06-2028', 'dd-mm-yyyy'), 537);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (310, 145, 'Repair description 310', to_date('25-07-2028', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (311, 140, 'Repair description 311', to_date('26-08-2028', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (312, 164, 'Repair description 312', to_date('27-09-2028', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (313, 143, 'Repair description 313', to_date('28-10-2028', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (314, 122, 'Repair description 314', to_date('29-11-2028', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (315, 125, 'Repair description 315', to_date('30-12-2028', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (316, 113, 'Repair description 316', to_date('01-01-2029', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (317, 167, 'Repair description 317', to_date('02-02-2029', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (318, 184, 'Repair description 318', to_date('03-03-2029', 'dd-mm-yyyy'), 313);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (319, 119, 'Repair description 319', to_date('04-04-2029', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (320, 118, 'Repair description 320', to_date('05-05-2029', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (321, 147, 'Repair description 321', to_date('06-06-2029', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (322, 178, 'Repair description 322', to_date('07-07-2029', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (323, 102, 'Repair description 323', to_date('08-08-2029', 'dd-mm-yyyy'), 526);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (324, 146, 'Repair description 324', to_date('09-09-2029', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (325, 194, 'Repair description 325', to_date('10-10-2029', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (326, 139, 'Repair description 326', to_date('11-11-2029', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (327, 175, 'Repair description 327', to_date('12-12-2029', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (328, 192, 'Repair description 328', to_date('13-01-2030', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (329, 114, 'Repair description 329', to_date('14-02-2030', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (330, 152, 'Repair description 330', to_date('15-03-2030', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (331, 169, 'Repair description 331', to_date('16-04-2030', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (332, 195, 'Repair description 332', to_date('17-05-2030', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (333, 111, 'Repair description 333', to_date('18-06-2030', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (334, 130, 'Repair description 334', to_date('19-07-2030', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (335, 121, 'Repair description 335', to_date('20-08-2030', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (336, 128, 'Repair description 336', to_date('21-09-2030', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (337, 158, 'Repair description 337', to_date('22-10-2030', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (338, 198, 'Repair description 338', to_date('23-11-2030', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (339, 199, 'Repair description 339', to_date('24-12-2030', 'dd-mm-yyyy'), 448);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (340, 200, 'Repair description 340', to_date('25-01-2031', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (341, 197, 'Repair description 341', to_date('26-02-2031', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (342, 157, 'Repair description 342', to_date('27-03-2031', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (343, 137, 'Repair description 343', to_date('28-04-2031', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (344, 131, 'Repair description 344', to_date('29-05-2031', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (345, 135, 'Repair description 345', to_date('30-06-2031', 'dd-mm-yyyy'), 575);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (346, 101, 'Repair description 346', to_date('01-07-2031', 'dd-mm-yyyy'), 578);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (347, 181, 'Repair description 347', to_date('02-08-2031', 'dd-mm-yyyy'), 535);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (348, 172, 'Repair description 348', to_date('03-09-2031', 'dd-mm-yyyy'), 289);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (349, 127, 'Repair description 349', to_date('04-10-2031', 'dd-mm-yyyy'), 410);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (350, 170, 'Repair description 350', to_date('05-11-2031', 'dd-mm-yyyy'), 262);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (351, 109, 'Repair description 351', to_date('06-12-2031', 'dd-mm-yyyy'), 447);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (352, 161, 'Repair description 352', to_date('07-01-2032', 'dd-mm-yyyy'), 250);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (353, 163, 'Repair description 353', to_date('08-02-2032', 'dd-mm-yyyy'), 568);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (354, 115, 'Repair description 354', to_date('09-03-2032', 'dd-mm-yyyy'), 592);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (355, 156, 'Repair description 355', to_date('10-04-2032', 'dd-mm-yyyy'), 520);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (356, 145, 'Repair description for VehicleID 145', to_date('09-07-2024', 'dd-mm-yyyy'), 212);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (357, 140, 'Repair description for VehicleID 140', to_date('09-07-2024', 'dd-mm-yyyy'), 203);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (358, 164, 'Repair description for VehicleID 164', to_date('09-07-2024', 'dd-mm-yyyy'), 290);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (359, 143, 'Repair description for VehicleID 143', to_date('09-07-2024', 'dd-mm-yyyy'), 417);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (360, 122, 'Repair description for VehicleID 122', to_date('09-07-2024', 'dd-mm-yyyy'), 214);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (361, 125, 'Repair description for VehicleID 125', to_date('09-07-2024', 'dd-mm-yyyy'), 501);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (362, 113, 'Repair description for VehicleID 113', to_date('09-07-2024', 'dd-mm-yyyy'), 533);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (363, 167, 'Repair description for VehicleID 167', to_date('09-07-2024', 'dd-mm-yyyy'), 431);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (364, 184, 'Repair description for VehicleID 184', to_date('09-07-2024', 'dd-mm-yyyy'), 313);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (365, 119, 'Repair description for VehicleID 119', to_date('09-07-2024', 'dd-mm-yyyy'), 591);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (366, 118, 'Repair description for VehicleID 118', to_date('09-07-2024', 'dd-mm-yyyy'), 386);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (367, 147, 'Repair description for VehicleID 147', to_date('09-07-2024', 'dd-mm-yyyy'), 474);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (368, 178, 'Repair description for VehicleID 178', to_date('09-07-2024', 'dd-mm-yyyy'), 486);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (369, 102, 'Repair description for VehicleID 102', to_date('09-07-2024', 'dd-mm-yyyy'), 526);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (370, 146, 'Repair description for VehicleID 146', to_date('09-07-2024', 'dd-mm-yyyy'), 418);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (371, 194, 'Repair description for VehicleID 194', to_date('09-07-2024', 'dd-mm-yyyy'), 553);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (372, 139, 'Repair description for VehicleID 139', to_date('09-07-2024', 'dd-mm-yyyy'), 317);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (373, 175, 'Repair description for VehicleID 175', to_date('09-07-2024', 'dd-mm-yyyy'), 398);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (374, 192, 'Repair description for VehicleID 192', to_date('09-07-2024', 'dd-mm-yyyy'), 481);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (375, 114, 'Repair description for VehicleID 114', to_date('09-07-2024', 'dd-mm-yyyy'), 570);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (376, 152, 'Repair description for VehicleID 152', to_date('09-07-2024', 'dd-mm-yyyy'), 273);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (377, 169, 'Repair description for VehicleID 169', to_date('09-07-2024', 'dd-mm-yyyy'), 265);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (378, 195, 'Repair description for VehicleID 195', to_date('09-07-2024', 'dd-mm-yyyy'), 596);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (379, 111, 'Repair description for VehicleID 111', to_date('09-07-2024', 'dd-mm-yyyy'), 429);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (380, 130, 'Repair description for VehicleID 130', to_date('09-07-2024', 'dd-mm-yyyy'), 255);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (381, 121, 'Repair description for VehicleID 121', to_date('09-07-2024', 'dd-mm-yyyy'), 583);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (382, 128, 'Repair description for VehicleID 128', to_date('09-07-2024', 'dd-mm-yyyy'), 237);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (383, 158, 'Repair description for VehicleID 158', to_date('09-07-2024', 'dd-mm-yyyy'), 551);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (384, 198, 'Repair description for VehicleID 198', to_date('09-07-2024', 'dd-mm-yyyy'), 272);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (385, 199, 'Repair description for VehicleID 199', to_date('09-07-2024', 'dd-mm-yyyy'), 448);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (386, 200, 'Repair description for VehicleID 200', to_date('09-07-2024', 'dd-mm-yyyy'), 511);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (387, 197, 'Repair description for VehicleID 197', to_date('09-07-2024', 'dd-mm-yyyy'), 440);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (388, 157, 'Repair description for VehicleID 157', to_date('09-07-2024', 'dd-mm-yyyy'), 579);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (389, 137, 'Repair description for VehicleID 137', to_date('09-07-2024', 'dd-mm-yyyy'), 460);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (390, 131, 'Repair description for VehicleID 131', to_date('09-07-2024', 'dd-mm-yyyy'), 468);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (391, 135, 'Repair description for VehicleID 135', to_date('09-07-2024', 'dd-mm-yyyy'), 575);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (392, 101, 'Repair description for VehicleID 101', to_date('09-07-2024', 'dd-mm-yyyy'), 578);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (393, 181, 'Repair description for VehicleID 181', to_date('09-07-2024', 'dd-mm-yyyy'), 535);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (394, 172, 'Repair description for VehicleID 172', to_date('09-07-2024', 'dd-mm-yyyy'), 289);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (397, 109, 'Repair description for VehicleID 109', to_date('09-07-2024', 'dd-mm-yyyy'), 447);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (398, 161, 'Repair description for VehicleID 161', to_date('09-07-2024', 'dd-mm-yyyy'), 250);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (399, 163, 'Repair description for VehicleID 163', to_date('09-07-2024', 'dd-mm-yyyy'), 568);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (400, 115, 'Repair description for VehicleID 115', to_date('09-07-2024', 'dd-mm-yyyy'), 592);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (401, 156, 'Repair description for VehicleID 156', to_date('09-07-2024', 'dd-mm-yyyy'), 520);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (402, 171, 'Repair description for VehicleID 171', to_date('09-07-2024', 'dd-mm-yyyy'), 509);
commit;
prompt 400 records committed...
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (403, 196, 'Repair description for VehicleID 196', to_date('09-07-2024', 'dd-mm-yyyy'), 234);
insert into REPAIR (repairid, vehicleid, repairdescription, repairdate, mechanicid)
values (1001, 1, 'Brake replacement', to_date('01-08-2024', 'dd-mm-yyyy'), 27);
commit;
prompt 402 records loaded
prompt Loading PARTINREPAIR...
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (44, 7, 77, 1012);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (25, 14, 55, 3984);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (82, 27, 95, 3802);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (29, 30, 23, 655);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (69, 31, 93, 4837);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (78, 40, 11, 3186);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (74, 41, 5, 1908);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (11, 44, 80, 4542);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (46, 45, 60, 1367);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (64, 49, 83, 1045);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (85, 50, 1, 644);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (62, 63, 80, 1251);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (40, 84, 24, 1846);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (17, 100, 84, 21);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (10, 5, 92, 4455);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (45, 40, 30, 860);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (83, 14, 77, 3494);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (35, 44, 85, 2780);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (49, 63, 29, 3918);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (15, 45, 70, 2677);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (101, 2, 201, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (102, 3, 202, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (103, 4, 203, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (100, 1, 200, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (105, 6, 205, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (106, 7, 206, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (107, 8, 207, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (109, 10, 209, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (111, 12, 211, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (112, 13, 212, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (113, 14, 213, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (114, 15, 214, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (115, 16, 215, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (116, 17, 216, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (117, 18, 217, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (120, 21, 220, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (123, 24, 223, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (125, 26, 225, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (126, 27, 226, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (129, 30, 229, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (130, 31, 230, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (131, 32, 231, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (132, 33, 232, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (136, 37, 236, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (138, 39, 238, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (141, 42, 241, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (144, 45, 244, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (145, 46, 245, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (147, 48, 247, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (149, 50, 249, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (150, 51, 250, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (153, 54, 253, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (156, 57, 256, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (157, 58, 257, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (158, 59, 258, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (161, 62, 261, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (165, 66, 265, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (168, 69, 268, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (169, 70, 269, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (170, 71, 270, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (171, 72, 271, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (172, 73, 272, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (173, 74, 273, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (174, 75, 274, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (175, 76, 275, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (176, 77, 276, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (177, 78, 277, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (178, 79, 278, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (179, 80, 279, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (180, 81, 280, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (181, 82, 281, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (182, 83, 282, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (183, 84, 283, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (184, 85, 284, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (185, 86, 285, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (186, 87, 286, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (187, 88, 287, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (188, 89, 288, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (189, 90, 289, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (190, 91, 290, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (191, 92, 291, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (192, 93, 292, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (193, 94, 293, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (194, 95, 294, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (195, 96, 295, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (196, 97, 296, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (197, 98, 297, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (198, 99, 298, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (199, 100, 299, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (200, 1, 200, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (201, 2, 201, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (202, 3, 202, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (203, 4, 203, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (205, 6, 205, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (206, 7, 206, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (207, 8, 207, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (209, 10, 209, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (211, 12, 211, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (212, 13, 212, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (213, 14, 213, 45);
commit;
prompt 100 records committed...
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (214, 15, 214, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (215, 16, 215, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (216, 17, 216, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (217, 18, 217, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (220, 21, 220, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (223, 24, 223, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (225, 26, 225, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (226, 27, 226, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (229, 30, 229, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (230, 31, 230, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (231, 32, 231, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (232, 33, 232, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (236, 37, 236, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (238, 39, 238, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (241, 42, 241, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (244, 45, 244, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (245, 46, 245, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (247, 48, 247, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (249, 50, 249, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (250, 51, 250, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (253, 54, 253, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (256, 57, 256, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (257, 58, 257, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (258, 59, 258, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (261, 62, 261, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (300, 120, 200, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (301, 121, 201, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (302, 122, 202, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (303, 123, 203, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (305, 125, 205, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (306, 126, 206, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (307, 127, 207, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (309, 129, 209, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (311, 131, 211, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (312, 132, 212, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (313, 133, 213, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (314, 134, 214, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (315, 135, 215, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (316, 136, 216, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (317, 137, 217, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (320, 140, 220, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (323, 143, 223, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (325, 145, 225, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (326, 146, 226, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (329, 149, 229, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (330, 150, 230, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (331, 151, 231, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (332, 152, 232, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (336, 156, 236, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (338, 158, 238, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (341, 161, 241, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (344, 164, 244, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (345, 165, 245, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (347, 167, 247, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (349, 169, 249, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (350, 170, 250, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (353, 173, 253, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (356, 176, 256, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (357, 177, 257, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (358, 178, 258, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (361, 181, 261, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (363, 250, 300, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (364, 251, 301, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (365, 252, 302, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (366, 253, 303, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (367, 254, 304, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (368, 255, 305, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (369, 256, 306, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (370, 257, 307, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (371, 258, 308, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (372, 259, 309, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (373, 260, 310, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (374, 261, 311, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (375, 262, 312, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (376, 263, 313, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (377, 264, 314, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (378, 265, 315, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (379, 266, 316, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (380, 267, 317, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (381, 268, 318, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (382, 269, 319, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (383, 270, 320, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (384, 271, 321, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (385, 272, 322, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (386, 273, 323, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (387, 274, 324, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (388, 275, 325, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (389, 276, 326, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (390, 277, 327, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (391, 278, 328, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (392, 279, 329, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (393, 280, 330, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (394, 281, 331, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (395, 282, 332, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (396, 283, 333, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (397, 284, 334, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (398, 285, 335, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (399, 286, 336, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (400, 287, 337, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (401, 288, 338, 45);
commit;
prompt 200 records committed...
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (402, 289, 339, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (403, 290, 340, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (404, 291, 341, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (405, 292, 342, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (406, 293, 343, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (407, 294, 344, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (408, 295, 345, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (409, 296, 346, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (410, 297, 347, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (411, 298, 348, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (412, 299, 349, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (413, 300, 350, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (414, 301, 300, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (415, 302, 301, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (416, 303, 302, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (417, 304, 303, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (418, 305, 304, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (419, 306, 305, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (420, 307, 306, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (421, 308, 307, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (422, 309, 308, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (423, 310, 309, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (424, 311, 310, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (425, 312, 311, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (426, 251, 301, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (427, 252, 302, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (428, 253, 303, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (429, 254, 304, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (430, 255, 305, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (431, 256, 306, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (432, 257, 307, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (433, 258, 308, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (434, 259, 309, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (435, 260, 310, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (436, 261, 311, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (437, 262, 312, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (438, 263, 313, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (439, 264, 314, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (440, 265, 315, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (441, 266, 316, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (442, 267, 317, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (443, 268, 318, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (444, 269, 319, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (445, 270, 320, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (446, 271, 321, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (447, 272, 322, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (448, 273, 323, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (449, 274, 324, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (450, 275, 325, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (451, 276, 326, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (452, 277, 327, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (453, 278, 328, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (454, 279, 329, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (455, 280, 330, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (456, 281, 331, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (457, 282, 332, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (458, 283, 333, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (459, 284, 334, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (460, 285, 335, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (461, 286, 336, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (462, 287, 337, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (463, 288, 338, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (464, 289, 339, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (465, 290, 340, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (466, 291, 341, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (467, 292, 342, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (468, 293, 343, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (469, 294, 344, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (470, 295, 345, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (471, 296, 346, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (472, 297, 347, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (473, 298, 348, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (474, 299, 349, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (475, 300, 350, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (476, 301, 300, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (477, 302, 301, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (478, 303, 302, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (479, 304, 303, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (480, 305, 304, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (481, 306, 305, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (482, 307, 306, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (483, 308, 307, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (484, 309, 308, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (485, 310, 309, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (486, 311, 310, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (487, 312, 311, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (488, 350, 350, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (489, 351, 351, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (490, 352, 352, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (491, 353, 353, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (492, 354, 354, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (493, 355, 355, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (494, 356, 356, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (495, 357, 357, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (496, 358, 358, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (497, 359, 359, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (498, 360, 360, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (499, 361, 361, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (500, 362, 362, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (501, 363, 363, 45);
commit;
prompt 300 records committed...
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (502, 364, 364, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (503, 365, 365, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (504, 366, 366, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (505, 367, 367, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (506, 368, 368, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (507, 369, 369, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (508, 370, 370, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (509, 371, 371, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (510, 372, 372, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (511, 373, 373, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (512, 374, 374, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (513, 375, 375, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (514, 376, 376, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (515, 377, 377, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (516, 378, 378, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (517, 379, 379, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (518, 380, 380, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (519, 381, 381, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (520, 382, 382, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (521, 383, 383, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (522, 384, 384, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (523, 385, 385, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (524, 386, 386, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (525, 387, 387, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (526, 388, 388, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (527, 389, 389, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (528, 390, 390, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (529, 391, 391, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (530, 392, 392, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (531, 393, 393, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (532, 394, 394, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (535, 397, 397, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (536, 398, 398, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (537, 399, 399, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (538, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (539, 401, 401, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (540, 402, 402, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (541, 403, 403, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (550, 50, 50, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (551, 51, 51, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (554, 54, 54, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (555, 55, 55, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (558, 58, 58, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (559, 59, 59, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (560, 60, 60, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (562, 62, 62, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (564, 64, 64, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (567, 67, 67, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (568, 68, 68, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (569, 69, 69, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (571, 71, 71, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (573, 73, 73, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (574, 74, 74, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (576, 76, 76, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (577, 77, 77, 69);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (578, 78, 78, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (581, 81, 81, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (582, 82, 82, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (583, 83, 83, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (584, 84, 84, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (590, 90, 90, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (592, 92, 92, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (593, 93, 93, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (595, 95, 95, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (597, 97, 97, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (600, 100, 100, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (613, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (614, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (615, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (616, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (617, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (618, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (619, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (620, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (621, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (622, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (623, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (624, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (625, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (626, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (627, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (628, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (629, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (630, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (631, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (632, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (633, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (634, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (635, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (636, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (637, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (638, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (639, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (640, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (641, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (642, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (643, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (644, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (645, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (646, 400, 400, 45);
commit;
prompt 400 records committed...
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (647, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (648, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (649, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (650, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (651, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (652, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (653, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (654, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (655, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (656, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (657, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (658, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (659, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (660, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (661, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (662, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (663, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (664, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (665, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (666, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (667, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (668, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (669, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (670, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (671, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (672, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (673, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (674, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (675, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (676, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (677, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (678, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (679, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (680, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (681, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (682, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (683, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (684, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (685, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (686, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (687, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (688, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (689, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (690, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (691, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (692, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (693, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (694, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (695, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (696, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (697, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (698, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (699, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (700, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (701, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (702, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (703, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (704, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (705, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (706, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (707, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (708, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (709, 400, 400, 38);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (710, 400, 400, 68);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (711, 400, 400, 45);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (712, 400, 400, 92);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (713, 400, 400, 57);
insert into PARTINREPAIR (partinrepairid, repairid, partid, quantity)
values (714, 400, 400, 38);
commit;
prompt 468 records loaded
prompt Loading SPECIALIZATION...
insert into SPECIALIZATION (id, sp_name)
values (1001, 'Installation Systems (Vehicle Installation) ');
insert into SPECIALIZATION (id, sp_name)
values (1002, 'Maintenance Planning');
insert into SPECIALIZATION (id, sp_name)
values (1003, 'Heating and Air Conditioning S');
insert into SPECIALIZATION (id, sp_name)
values (1004, 'Engine Management Systems (EMS)');
insert into SPECIALIZATION (id, sp_name)
values (1005, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1006, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1007, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1008, 'Braking Systems(ABS)');
insert into SPECIALIZATION (id, sp_name)
values (1009, 'Maintenance Control');
insert into SPECIALIZATION (id, sp_name)
values (1010, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1011, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1012, 'Body Repair');
insert into SPECIALIZATION (id, sp_name)
values (1013, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1014, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1015, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1016, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1017, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1018, 'Braking Systems(ESP)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Advanced Electronics(CAN-BUS)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Gasoline Engine Repair ,');
insert into SPECIALIZATION (id, sp_name)
values (1000, 'Engine Maintenance');
insert into SPECIALIZATION (id, sp_name)
values (1001, 'Installation Systems (Vehicle Installation) ');
insert into SPECIALIZATION (id, sp_name)
values (1002, 'Maintenance Planning');
insert into SPECIALIZATION (id, sp_name)
values (1003, 'Heating and Air Conditioning S');
insert into SPECIALIZATION (id, sp_name)
values (1004, 'Engine Management Systems (EMS)');
insert into SPECIALIZATION (id, sp_name)
values (1005, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1006, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1007, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1008, 'Braking Systems(ABS)');
insert into SPECIALIZATION (id, sp_name)
values (1009, 'Maintenance Control');
insert into SPECIALIZATION (id, sp_name)
values (1010, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1011, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1012, 'Body Repair');
insert into SPECIALIZATION (id, sp_name)
values (1013, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1014, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1015, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1016, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1017, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1018, 'Braking Systems(ESP)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Advanced Electronics(CAN-BUS)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Gasoline Engine Repair ,');
insert into SPECIALIZATION (id, sp_name)
values (1021, 'Gasoline Engine Repair ,');
insert into SPECIALIZATION (id, sp_name)
values (1000, 'Engine Maintenance');
insert into SPECIALIZATION (id, sp_name)
values (1002, 'Maintenance Planning');
insert into SPECIALIZATION (id, sp_name)
values (1003, 'Heating and Air Conditioning S');
insert into SPECIALIZATION (id, sp_name)
values (1005, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1006, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1007, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1008, 'Braking Systems(ABS)');
insert into SPECIALIZATION (id, sp_name)
values (1009, 'Maintenance Control');
insert into SPECIALIZATION (id, sp_name)
values (1010, 'Advanced Electronics(ECU)');
insert into SPECIALIZATION (id, sp_name)
values (1011, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1012, 'Body Repair');
insert into SPECIALIZATION (id, sp_name)
values (1013, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1014, 'Lighting and Signaling Systems');
insert into SPECIALIZATION (id, sp_name)
values (1015, 'Diesel Engine Repair');
insert into SPECIALIZATION (id, sp_name)
values (1016, 'Traction Control Systems (ASR)');
insert into SPECIALIZATION (id, sp_name)
values (1017, 'General Electrical Systems');
insert into SPECIALIZATION (id, sp_name)
values (1018, 'Braking Systems(ESP)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Advanced Electronics(CAN-BUS)');
insert into SPECIALIZATION (id, sp_name)
values (1020, 'Gasoline Engine Repair ,');
insert into SPECIALIZATION (id, sp_name)
values (1000, 'Engine Maintenance');
insert into SPECIALIZATION (id, sp_name)
values (31, 'S4');
insert into SPECIALIZATION (id, sp_name)
values (164, 'Explorer');
insert into SPECIALIZATION (id, sp_name)
values (369, 'Diablo');
insert into SPECIALIZATION (id, sp_name)
values (38, 'Ram 1500');
insert into SPECIALIZATION (id, sp_name)
values (314, 'Escalade');
insert into SPECIALIZATION (id, sp_name)
values (345, 'CC');
insert into SPECIALIZATION (id, sp_name)
values (305, 'Savana 2500');
insert into SPECIALIZATION (id, sp_name)
values (313, 'Corvette');
insert into SPECIALIZATION (id, sp_name)
values (283, 'HHR');
insert into SPECIALIZATION (id, sp_name)
values (201, 'Skylark');
insert into SPECIALIZATION (id, sp_name)
values (77, 'Accord');
insert into SPECIALIZATION (id, sp_name)
values (295, 'Avalon');
insert into SPECIALIZATION (id, sp_name)
values (95, 'LTD');
insert into SPECIALIZATION (id, sp_name)
values (248, 'Excel');
insert into SPECIALIZATION (id, sp_name)
values (19, '960');
insert into SPECIALIZATION (id, sp_name)
values (332, 'Leganza');
insert into SPECIALIZATION (id, sp_name)
values (301, 'Insight');
insert into SPECIALIZATION (id, sp_name)
values (244, '100');
insert into SPECIALIZATION (id, sp_name)
values (70, 'Volare');
insert into SPECIALIZATION (id, sp_name)
values (15, 'Celica');
insert into SPECIALIZATION (id, sp_name)
values (377, 'S4');
insert into SPECIALIZATION (id, sp_name)
values (262, 'Passat');
insert into SPECIALIZATION (id, sp_name)
values (294, 'Sierra');
insert into SPECIALIZATION (id, sp_name)
values (244, 'Savana 3500');
insert into SPECIALIZATION (id, sp_name)
values (317, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (199, '900');
insert into SPECIALIZATION (id, sp_name)
values (391, 'LeSabre');
insert into SPECIALIZATION (id, sp_name)
values (356, 'Savana 1500');
insert into SPECIALIZATION (id, sp_name)
values (367, 'SLK-Class');
insert into SPECIALIZATION (id, sp_name)
values (363, 'Express 3500');
insert into SPECIALIZATION (id, sp_name)
values (364, 'Ram Van B250');
insert into SPECIALIZATION (id, sp_name)
values (199, '3 Series');
insert into SPECIALIZATION (id, sp_name)
values (373, 'V40');
insert into SPECIALIZATION (id, sp_name)
values (371, 'E150');
insert into SPECIALIZATION (id, sp_name)
values (178, 'rio');
insert into SPECIALIZATION (id, sp_name)
values (358, 'Exige');
insert into SPECIALIZATION (id, sp_name)
values (229, 'Z8');
insert into SPECIALIZATION (id, sp_name)
values (310, 'Corvette');
commit;
prompt 100 records committed...
insert into SPECIALIZATION (id, sp_name)
values (338, 'Z4 M');
insert into SPECIALIZATION (id, sp_name)
values (17, 'Avalon');
insert into SPECIALIZATION (id, sp_name)
values (23, 'Escalade');
insert into SPECIALIZATION (id, sp_name)
values (97, 'Navigator L');
insert into SPECIALIZATION (id, sp_name)
values (56, 'Camaro');
insert into SPECIALIZATION (id, sp_name)
values (370, 'Liberty');
insert into SPECIALIZATION (id, sp_name)
values (120, 'Evora');
insert into SPECIALIZATION (id, sp_name)
values (348, 'Sunbird');
insert into SPECIALIZATION (id, sp_name)
values (345, 'Town Car');
insert into SPECIALIZATION (id, sp_name)
values (381, 'Corolla');
insert into SPECIALIZATION (id, sp_name)
values (338, 'Regal');
insert into SPECIALIZATION (id, sp_name)
values (206, 'ES');
insert into SPECIALIZATION (id, sp_name)
values (385, 'Cabriolet');
insert into SPECIALIZATION (id, sp_name)
values (53, 'XG300');
insert into SPECIALIZATION (id, sp_name)
values (84, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (133, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (231, 'Diamante');
insert into SPECIALIZATION (id, sp_name)
values (371, 'Rabbit');
insert into SPECIALIZATION (id, sp_name)
values (58, 'Eclipse');
insert into SPECIALIZATION (id, sp_name)
values (118, 'MKX');
insert into SPECIALIZATION (id, sp_name)
values (324, 'Vantage');
insert into SPECIALIZATION (id, sp_name)
values (358, 'Malibu');
insert into SPECIALIZATION (id, sp_name)
values (203, 'Highlander');
insert into SPECIALIZATION (id, sp_name)
values (361, 'IS');
insert into SPECIALIZATION (id, sp_name)
values (313, 'Yukon XL 2500');
insert into SPECIALIZATION (id, sp_name)
values (53, 'XF');
insert into SPECIALIZATION (id, sp_name)
values (68, 'Golf');
insert into SPECIALIZATION (id, sp_name)
values (18, 'Prelude');
insert into SPECIALIZATION (id, sp_name)
values (247, 'G-Class');
insert into SPECIALIZATION (id, sp_name)
values (259, 'Mazda5');
insert into SPECIALIZATION (id, sp_name)
values (310, 'Express 2500');
insert into SPECIALIZATION (id, sp_name)
values (189, 'S10');
insert into SPECIALIZATION (id, sp_name)
values (137, 'Suburban 1500');
insert into SPECIALIZATION (id, sp_name)
values (270, 'Sierra 1500');
insert into SPECIALIZATION (id, sp_name)
values (353, 'NV1500');
insert into SPECIALIZATION (id, sp_name)
values (378, 'Capri');
insert into SPECIALIZATION (id, sp_name)
values (6, 'Type 2');
insert into SPECIALIZATION (id, sp_name)
values (171, 'Neon');
insert into SPECIALIZATION (id, sp_name)
values (152, 'Corrado');
insert into SPECIALIZATION (id, sp_name)
values (280, 'Sportvan G30');
insert into SPECIALIZATION (id, sp_name)
values (176, 'Continental GT');
insert into SPECIALIZATION (id, sp_name)
values (77, 'B-Series');
insert into SPECIALIZATION (id, sp_name)
values (169, 'Vanquish S');
insert into SPECIALIZATION (id, sp_name)
values (89, 'Millenia');
insert into SPECIALIZATION (id, sp_name)
values (148, 'Equinox');
insert into SPECIALIZATION (id, sp_name)
values (18, 'Land Cruiser');
insert into SPECIALIZATION (id, sp_name)
values (119, 'Regal');
insert into SPECIALIZATION (id, sp_name)
values (158, '3500 Club Coupe');
insert into SPECIALIZATION (id, sp_name)
values (177, '7 Series');
insert into SPECIALIZATION (id, sp_name)
values (294, 'V8');
insert into SPECIALIZATION (id, sp_name)
values (222, 'Sonoma');
insert into SPECIALIZATION (id, sp_name)
values (39, 'xD');
insert into SPECIALIZATION (id, sp_name)
values (385, 'Optima');
insert into SPECIALIZATION (id, sp_name)
values (96, 'Silverado 2500');
insert into SPECIALIZATION (id, sp_name)
values (37, 'Q7');
insert into SPECIALIZATION (id, sp_name)
values (243, '626');
insert into SPECIALIZATION (id, sp_name)
values (56, '57');
insert into SPECIALIZATION (id, sp_name)
values (209, 'GTO');
insert into SPECIALIZATION (id, sp_name)
values (208, 'Dakota');
insert into SPECIALIZATION (id, sp_name)
values (76, 'Altima');
insert into SPECIALIZATION (id, sp_name)
values (267, 'tC');
insert into SPECIALIZATION (id, sp_name)
values (98, 'Bravada');
insert into SPECIALIZATION (id, sp_name)
values (248, 'Cherokee');
insert into SPECIALIZATION (id, sp_name)
values (226, 'Envoy XL');
insert into SPECIALIZATION (id, sp_name)
values (28, 'Suburban 1500');
insert into SPECIALIZATION (id, sp_name)
values (135, 'G-Class');
insert into SPECIALIZATION (id, sp_name)
values (358, 'Colorado');
insert into SPECIALIZATION (id, sp_name)
values (184, 'S10');
insert into SPECIALIZATION (id, sp_name)
values (238, 'Cooper');
insert into SPECIALIZATION (id, sp_name)
values (214, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (62, 'Expedition EL');
insert into SPECIALIZATION (id, sp_name)
values (41, 'Equinox');
insert into SPECIALIZATION (id, sp_name)
values (145, 'GS');
insert into SPECIALIZATION (id, sp_name)
values (6, '8 Series');
insert into SPECIALIZATION (id, sp_name)
values (164, 'Versa');
insert into SPECIALIZATION (id, sp_name)
values (210, 'Z4');
insert into SPECIALIZATION (id, sp_name)
values (283, '57');
insert into SPECIALIZATION (id, sp_name)
values (211, 'Grand Caravan');
insert into SPECIALIZATION (id, sp_name)
values (253, 'F150');
insert into SPECIALIZATION (id, sp_name)
values (149, 'Sundance');
insert into SPECIALIZATION (id, sp_name)
values (331, 'Ion');
insert into SPECIALIZATION (id, sp_name)
values (226, '911');
insert into SPECIALIZATION (id, sp_name)
values (394, 'Sidekick');
insert into SPECIALIZATION (id, sp_name)
values (230, 'X-Type');
insert into SPECIALIZATION (id, sp_name)
values (113, 'Jetta');
insert into SPECIALIZATION (id, sp_name)
values (337, 'Envoy');
insert into SPECIALIZATION (id, sp_name)
values (329, 'Freestar');
insert into SPECIALIZATION (id, sp_name)
values (143, 'Dakota Club');
insert into SPECIALIZATION (id, sp_name)
values (103, 'Escalade EXT');
insert into SPECIALIZATION (id, sp_name)
values (321, 'S-Class');
insert into SPECIALIZATION (id, sp_name)
values (140, 'Grand Marquis');
insert into SPECIALIZATION (id, sp_name)
values (166, 'Civic');
insert into SPECIALIZATION (id, sp_name)
values (184, 'Cougar');
insert into SPECIALIZATION (id, sp_name)
values (271, 'Outback');
insert into SPECIALIZATION (id, sp_name)
values (377, '626');
insert into SPECIALIZATION (id, sp_name)
values (208, 'Sable');
insert into SPECIALIZATION (id, sp_name)
values (90, 'Silverado 3500');
insert into SPECIALIZATION (id, sp_name)
values (222, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (335, 'Camaro');
insert into SPECIALIZATION (id, sp_name)
values (229, 'Civic');
commit;
prompt 200 records committed...
insert into SPECIALIZATION (id, sp_name)
values (83, 'Venture');
insert into SPECIALIZATION (id, sp_name)
values (213, 'X5 M');
insert into SPECIALIZATION (id, sp_name)
values (177, 'Viper');
insert into SPECIALIZATION (id, sp_name)
values (88, 'Roadster');
insert into SPECIALIZATION (id, sp_name)
values (307, 'Santa Fe');
insert into SPECIALIZATION (id, sp_name)
values (393, 'Durango');
insert into SPECIALIZATION (id, sp_name)
values (264, 'Escort');
insert into SPECIALIZATION (id, sp_name)
values (269, 'Caprice');
insert into SPECIALIZATION (id, sp_name)
values (308, 'Cabriolet');
insert into SPECIALIZATION (id, sp_name)
values (107, 'Probe');
insert into SPECIALIZATION (id, sp_name)
values (51, 'Range Rover');
insert into SPECIALIZATION (id, sp_name)
values (242, 'Elan');
insert into SPECIALIZATION (id, sp_name)
values (93, 'Phantom');
insert into SPECIALIZATION (id, sp_name)
values (231, 'Freestar');
insert into SPECIALIZATION (id, sp_name)
values (69, 'LS');
insert into SPECIALIZATION (id, sp_name)
values (209, 'GL-Class');
insert into SPECIALIZATION (id, sp_name)
values (371, 'Jetta');
insert into SPECIALIZATION (id, sp_name)
values (282, 'Protege');
insert into SPECIALIZATION (id, sp_name)
values (154, 'Liberty');
insert into SPECIALIZATION (id, sp_name)
values (42, 'Xterra');
insert into SPECIALIZATION (id, sp_name)
values (151, '300ZX');
insert into SPECIALIZATION (id, sp_name)
values (223, 'Celica');
insert into SPECIALIZATION (id, sp_name)
values (390, 'G-Class');
insert into SPECIALIZATION (id, sp_name)
values (53, 'Malibu');
insert into SPECIALIZATION (id, sp_name)
values (73, 'B-Series');
insert into SPECIALIZATION (id, sp_name)
values (92, 'Celica');
insert into SPECIALIZATION (id, sp_name)
values (51, 'Grand Marquis');
insert into SPECIALIZATION (id, sp_name)
values (275, '2500');
insert into SPECIALIZATION (id, sp_name)
values (257, 'A4');
insert into SPECIALIZATION (id, sp_name)
values (303, 'Vandura G3500');
insert into SPECIALIZATION (id, sp_name)
values (274, 'Fleetwood');
insert into SPECIALIZATION (id, sp_name)
values (55, 'Crown Victoria');
insert into SPECIALIZATION (id, sp_name)
values (191, 'Grand Prix');
insert into SPECIALIZATION (id, sp_name)
values (228, 'Ram 2500');
insert into SPECIALIZATION (id, sp_name)
values (313, '90');
insert into SPECIALIZATION (id, sp_name)
values (223, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (283, 'Yukon XL 1500');
insert into SPECIALIZATION (id, sp_name)
values (86, 'Odyssey');
insert into SPECIALIZATION (id, sp_name)
values (152, '600');
insert into SPECIALIZATION (id, sp_name)
values (230, 'Rodeo');
insert into SPECIALIZATION (id, sp_name)
values (60, 'Camry');
insert into SPECIALIZATION (id, sp_name)
values (102, 'Continental');
insert into SPECIALIZATION (id, sp_name)
values (198, 'XL-7');
insert into SPECIALIZATION (id, sp_name)
values (73, 'XJ');
insert into SPECIALIZATION (id, sp_name)
values (284, 'Econoline E150');
insert into SPECIALIZATION (id, sp_name)
values (58, 'Highlander');
insert into SPECIALIZATION (id, sp_name)
values (317, 'Suburban 1500');
insert into SPECIALIZATION (id, sp_name)
values (347, 'A6');
insert into SPECIALIZATION (id, sp_name)
values (188, 'Navigator');
insert into SPECIALIZATION (id, sp_name)
values (123, 'GTO');
insert into SPECIALIZATION (id, sp_name)
values (27, 'Villager');
insert into SPECIALIZATION (id, sp_name)
values (234, 'S-Type');
insert into SPECIALIZATION (id, sp_name)
values (311, '900');
insert into SPECIALIZATION (id, sp_name)
values (215, 'Suburban 2500');
insert into SPECIALIZATION (id, sp_name)
values (236, 'Impala');
insert into SPECIALIZATION (id, sp_name)
values (330, 'Matrix');
insert into SPECIALIZATION (id, sp_name)
values (368, 'G37');
insert into SPECIALIZATION (id, sp_name)
values (6, 'C-Class');
insert into SPECIALIZATION (id, sp_name)
values (397, '928');
insert into SPECIALIZATION (id, sp_name)
values (98, 'Golf');
insert into SPECIALIZATION (id, sp_name)
values (274, 'Amigo');
insert into SPECIALIZATION (id, sp_name)
values (222, 'Murano');
insert into SPECIALIZATION (id, sp_name)
values (206, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (214, 'Passport');
insert into SPECIALIZATION (id, sp_name)
values (185, 'CTS');
insert into SPECIALIZATION (id, sp_name)
values (118, 'Corolla');
insert into SPECIALIZATION (id, sp_name)
values (193, 'TL');
insert into SPECIALIZATION (id, sp_name)
values (92, 'Caliber');
insert into SPECIALIZATION (id, sp_name)
values (370, 'Forte');
insert into SPECIALIZATION (id, sp_name)
values (37, '4Runner');
insert into SPECIALIZATION (id, sp_name)
values (66, 'Silhouette');
insert into SPECIALIZATION (id, sp_name)
values (167, 'Vision');
insert into SPECIALIZATION (id, sp_name)
values (225, 'Navigator L');
insert into SPECIALIZATION (id, sp_name)
values (15, 'E-Class');
insert into SPECIALIZATION (id, sp_name)
values (174, 'Montero');
insert into SPECIALIZATION (id, sp_name)
values (135, 'Tacoma Xtra');
insert into SPECIALIZATION (id, sp_name)
values (186, 'Safari');
insert into SPECIALIZATION (id, sp_name)
values (329, 'S6');
insert into SPECIALIZATION (id, sp_name)
values (31, 'QX');
insert into SPECIALIZATION (id, sp_name)
values (316, 'Xterra');
insert into SPECIALIZATION (id, sp_name)
values (170, 'Ram Wagon B250');
insert into SPECIALIZATION (id, sp_name)
values (29, 'Jetta');
insert into SPECIALIZATION (id, sp_name)
values (359, 'Mazda3');
insert into SPECIALIZATION (id, sp_name)
values (272, 'Suburban 1500');
insert into SPECIALIZATION (id, sp_name)
values (233, '7 Series');
insert into SPECIALIZATION (id, sp_name)
values (158, 'Outback');
insert into SPECIALIZATION (id, sp_name)
values (102, 'Celica');
insert into SPECIALIZATION (id, sp_name)
values (274, 'Freelander');
insert into SPECIALIZATION (id, sp_name)
values (202, 'Mystique');
insert into SPECIALIZATION (id, sp_name)
values (250, 'E-Series');
insert into SPECIALIZATION (id, sp_name)
values (62, 'Sebring');
insert into SPECIALIZATION (id, sp_name)
values (308, '3500');
insert into SPECIALIZATION (id, sp_name)
values (155, 'Fleetwood');
insert into SPECIALIZATION (id, sp_name)
values (325, 'Caprice Classic');
insert into SPECIALIZATION (id, sp_name)
values (22, 'Vision');
insert into SPECIALIZATION (id, sp_name)
values (276, 'Roadmaster');
insert into SPECIALIZATION (id, sp_name)
values (310, 'LS');
insert into SPECIALIZATION (id, sp_name)
values (185, 'Town Car');
insert into SPECIALIZATION (id, sp_name)
values (37, 'S-Class');
insert into SPECIALIZATION (id, sp_name)
values (232, 'Prelude');
commit;
prompt 300 records committed...
insert into SPECIALIZATION (id, sp_name)
values (65, 'Azure');
insert into SPECIALIZATION (id, sp_name)
values (229, 'Hombre');
insert into SPECIALIZATION (id, sp_name)
values (122, 'Quest');
insert into SPECIALIZATION (id, sp_name)
values (289, '1500 Club Coupe');
insert into SPECIALIZATION (id, sp_name)
values (150, 'T100');
insert into SPECIALIZATION (id, sp_name)
values (20, 'CL-Class');
insert into SPECIALIZATION (id, sp_name)
values (226, '3500');
insert into SPECIALIZATION (id, sp_name)
values (28, 'Tacoma');
insert into SPECIALIZATION (id, sp_name)
values (263, 'Park Avenue');
insert into SPECIALIZATION (id, sp_name)
values (362, 'CL65 AMG');
insert into SPECIALIZATION (id, sp_name)
values (34, 'Vandura 1500');
insert into SPECIALIZATION (id, sp_name)
values (157, 'L300');
insert into SPECIALIZATION (id, sp_name)
values (217, 'Accord');
insert into SPECIALIZATION (id, sp_name)
values (222, 'Santa Fe');
insert into SPECIALIZATION (id, sp_name)
values (26, 'Thunderbird');
insert into SPECIALIZATION (id, sp_name)
values (144, 'Xterra');
insert into SPECIALIZATION (id, sp_name)
values (103, 'Ram Van 1500');
insert into SPECIALIZATION (id, sp_name)
values (395, 'Diablo');
insert into SPECIALIZATION (id, sp_name)
values (181, '2500');
insert into SPECIALIZATION (id, sp_name)
values (354, 'Touareg 2');
insert into SPECIALIZATION (id, sp_name)
values (314, 'Venture');
insert into SPECIALIZATION (id, sp_name)
values (191, 'SJ');
insert into SPECIALIZATION (id, sp_name)
values (393, 'LR3');
insert into SPECIALIZATION (id, sp_name)
values (362, 'Ram 3500');
insert into SPECIALIZATION (id, sp_name)
values (351, 'Solara');
insert into SPECIALIZATION (id, sp_name)
values (381, 'S-Class');
insert into SPECIALIZATION (id, sp_name)
values (89, 'Touareg');
insert into SPECIALIZATION (id, sp_name)
values (175, 'MX-3');
insert into SPECIALIZATION (id, sp_name)
values (92, 'Vitara');
insert into SPECIALIZATION (id, sp_name)
values (345, 'Festiva');
insert into SPECIALIZATION (id, sp_name)
values (331, 'Yukon');
insert into SPECIALIZATION (id, sp_name)
values (271, '760');
insert into SPECIALIZATION (id, sp_name)
values (382, 'Mini');
insert into SPECIALIZATION (id, sp_name)
values (335, 'Firebird');
insert into SPECIALIZATION (id, sp_name)
values (85, 'Summit');
insert into SPECIALIZATION (id, sp_name)
values (336, 'Lumina APV');
insert into SPECIALIZATION (id, sp_name)
values (94, 'S-Type');
insert into SPECIALIZATION (id, sp_name)
values (108, 'Fit');
insert into SPECIALIZATION (id, sp_name)
values (273, 'F150');
insert into SPECIALIZATION (id, sp_name)
values (325, 'Cruze');
insert into SPECIALIZATION (id, sp_name)
values (86, 'Sable');
insert into SPECIALIZATION (id, sp_name)
values (60, 'A8');
insert into SPECIALIZATION (id, sp_name)
values (15, 'Cavalier');
insert into SPECIALIZATION (id, sp_name)
values (366, 'M5');
insert into SPECIALIZATION (id, sp_name)
values (69, '62');
insert into SPECIALIZATION (id, sp_name)
values (280, 'Elantra');
insert into SPECIALIZATION (id, sp_name)
values (100, 'Ram Van B350');
insert into SPECIALIZATION (id, sp_name)
values (29, 'Tacoma');
insert into SPECIALIZATION (id, sp_name)
values (387, 'Tribute');
insert into SPECIALIZATION (id, sp_name)
values (354, 'Challenger');
insert into SPECIALIZATION (id, sp_name)
values (215, 'Tempo');
insert into SPECIALIZATION (id, sp_name)
values (80, 'Avalanche');
insert into SPECIALIZATION (id, sp_name)
values (93, '350Z');
insert into SPECIALIZATION (id, sp_name)
values (199, 'FJ Cruiser');
insert into SPECIALIZATION (id, sp_name)
values (234, 'Durango');
insert into SPECIALIZATION (id, sp_name)
values (236, 'HHR');
insert into SPECIALIZATION (id, sp_name)
values (273, 'Ranger');
insert into SPECIALIZATION (id, sp_name)
values (224, 'A4');
insert into SPECIALIZATION (id, sp_name)
values (7, 'E-Class');
insert into SPECIALIZATION (id, sp_name)
values (201, 'Mountaineer');
insert into SPECIALIZATION (id, sp_name)
values (76, 'Prius');
insert into SPECIALIZATION (id, sp_name)
values (207, 'Century');
insert into SPECIALIZATION (id, sp_name)
values (418, 'Astra');
insert into SPECIALIZATION (id, sp_name)
values (429, '6000');
insert into SPECIALIZATION (id, sp_name)
values (429, 'B-Series');
insert into SPECIALIZATION (id, sp_name)
values (410, '1000');
insert into SPECIALIZATION (id, sp_name)
values (407, 'G3');
insert into SPECIALIZATION (id, sp_name)
values (466, 'LX');
insert into SPECIALIZATION (id, sp_name)
values (451, 'Civic');
insert into SPECIALIZATION (id, sp_name)
values (430, 'XL7');
insert into SPECIALIZATION (id, sp_name)
values (491, '57');
insert into SPECIALIZATION (id, sp_name)
values (426, 'Windstar');
insert into SPECIALIZATION (id, sp_name)
values (440, 'Montero');
insert into SPECIALIZATION (id, sp_name)
values (475, 'Econoline E150');
insert into SPECIALIZATION (id, sp_name)
values (429, 'Range Rover');
insert into SPECIALIZATION (id, sp_name)
values (451, 'Excel');
insert into SPECIALIZATION (id, sp_name)
values (489, 'Galant');
insert into SPECIALIZATION (id, sp_name)
values (462, 'Ion');
insert into SPECIALIZATION (id, sp_name)
values (495, 'Fit');
insert into SPECIALIZATION (id, sp_name)
values (471, 'Savana 1500');
insert into SPECIALIZATION (id, sp_name)
values (454, '2500');
insert into SPECIALIZATION (id, sp_name)
values (493, 'Cordia');
insert into SPECIALIZATION (id, sp_name)
values (416, 'Familia');
insert into SPECIALIZATION (id, sp_name)
values (441, 'Town Car');
insert into SPECIALIZATION (id, sp_name)
values (406, 'Roadmaster');
insert into SPECIALIZATION (id, sp_name)
values (409, '300E');
insert into SPECIALIZATION (id, sp_name)
values (441, '599 GTB Fiorano');
insert into SPECIALIZATION (id, sp_name)
values (450, 'NV2500');
insert into SPECIALIZATION (id, sp_name)
values (493, 'Nubira');
insert into SPECIALIZATION (id, sp_name)
values (452, 'LS Hybrid');
insert into SPECIALIZATION (id, sp_name)
values (484, 'S8');
insert into SPECIALIZATION (id, sp_name)
values (417, '2500');
insert into SPECIALIZATION (id, sp_name)
values (454, 'Corvette');
insert into SPECIALIZATION (id, sp_name)
values (441, 'Mirage');
insert into SPECIALIZATION (id, sp_name)
values (497, 'Jimmy');
insert into SPECIALIZATION (id, sp_name)
values (453, 'Santa Fe');
insert into SPECIALIZATION (id, sp_name)
values (453, 'SLK-Class');
insert into SPECIALIZATION (id, sp_name)
values (428, 'Taurus');
insert into SPECIALIZATION (id, sp_name)
values (457, 'Continental');
insert into SPECIALIZATION (id, sp_name)
values (413, 'Century');
commit;
prompt 400 records committed...
insert into SPECIALIZATION (id, sp_name)
values (480, 'Cougar');
insert into SPECIALIZATION (id, sp_name)
values (432, 'Durango');
insert into SPECIALIZATION (id, sp_name)
values (425, 'GT');
insert into SPECIALIZATION (id, sp_name)
values (472, 'Pathfinder');
insert into SPECIALIZATION (id, sp_name)
values (444, 'E-Class');
insert into SPECIALIZATION (id, sp_name)
values (481, 'Discovery');
insert into SPECIALIZATION (id, sp_name)
values (439, 'Golf');
insert into SPECIALIZATION (id, sp_name)
values (433, 'Dakota');
insert into SPECIALIZATION (id, sp_name)
values (420, 'MPV');
insert into SPECIALIZATION (id, sp_name)
values (466, 'Avalanche 1500');
insert into SPECIALIZATION (id, sp_name)
values (489, '400E');
insert into SPECIALIZATION (id, sp_name)
values (406, 'Loyale');
insert into SPECIALIZATION (id, sp_name)
values (463, 'Grand Voyager');
insert into SPECIALIZATION (id, sp_name)
values (422, 'Classic');
insert into SPECIALIZATION (id, sp_name)
values (458, 'Azera');
insert into SPECIALIZATION (id, sp_name)
values (449, 'Corvette');
insert into SPECIALIZATION (id, sp_name)
values (470, 'Caravan');
insert into SPECIALIZATION (id, sp_name)
values (423, 'Caravan');
insert into SPECIALIZATION (id, sp_name)
values (418, 'Panamera');
insert into SPECIALIZATION (id, sp_name)
values (491, '2500');
insert into SPECIALIZATION (id, sp_name)
values (412, 'Cougar');
insert into SPECIALIZATION (id, sp_name)
values (472, 'FX');
insert into SPECIALIZATION (id, sp_name)
values (454, 'Montero');
insert into SPECIALIZATION (id, sp_name)
values (481, 'Riviera');
insert into SPECIALIZATION (id, sp_name)
values (484, 'Cutlass');
insert into SPECIALIZATION (id, sp_name)
values (500, 'Skylark');
insert into SPECIALIZATION (id, sp_name)
values (457, 'Astro');
insert into SPECIALIZATION (id, sp_name)
values (439, 'Navigator');
insert into SPECIALIZATION (id, sp_name)
values (419, '929');
insert into SPECIALIZATION (id, sp_name)
values (449, 'Sorento');
insert into SPECIALIZATION (id, sp_name)
values (499, 'Range Rover Sport');
insert into SPECIALIZATION (id, sp_name)
values (478, 'Landaulet');
insert into SPECIALIZATION (id, sp_name)
values (490, 'HHR');
insert into SPECIALIZATION (id, sp_name)
values (443, 'Eclipse');
insert into SPECIALIZATION (id, sp_name)
values (453, 'Chariot');
insert into SPECIALIZATION (id, sp_name)
values (485, '5 Series');
insert into SPECIALIZATION (id, sp_name)
values (451, 'NSX');
insert into SPECIALIZATION (id, sp_name)
values (468, 'B-Series Plus');
insert into SPECIALIZATION (id, sp_name)
values (476, 'Firefly');
commit;
prompt 439 records loaded

set feedback on
set define on
prompt Done
