CREATE DATABASE TestProjectDB

GO
USE TestProjectDB
go
CREATE TABLE Roles
(
RoleID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
[Role] VARCHAR(50)  NOT NULL ,
CreatedDate SMALLDATETIME NOT NULL DEFAULT(GETDATE())
)
go
CREATE TABLE Groups
(
GroupID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
GroupName VARCHAR(50)  NOT NULL ,
CreatedDate SMALLDATETIME NOT NULL DEFAULT(GETDATE())
)
GO
CREATE TABLE Users
(
UserID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
UserName VARCHAR(50)  NOT NULL ,
FirstName VARCHAR(50)  NOT NULL ,
MiddleName VARCHAR(50)  NOT NULL ,
[Password] VARCHAR(50)  NOT NULL ,
[RoleID] INT NOT NULL,
[GroupID] INT NOT NULL,
CreatedDate SMALLDATETIME NOT NULL DEFAULT(GETDATE())
)
go

CREATE TABLE Devices
(
DeviceID INT  NOT NULL PRIMARY KEY IDENTITY(1,1),
DeviceName VARCHAR(50)  NOT NULL , 
Manufacturer VARCHAR(50)  NULL , 
ServiceDate DATE  NOT NULL , 
CalibrationDate DATE  NOT NULL ,
[Owner] VARCHAR(50)   NULL ,
Location VARCHAR(50)  NOT NULL , 
DeviceType VARCHAR(50)  NOT NULL , 
DeviceSite VARCHAR(50)  NOT NULL ,
Status VARCHAR(50)  NOT NULL, 
Organization VARCHAR(50)  NOT NULL ,
CreatedDate SMALLDATETIME NOT NULL DEFAULT(GETDATE())
)

go
insert into Roles(Role)
values('Admin')


INSERT INTO Users(UserName,FirstName,MiddleName,Password,RoleID,GroupID)
VALUES('test1','aa','cc','test@123',1,1)

INSERT INTO Devices(CalibrationDate,DeviceName,DeviceSite,DeviceType,Location,Manufacturer,Organization,Owner,ServiceDate,Status)
VALUES('04/14/2020','Device 1','India','Type 1','HYD','xxx','Org 1','yyy','04/14/2020','Active'),
('04/13/2020','Device 2','USA','Type 2','New Jersy','xxx','Org 2','yyy','04/13/2020','Active')