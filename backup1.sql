prompt PL/SQL Developer Export Tables for user C##BOSS@XE
prompt Created by 97254 on יום שלישי 25 יוני 2024
set feedback off
set define off

prompt Creating MAINTENANCE...
create table MAINTENANCE
(
  maintenanceid   INTEGER,
  vveicleid       INTEGER,
  maintenancedate DATE,
  mechanicid      INTEGER,
  maintenancetype VARCHAR2(50),
  newattribute    VARCHAR2(50),
  veicleid        INTEGER
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating MECHANIC...
create table MECHANIC
(
  mechanicid      INTEGER not null,
  mechanicname    VARCHAR2(100) not null,
  mspecialization VARCHAR2(50) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table MECHANIC
  add primary key (MECHANICID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SPECIALIZATION...
create table SPECIALIZATION
(
  id      NUMBER not null,
  sp_name VARCHAR2(50)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating VEHICLE...
create table VEHICLE
(
  vehicleid       INTEGER not null,
  busnumber       INTEGER,
  vehiclemodel    VARCHAR2(20) not null,
  manufactureyear DATE not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255;
alter table VEHICLE
  add primary key (VEHICLEID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Truncating VEHICLE...
truncate table VEHICLE;
prompt Truncating SPECIALIZATION...
truncate table SPECIALIZATION;
prompt Truncating MECHANIC...
truncate table MECHANIC;
prompt Truncating MAINTENANCE...
truncate table MAINTENANCE;
prompt Loading MAINTENANCE...
prompt Table is empty
prompt Loading MECHANIC...
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (136, 'Lois  Berry', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (137, 'Eileen  McCready', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (138, 'Keanu  Mahoney', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (139, 'Stephen  Hart', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (140, 'Richard  Burrows', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (141, 'Rawlins  Lineback', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (142, 'Brent  Diesel', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (143, 'Fiona  Woodward', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (144, 'Michelle  Cochran', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (145, 'Yolanda  Cochran', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (146, 'Tom  Rispoli', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (147, 'Cherry  Jeffreys', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (148, 'Stewart  Barkin', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (149, 'Angelina  Paquin', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (1, 'Jean-Luc  Cole', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (2, 'Caroline  Skaggs', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (3, 'Malcolm  Kutcher', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (4, 'Jerry  Gandolfini', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (5, 'Gena  Leigh', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (6, 'Wesley  Hall', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (7, 'Faye  Duncan', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (8, 'Geena  urban', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (9, 'Joely  Paquin', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (10, 'Ming-Na  Alda', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (11, 'Phil  Bacharach', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (12, 'Karen  Cruz', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (13, 'Al  Tomei', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (14, 'Al  Tolkan', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (15, 'Jake  Kramer', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (16, 'Matt  Atlas', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (17, 'Molly  Wilder', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (18, 'Oliver  Vai', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (19, 'Albert  Ferrell', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (20, 'Jeanne  Zane', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (21, 'Scott  Stevens', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (22, 'Cledus  Durning', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (23, 'Aaron  Beckham', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (24, 'Solomon  Shepherd', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (25, 'Benicio  Chappelle', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (26, 'Olympia  Williams', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (27, 'Judi  Gracie', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (28, 'Nick  Harris', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (29, 'Madeline  Basinger', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (30, 'Cloris  Cheadle', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (31, 'Rupert  Horton', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (32, 'Kelli  Dourif', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (33, 'Michael  Hawkins', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (34, 'Embeth  Williamson', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (35, 'Juliana  Reid', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (36, 'Richie  Firth', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (37, 'Natacha  Hunt', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (38, 'Chely  Arkenstone', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (39, 'Raymond  Pierce', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (40, 'Melba  Manning', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (41, 'Taryn  Cale', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (42, 'Davis  Hector', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (43, 'Nicky  Briscoe', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (44, 'Burton  Flemyng', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (45, 'Stanley  Lemmon', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (46, 'Wesley  Pleasure', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (47, 'Andie  Beatty', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (48, 'James  Giraldo', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (49, 'Scarlett  Curry', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (50, 'Nanci  Swayze', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (51, 'Brian  Saxon', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (52, 'Humberto  Pollack', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (53, 'Dwight  Brooks', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (54, 'Noah  Gere', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (55, 'Diane  Coe', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (56, 'Albert  Graham', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (57, 'Irene  Sedgwick', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (58, 'Freddy  Biehn', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (59, 'Nicholas  Sisto', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (60, 'Parker  Marx', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (61, 'Joan  Mraz', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (62, 'Wallace  Manning', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (63, 'Jackson  Shalhoub', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (64, 'Chaka  Callow', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (65, 'Anjelica  Rains', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (66, 'Joe  Posey', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (67, 'Cate  Loggins', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (68, 'Bo  Johnson', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (69, 'Dorry  Bratt', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (70, 'Karon  Buffalo', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (71, 'Martin  Kennedy', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (72, 'Chely  Hall', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (73, 'Rhys  Gertner', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (74, 'Joseph  Dalley', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (75, 'Alfie  Kelly', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (76, 'Jay  Begley', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (77, 'Joshua  Jonze', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (78, 'Neneh  Neeson', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (79, 'Laurence  Torino', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (80, 'Miranda  Garofalo', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (81, 'Kurtwood  Blige', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (82, 'Beth  El-Saher', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (83, 'Chi  Ifans', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (84, 'Jeroen  McElhone', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (85, 'Corey  Raybon', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (86, 'Ethan  Walsh', 'Diesel Engine Repair');
commit;
prompt 100 records committed...
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (87, 'Rosario  Arjona', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (88, 'Rosanne  Ramirez', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (89, 'Marisa  Laws', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (90, 'Powers  Branagh', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (91, 'Kirk  Irons', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (92, 'Pablo  Arkenstone', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (93, 'Davy  Masur', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (94, 'Ahmad  Hidalgo', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (95, 'Courtney  Loveless', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (96, 'Xander  Rawls', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (97, 'Randy  Ward', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (98, 'Earl  Nicks', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (99, 'Brendan  Ripley', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (100, 'Mia  Boyle', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (101, 'Wade  Gates', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (102, 'Geoff  Sayer', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (103, 'Judy  Unger', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (104, 'Colleen  McPherson', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (105, 'Gladys  Neill', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (106, 'Casey  Leigh', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (107, 'Johnette  Byrne', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (108, 'Miles  Chaplin', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (109, 'Mae  Tierney', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (110, 'Guy  Hoskins', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (111, 'Hilton  Eder', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (112, 'Taye  Connick', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (113, 'Sonny  Lane', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (114, 'Frankie  Roth', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (115, 'Emm  Sellers', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (116, 'Ellen  Soul', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (117, 'Jimmie  Thomas', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (118, 'Mickey  Krumholtz', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (119, 'Art  Feliciano', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (120, 'Maury  DiBiasio', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (121, 'Temuera  Herndon', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (122, 'Ritchie  Jane', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (123, 'Kiefer  Berkley', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (124, 'Larenz  McLachlan', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (125, 'Robbie  Lorenz', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (126, 'Cole  Teng', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (127, 'Kathleen  Goldwyn', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (128, 'Saffron  McNeice', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (129, 'Debra  Bright', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (130, 'Isaac  Baez', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (131, 'Kieran  Duke', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (132, 'Bradley  Sherman', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (133, 'Woody  Arnold', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (134, 'Gordon  Domino', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (135, 'Sally  Martin', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (150, 'Vanessa  Gagnon', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (151, 'Betty  Sedgwick', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (152, 'Eugene  Puckett', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (153, 'Victor  Walken', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (154, 'Sara  Richter', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (155, 'Frederic  Alda', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (156, 'Rawlins  Albright', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (157, 'Roscoe  Pitney', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (158, 'Freddy  Pacino', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (159, 'Adina  Paymer', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (160, 'John  Duvall', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (161, 'Pelvic  Yorn', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (162, 'Rawlins  Stamp', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (163, 'Carlos  Price', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (164, 'Emm  O''Donnell', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (165, 'Miles  Atkins', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (166, 'Mili  Levy', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (167, 'Winona  Beals', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (168, 'Natalie  Clark', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (169, 'Natasha  Adams', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (170, 'Lonnie  Secada', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (171, 'Daniel  Andrews', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (172, 'Lily  Flack', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (173, 'Crispin  Leguizamo', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (174, 'Sylvester  Quaid', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (175, 'Glenn  Magnuson', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (176, 'Joan  Navarro', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (177, 'Veruca  Loveless', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (178, 'Mekhi  Franklin', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (179, 'Allison  Ramis', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (180, 'Kurt  Bates', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (181, 'Charlie  Dawson', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (182, 'Ossie  Rhymes', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (183, 'Selma  MacDonald', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (184, 'Christian  Murray', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (185, 'Sonny  Sossamon', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (186, 'Tramaine  Sorvino', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (187, 'Mary-Louise  Watley', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (188, 'Roger  Richards', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (189, 'Luke  Rossellini', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (190, 'Brian  Spiner', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (191, 'Moe  Metcalf', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (192, 'Miriam  Hannah', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (193, 'Marty  DeVito', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (194, 'Hank  Scaggs', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (195, 'Corey  Remar', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (196, 'Glenn  Stamp', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (197, 'Kyle  Devine', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (198, 'Pablo  Nielsen', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (199, 'Ben  Chestnut', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (200, 'Helen  Sossamon', 'Body Repair');
commit;
prompt 200 records committed...
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (201, 'Daryle  Withers', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (202, 'Vern  Webb', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (203, 'Janeane  Caviezel', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (204, 'Kate  Underwood', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (205, 'Renee  Marshall', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (206, 'Miko  Wiedlin', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (207, 'Ty  Brolin', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (208, 'Sigourney  Bachman', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (209, 'Renee  Sirtis', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (210, 'Dustin  Davidtz', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (211, 'Ozzy  Whitwam', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (212, 'Olga  Blackwell', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (213, 'Colm  Osmond', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (214, 'Talvin  Beck', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (215, 'Crispin  McGoohan', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (216, 'Carl  Wilder', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (217, 'Dennis  Bright', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (218, 'Pierce  Rain', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (219, 'Diamond  Wilson', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (220, 'Rob  Cusack', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (221, 'Cary  Whitmore', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (222, 'Carolyn  Alexander', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (223, 'Sam  Scott', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (224, 'Eric  Noseworthy', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (225, 'Bryan  Costner', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (226, 'Gino  Doucette', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (227, 'Machine  Shepard', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (228, 'Neneh  Begley', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (229, 'Guy  Malkovich', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (230, 'Jean-Luc  Mraz', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (231, 'Angelina  Sarsgaard', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (232, 'Anne  Peterson', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (233, 'Solomon  Tanon', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (234, 'Stanley  Spector', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (235, 'Marisa  Eldard', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (236, 'Sigourney  Wilder', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (237, 'Christina  Turner', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (238, 'Christine  Lauper', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (239, 'Rolando  Hayek', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (240, 'Judd  Springfield', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (241, 'Jessica  Belle', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (242, 'Rachael  Webb', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (243, 'Morris  Gano', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (244, 'Derek  Neuwirth', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (245, 'Ramsey  Coughlan', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (246, 'Richard  Horton', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (247, 'Night  Crudup', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (248, 'Leo  Garner', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (249, 'Annie  Tsettos', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (250, 'Mandy  Napolitano', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (251, 'Amanda  Mac', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (252, 'Mickey  Lowe', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (253, 'Cheech  Akins', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (254, 'Sigourney  Cetera', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (255, 'Charles  Newton', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (256, 'Ceili  Taylor', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (257, 'Howard  Weber', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (258, 'Aaron  Fender', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (259, 'Robby  Garr', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (260, 'Will  Cozier', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (261, 'Burton  Torino', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (262, 'Andy  Herrmann', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (263, 'Mos  Benet', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (264, 'Lizzy  Shocked', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (265, 'Cole  Gold', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (266, 'Domingo  McDowell', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (267, 'Tyrone  Gates', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (268, 'Nora  Feuerstein', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (269, 'Mickey  Ferry', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (270, 'Bo  Freeman', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (271, 'Albertina  Speaks', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (272, 'Sophie  Pfeiffer', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (273, 'Sheryl  Walken', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (274, 'Eddie  Porter', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (275, 'Sharon  Swinton', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (276, 'Caroline  Mraz', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (277, 'Ned  Washington', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (278, 'Burt  Bale', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (279, 'Saul  Ribisi', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (280, 'Herbie  Sutherland', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (281, 'Ritchie  Shelton', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (282, 'John  Woods', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (283, 'Todd  Levy', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (284, 'Ann  Reiner', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (285, 'Bob  Cash', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (286, 'Nick  Preston', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (287, 'Lenny  Bright', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (288, 'Beth  Wilder', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (289, 'Melba  Imbruglia', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (290, 'Quentin  Portman', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (291, 'Roy  Lloyd', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (292, 'Charlton  Lynskey', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (293, 'Tramaine  DeGraw', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (294, 'Colm  Stampley', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (295, 'Marie  Cattrall', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (296, 'Humberto  Webb', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (297, 'Bobbi  Dorn', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (298, 'Lorraine  Idle', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (299, 'Michael  Morales', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (300, 'Sarah  Mathis', 'Maintenance Planning');
commit;
prompt 300 records committed...
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (301, 'Emilio  Weir', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (302, 'Wes  Stiers', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (303, 'Tobey  Loveless', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (304, 'Minnie  Day', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (305, 'Todd  Astin', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (306, 'Alex  Heald', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (307, 'Samuel  Melvin', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (308, 'Nicky  Dawson', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (309, 'Wes  Clayton', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (310, 'Vern  Arkin', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (311, 'Taylor  Rydell', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (312, 'Allison  Hackman', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (313, 'Jarvis  McPherson', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (314, 'Thomas  Holmes', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (315, 'Wang  Cervine', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (316, 'Ivan  Parker', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (317, 'Ashley  Byrne', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (318, 'Sophie  Paquin', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (319, 'Harrison  Rossellini', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (320, 'Ving  Smith', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (321, 'Tzi  Esposito', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (322, 'Cyndi  Arkenstone', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (323, 'Emilio  Mazar', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (324, 'Hector  Presley', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (325, 'David  Keith', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (326, 'Tracy  Spader', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (327, 'Eric  Harper', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (328, 'Jeremy  Gray', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (329, 'Woody  Reynolds', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (330, 'Belinda  Street', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (331, 'Angie  Short', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (332, 'Sander  Fender', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (333, 'Rawlins  Osmond', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (334, 'Gaby  Barrymore', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (335, 'Elle  Cash', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (336, 'Joshua  Collins', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (337, 'Johnnie  McCracken', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (338, 'James  McDowell', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (339, 'Red  Geldof', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (340, 'Laurence  Vincent', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (341, 'Saul  Anderson', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (342, 'Ronnie  Isaak', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (343, 'Wendy  Wen', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (344, 'Janeane  Cara', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (345, 'Fionnula  Englund', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (346, 'Delroy  Rickles', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (347, 'Elisabeth  Bean', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (348, 'Vin  Yulin', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (349, 'Swoosie  Day', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (350, 'Lee  Hartnett', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (351, 'Demi  White', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (352, 'Nelly  Lynch', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (353, 'Hazel  Torres', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (354, 'Angie  Heatherly', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (355, 'Gilberto  Linney', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (356, 'Chalee  Nugent', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (357, 'Kathleen  McGinley', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (358, 'Omar  Conway', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (359, 'Vincent  Emmerich', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (360, 'Charlize  Todd', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (361, 'Rade  Emmerich', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (362, 'Kay  McKellen', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (363, 'Kate  Barkin', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (364, 'Anthony  Ryder', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (365, 'LeVar  Ponty', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (366, 'Jeff  Cube', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (367, 'Breckin  Withers', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (368, 'Treat  Gryner', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (369, 'Earl  O''Sullivan', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (370, 'Adam  McGovern', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (371, 'Helen  Sheen', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (372, 'Kathleen  Moody', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (373, 'Olga  Reeve', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (374, 'Lindsey  Garofalo', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (375, 'Alec  Bragg', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (376, 'Amanda  Barnett', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (377, 'Edgar  Cole', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (378, 'Dustin  Begley', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (379, 'Winona  Elwes', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (380, 'Murray  Cook', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (381, 'Celia  D''Onofrio', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (382, 'Rachel  Orlando', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (383, 'Benjamin  Margolyes', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (384, 'Chet  Conners', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (385, 'Trace  Lawrence', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (386, 'Carolyn  Reilly', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (387, 'Reese  Folds', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (388, 'Christina  McNeice', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (389, 'Liquid  McDonnell', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (390, 'Gwyneth  McGregor', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (391, 'Quentin  Kadison', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (392, 'Julia  Balin', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (393, 'Nik  Leoni', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (394, 'Gord  Kweller', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (395, 'Keith  Ramirez', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (396, 'Leon  Daniels', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (397, 'Rene  Teng', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (398, 'Lila  Cheadle', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (399, 'Powers  Belushi', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (400, 'Oded  Place', 'Maintenance Planning');
commit;
prompt 400 records committed...
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (401, 'Antonio  Buckingham', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (402, 'Jena  Holden', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (403, 'Vertical  Plowright', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (404, 'Morris  Jessee', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (405, 'Daryle  McIntosh', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (406, 'Karen  Osbourne', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (407, 'Ramsey  Burns', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (408, 'Rodney  Milsap', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (409, 'Machine  Shorter', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (410, 'Lara  Lowe', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (411, 'Howie  Diddley', 'Installation Systems (Vehicle Installation)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (412, 'Famke  Mann', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (413, 'Alfie  Lauper', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (414, 'Jeremy  Scheider', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (415, 'Courtney  Byrne', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (416, 'Eddie  Vincent', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (417, 'Lynn  Apple', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (418, 'Joey  Parish', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (419, 'Tommy  Rio', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (420, 'Jeanne  Clarkson', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (421, 'Isabella  Jenkins', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (422, 'Billy  Schiff', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (423, 'Lucinda  Peebles', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (424, 'Tori  Roth', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (425, 'Lydia  Hoffman', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (426, 'Nicole  Nicholas', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (427, 'Marina  Robinson', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (428, 'Don  Maguire', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (429, 'Elle  Lindley', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (430, 'Sally  Cassel', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (431, 'Veruca  Wincott', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (432, 'Joy  Collins', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (433, 'Kirsten  Keener', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (434, 'Laurie  Renfro', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (435, 'Hex  Leigh', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (436, 'Jimmy  Van Der Beek', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (437, 'Chazz  Sewell', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (438, 'Donna  Hatosy', 'Diesel Engine Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (439, 'Russell  Callow', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (440, 'Edwin  Tarantino', 'Engine Management Systems (EMS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (441, 'Avenged  Butler', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (442, 'Denzel  Nunn', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (443, 'Roscoe  Reubens', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (444, 'Freddie  England', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (445, 'Joseph  Scheider', 'Maintenance Control');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (446, 'Isabella  Loveless', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (447, 'Daniel  Schreiber', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (448, 'Tramaine  Brandt', 'Body Repair');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (449, 'Elizabeth  Cleary', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (450, 'Cole  Langella', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (451, 'Olga  Metcalf', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (452, 'Davey  Dern', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (453, 'Cloris  Crimson', 'Lighting and Signaling Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (454, 'Juan  King', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (455, 'Davy  Swank', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (456, 'Julianne  Pressly', 'Gasoline Engine Repair ,');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (457, 'Meredith  Creek', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (458, 'Etta  Gracie', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (459, 'Jennifer  Herrmann', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (460, 'Powers  Mohr', 'Heating and Air Conditioning S');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (461, 'Liv  Humphrey', 'Braking Systems(ABS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (462, 'Ellen  Street', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (463, 'Owen  Zevon', 'Engine Maintenance');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (464, 'Taye  Sedgwick', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (465, 'Gerald  Bruce', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (466, 'Ernie  Arjona', 'Advanced Electronics(CAN-BUS)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (467, 'Caroline  Ness', 'Advanced Electronics(ECU)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (468, 'Joey  Swank', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (469, 'Lili  Payne', 'Braking Systems(ESP)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (470, 'Steven  Hampton', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (471, 'Meg  Goldblum', 'Maintenance Planning');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (472, 'Hookah  Leto', 'Traction Control Systems (ASR)');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (473, 'Rupert  Busey', 'General Electrical Systems');
insert into MECHANIC (mechanicid, mechanicname, mspecialization)
values (474, 'Charlie  Begley', 'Advanced Electronics(ECU)');
commit;
prompt 474 records loaded
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
commit;
prompt 62 records loaded
prompt Loading VEHICLE...
prompt Table is empty

set feedback on
set define on
prompt Done
