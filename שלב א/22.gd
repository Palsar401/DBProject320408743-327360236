
[General]
Version=1

[Preferences]
Username=
Password=2640
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##BOSS
Name=MECHANIC
Count=400..500

[Record]
Name=MECHANICID
Type=NUMBER
Size=
Data=Sequence(1 )
Master=

[Record]
Name=MECHANICNAME
Type=VARCHAR2
Size=100
Data=FirstName  + '  ' +   LastName
Master=

[Record]
Name=MSPECIALIZATION
Type=VARCHAR2
Size=50
Data=List(select S.SP_NAME from SPECIALIZATION S)
Master=

