-- insertion scripts for Roles

DROP database

IF EXISTS fastkart;

CREATE database fastkart ;

use fastkart;

CREATE TABLE Roles
(
    RoleId TINYINT,
    RoleName VARCHAR(20)
);
CREATE TABLE Users
(
	EmailId VARCHAR(50) ,
	UserPassword VARCHAR(15),
	RoleId TINYINT,
	Gender CHAR(1),
	DateOfBirth DATE ,
Address VARCHAR(200) );
CREATE TABLE PurchaseDetails
(
    PurchaseId BIGINT ,
    EmailId VARCHAR(50),
    ProductId CHAR(4) ,
    QuantityPurchased SMALLINT,
    DateOfPurchase DATE );

CREATE TABLE CardDetails
(
    CardNumber NUMERIC(16) ,
    NameOnCard VARCHAR(40) ,
    CardType CHAR(6) ,
    CVVNumber NUMERIC(3) NOT NULL,
    ExpiryDate DATE NOT NULL ,
    Balance DECIMAL(10,2) 
);
CREATE TABLE Categories
(
    CategoryId TINYINT ,
    CategoryName VARCHAR(20)
);

CREATE TABLE Products
(
	ProductId CHAR(4) ,
	ProductName VARCHAR(50),
	CategoryId TINYINT,
	Price NUMERIC(8) NOT NULL,
	QuantityAvailable INT 
);

INSERT INTO Roles (RoleId, RoleName) VALUES (1, 'Admin');
INSERT INTO Roles (RoleId, RoleName) VALUES (2, 'Customer');

-- insertion scripts for Users
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Franken@gmail.com','BSBEV@1234',2,'F','1976-08-26','Fauntleroy Circus');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Henriot@gmail.com','CACTU@1234',2,'F','1971-09-04','Cerrito 333');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Hernadez@gmail.com','CHOPS@1234',2,'M','1981-09-18','Hauptstr. 29');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jablonski@gmail.com','COMMI@1234',2,'M','1989-07-21','Av. dos Lusíadas, 23');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Josephs@gmail.com','CONSH@1234',2,'F','1963-11-09','Berkeley Gardens 12  Brewery');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anzio_Don@gmail.com','don@123',1,'M','1991-02-24','Surya Bakery, Mysore;Surya Bakery, Mysore-570001');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karttunen@gmail.com','DRACD@1234',2,'M','1963-06-27','Walserweg 21');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Koskitalo@gmail.com','DUMON@1234',2,'F','1966-01-28','67, rue des Cinquante Otages');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Labrune@gmail.com','EASTC@1234',2,'F','1980-02-09','35 King George');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mathew_Edmar@gmail.com','Divine@456',2,'M','1989-09-12','Saibaba colony, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Larsson@gmail.com','ERNSH@1234',2,'M','1988-04-08','Kirchgasse 6');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Latimer@gmail.com','FAMIA@1234',2,'M','1964-10-08','Rua Orós, 92');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lebihan@gmail.com','FISSA@1234',2,'M','1968-03-22','C/ Moralzarzal, 86');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lincoln@gmail.com','FOLIG@1234',2,'M','1971-01-27','184, chaussée de Tournai');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('McKenna@gmail.com','FOLKO@1234',2,'F','1979-08-30','Åkergatan 24');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mendel@gmail.com','FRANK@1234',2,'M','1964-07-08','Berliner Platz 43');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Muller@gmail.com','FRANR@1234',2,'F','1965-05-22','54, rue Royale');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Nagy@gmail.com','FRANS@1234',2,'F','1978-02-05','Via Monte Bianco 34');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rourke@gmail.com','FURIB@1234',2,'F','1967-10-24','Jardim das rosas n. 32');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ottlieb@gmail.com','GALED@1234',2,'F','1960-05-26','Rambla de Cataluña, 23');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolino@gmail.com','GODOS@1234',2,'M','1961-08-29','C/ Romero, 33');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Parente@gmail.com','GOURL@1234',2,'F','1963-04-25','Av. Brasil, 442');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pontes@gmail.com','GROSR@1234',2,'M','1962-09-29','5ª Ave. Los Palos Grandes');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rance@gmail.com','HANAR@1234',2,'M','1986-04-30','Rua do Paço, 67');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roel@gmail.com','HILAA@1234',2,'M','1983-12-28','Carrera 22 con Ave. Carlos Soublette #8-35');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roulet@gmail.com','HUNGC@1234',2,'M','1981-04-14','City Center Plaza 516 Main St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Saveley@gmail.com','HUNGO@1234',2,'F','1970-11-07','8 Johnstown Road');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Schmitt@gmail.com','ISLAT@1234',2,'F','1974-09-19','Garden House Crowther Way');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rine_Jamwal@gmail.com','spacejet',2,'F','1991-07-20','R S Puram, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Smith@gmail.com','KOENE@1234',2,'M','1985-05-08','Maubelstr. 90');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Snyder@gmail.com','LACOR@1234',2,'M','1985-11-03','67, avenue de l Europe');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sommer@gmail.com','LAMAI@1234',2,'F','1968-09-08','1 rue Alsace-Lorraine');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Thomas@gmail.com','LAUGB@1234',2,'M','1986-11-15','1900 Oak St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Tonini@gmail.com','LAZYK@1234',2,'M','1988-11-11','12 Orchestra Terrace');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mess@gmail.com','LEHMS@1234',2,'F','1964-07-30','Magazinweg 7');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jai@gmail.com','LETSS@1234',2,'F','1971-01-21','87 Polk St. Suite 5');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Albert@gmail.com','LILAS@1234',2,'M','1963-12-23','Carrera 52 con Ave. Bolívar #65-98 Llano Largo');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolo@gmail.com','LINOD@1234',2,'M','1985-09-18','Ave. 5 de Mayo Porlamar');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pedro@gmail.com','LONEP@1234',2,'F','1981-03-18','89 Chiaroscuro Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Victoria@gmail.com','MAGAA@1234',2,'M','1987-01-09','Via Ludovico il Moro 22');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helen@gmail.com','MAISD@1234',2,'F','1968-06-28','Rue Joseph-Bens 532');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lesley@gmail.com','MEREP@1234',2,'F','1982-12-23','43 rue St. Laurent');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Francisco@gmail.com','MORGK@1234',2,'M','1963-02-23','Heerstr. 22');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sanio_Neeba@gmail.com','AllIsGood',2,'F','1990-06-13','Ramnagar, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Philip@gmail.com','NORTS@1234',2,'M','1987-03-04','South House 300 Queensbridge');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Aria@gmail.com','OCEAN@1234',2,'M','1965-06-27','Ing. Gustavo Moncada 8585 Piso 20-A');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ann@gmail.com','OLDWO@1234',2,'F','1981-03-21','2743 Bering St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anabela@gmail.com','OTTIK@1234',2,'F','1985-11-23','Mehrheimerstr. 369');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Peter@gmail.com','PARIS@1234',2,'F','1981-11-13','265, boulevard Charonne');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paul@gmail.com','PERIC@1234',2,'M','1987-05-17','Calle Dr. Jorge Cash 321');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carlos@gmail.com','PICCO@1234',2,'M','1969-02-08','Geislweg 14');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Palle@gmail.com','PRINI@1234',2,'F','1961-03-29','Estrada da saúde n. 58');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karla@gmail.com','QUEDE@1234',2,'M','1968-04-28','Rua da Panificadora, 12');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karin@gmail.com','QUEEN@1234',2,'F','1989-12-18','Alameda dos Canàrios, 891');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Matti@gmail.com','QUICK@1234',2,'M','1982-09-18','Taucherstraße 10');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pirkko@gmail.com','RANCH@1234',2,'M','1983-09-24','Av. del Libertador 900');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Janine@gmail.com','RATTC@1234',2,'F','1964-12-12','2817 Milton Dr.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Maria@gmail.com','REGGC@1234',2,'M','1980-04-11','Strada Provinciale 124');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Yoshi@gmail.com','RICAR@1234',2,'F','1961-08-28','Av. Copacabana, 267');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Laurence@gmail.com','RICSU@1234',2,'M','1985-05-26','Grenzacherweg 237');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('MeetRoda@yahoo.co.in','ChristaRocks',1,'M','1990-04-20','Choultry Circle, Mysore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Elizabeth@gmail.com','ROMEY@1234',2,'F','1975-04-26','Gran Vía, 1');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Patricia@gmail.com','SANTG@1234',2,'F','1968-10-16','Erling Skakkes gate 78');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roland@gmail.com','SAVEA@1234',2,'F','1980-01-04','187 Suffolk Ln.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rita@gmail.com','SEVES@1234',2,'M','1972-06-15','90 Wadhurst Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helvetius@gmail.com','SIMOB@1234',2,'F','1978-03-09','Vinbæltet 34');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Timothy@gmail.com','SPECD@1234',2,'M','1964-09-28','25, rue Lauriston');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sven@gmail.com','SPLIR@1234',2,'F','1967-12-12','P.O. Box 555');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('SamRocks@gmail.com','samsuji123!',2,'M','1991-06-15','Shankranti Circle, Mysore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Miguel@gmail.com','SUPRD@1234',2,'F','1971-10-09','Boulevard Tirou, 255');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paula@gmail.com','THEBI@1234',2,'M','1980-08-05','89 Jefferson Way Suite 2');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Manuel@gmail.com','THECR@1234',2,'M','1988-10-15','55 Grizzly Peak Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mariaa@gmail.com','TOMSP@1234',2,'F','1987-11-29','Luisenstr. 48');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martine@gmail.com','TORTU@1234',2,'M','1985-05-08','Avda. Azteca 123');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Diego@gmail.com','TRADH@1234',2,'F','1983-02-16','Av. Inês de Castro, 414');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Annette@gmail.com','TRAIH@1234',2,'M','1981-05-03','722 DaVinci Blvd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mary@gmail.com','VAFFE@1234',2,'F','1977-10-09','Smagsloget 45');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carine@gmail.com','VICTE@1234',2,'F','1982-12-27','2, rue du Commerce');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Margaret@gmail.com','VINET@1234',2,'M','1979-08-16','59 rue de l Abbaye');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Howard@gmail.com','WANDK@1234',2,'F','1982-06-02','Adenauerallee 900');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martin@gmail.com','WARTH@1234',2,'M','1989-12-15','Torikatu 38');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Gary@gmail.com','WELLI@1234',2,'F','1968-12-27','Rua do Mercado, 12');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Daniel@gmail.com','WHITC@1234',2,'M','1978-05-22','305 - 14th Ave. S. Suite 3B');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('mat@gmail.com','WILMK@1234',2,'M','1977-01-13','Keskuskatu 45');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Davis@gmail.com','WOLZA@1234',2,'M','1982-01-09','ul. Filtrowa 68');


-- insertion scripts for PurchaseDetails


INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1001,'Franken@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1002,'Franken@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1003,'Franken@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1004,'Franken@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1005,'Franken@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1006,'Franken@gmail.com','P134',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1007,'SamRocks@gmail.com','P120',4, '2013-11-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1008,'SamRocks@gmail.com','P110',4, '2013-11-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1009,'SamRocks@gmail.com','P112',3, '2013-11-20');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1010,'SamRocks@gmail.com','P148',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1011,'SamRocks@gmail.com','P150',5,'2013-12-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1012,'Davis@gmail.com','P134',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1013,'Davis@gmail.com','P101',3,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1014,'Davis@gmail.com','P143',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1015,'Davis@gmail.com','P112',3,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1016,'Davis@gmail.com','P148',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1017,'Henriot@gmail.com','P150',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1018,'Henriot@gmail.com','P134',1,'2013-11-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1019,'Henriot@gmail.com','P111',2,'2013-12-25');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1020,'Henriot@gmail.com','P121',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1021,'Henriot@gmail.com','P122',5,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1022,'Pirkko@gmail.com','P109',4,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1023,'Pirkko@gmail.com','P123',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1024,'Pirkko@gmail.com','P115',2,'2013-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1025,'Pirkko@gmail.com','P113',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1026,'Pirkko@gmail.com','P145',3,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1027,'Pirkko@gmail.com','P132',5,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1028,'Pirkko@gmail.com','P101',3,'2013-11-30');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1029,'Elizabeth@gmail.com','P143',5,'2014-01-01');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1030,'Elizabeth@gmail.com','P112',5,'2014-01-02');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1031,'Elizabeth@gmail.com','P148',1,'2014-01-03');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1032,'Elizabeth@gmail.com','P150',5,'2014-01-04');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1033,'Elizabeth@gmail.com','P134',2,'2014-01-05');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1034,'Elizabeth@gmail.com','P135',3,'2014-01-06');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1035,'Paula@gmail.com','P136',3,'2014-01-07');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1036,'Paula@gmail.com','P137',3,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1037,'Paula@gmail.com','P148',5,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1038,'Paula@gmail.com','P150',2,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1039,'Paula@gmail.com','P134',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1040,'Paula@gmail.com','P120',2,'2014-01-11');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1041,'Paula@gmail.com','P110',5,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1042,'Howard@gmail.com','P112',2,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1043,'Howard@gmail.com','P114',3,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1044,'Howard@gmail.com','P101',1,'2014-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1045,'Howard@gmail.com','P143',5,'2014-01-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1046,'Howard@gmail.com','P112',2,'2014-01-23');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1047,'Howard@gmail.com','P148',5,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1048,'Howard@gmail.com','P150',4,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1049,'Howard@gmail.com','P134',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1066,'Franken@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1067,'Franken@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1068,'Franken@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1069,'Franken@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1070,'Franken@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1071,'Franken@gmail.com','P134',3,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1072,'Pedro@gmail.com','P101',1,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1073,'Pedro@gmail.com','P143',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1074,'Pedro@gmail.com','P112',5,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1075,'Pedro@gmail.com','P148',1,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1076,'Pedro@gmail.com','P150',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1077,'Pedro@gmail.com','P134',4,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1078,'Pedro@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1079,'Roland@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1080,'Roland@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1081,'Roland@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1082,'Roland@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1083,'Roland@gmail.com','P134',3,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1085,'Roland@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1086,'Roland@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1087,'Roland@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1088,'Roland@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1089,'Roland@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1090,'Roland@gmail.com','P134',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1108,'Timothy@gmail.com','P120',4,'2013-11-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1110,'Timothy@gmail.com','P110',4,'2013-11-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1111,'Timothy@gmail.com','P112',3,'2013-11-20');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1112,'Timothy@gmail.com','P148',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1114,'Timothy@gmail.com','P150',5,'2013-12-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1115,'Timothy@gmail.com','P134',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1116,'Timothy@gmail.com','P101',3,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1117,'Timothy@gmail.com','P143',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1118,'Timothy@gmail.com','P112',3,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1119,'Timothy@gmail.com','P148',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1120,'Timothy@gmail.com','P150',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1121,'Timothy@gmail.com','P134',1,'2013-11-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1122,'Matti@gmail.com','P111',2,'2013-12-25');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1123,'Matti@gmail.com','P121',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1124,'Matti@gmail.com','P122',5,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1125,'Matti@gmail.com','P109',4,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1126,'Matti@gmail.com','P123',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1127,'Matti@gmail.com','P115',2,'2013-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1128,'Matti@gmail.com','P113',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1129,'Matti@gmail.com','P145',3,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1130,'Matti@gmail.com','P132',5,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1131,'Matti@gmail.com','P101',3,'2013-11-30');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1132,'Matti@gmail.com','P143',5,'2014-01-01');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1133,'Matti@gmail.com','P112',5,'2014-01-02');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1134,'Helvetius@gmail.com','P148',1,'2014-01-03');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1135,'Helvetius@gmail.com','P150',5,'2014-01-04');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1136,'Helvetius@gmail.com','P134',2,'2014-01-05');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1137,'Helvetius@gmail.com','P135',3,'2014-01-06');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1138,'Helvetius@gmail.com','P136',3,'2014-01-07');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1139,'Helvetius@gmail.com','P137',3,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1140,'Helvetius@gmail.com','P148',5,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1141,'Helvetius@gmail.com','P150',2,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1142,'Helvetius@gmail.com','P134',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1143,'Helvetius@gmail.com','P120',2,'2014-01-11');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1144,'Helvetius@gmail.com','P110',5,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1145,'Helvetius@gmail.com','P112',2,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1146,'Mathew_Edmar@gmail.com','P114',3,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1147,'Mathew_Edmar@gmail.com','P101',1,'2014-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1148,'Mathew_Edmar@igmail.com','P143',5,'2014-01-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1149,'Mathew_Edmar@gmail.com','P112',2,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1150,'Mathew_Edmar@gmail.com','P148',5,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1151,'Mathew_Edmar@gmail.com','P150',4,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1152,'Mathew_Edmar@gmail.com','P134',5,'2014-01-17');

-- insertion script for Categories
INSERT INTO Categories (CategoryId, CategoryName) VALUES (1, 'Motors');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (2, 'Fashion');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (3, 'Electronics');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (4, 'Arts');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (5, 'Home');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (6, 'Sporting Goods');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (7, 'Toys');

-- insertion script for Products
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P101','Lamborghini Gallardo Spyder',1,18000000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P102','BMW X1',1,3390000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P103','BMW Z4',1,6890000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P104','Harley Davidson Iron 883 ',1,700000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P105','Ducati Multistrada',1,2256000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P106','Honda CBR 250R',1,193000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P107','Kenneth Cole Black & White Leather Reversible Belt',2,2500.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P108','Classic Brooks Brothers 346 Wool Black Sport Coat',2,3078.63,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P109','Ben Sherman Mens Necktie Silk Tie',2,1847.18,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P110','BRIONI Shirt Cotton NWT Medium',2,2050.00,25);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P111','Patagonia NWT mens XL Nine Trails Vest',2,2299.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P112','Blue Aster Blue Ivory Rugby Pack Shoes',2,6772.37,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P113','Ann Taylor 100% Cashmere Turtleneck Sweater',2,3045.44,80);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P114','Fashion New Slim Ladies Womens Suit Coat',2,2159.59,65);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P115','Apple IPhone 5s 16GB',3,52750.00,70);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P116','Samsung Galaxy S4',3,38799.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P117','Nokia Lumia 1320',3,42199.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P118','LG Nexus 5',3,32649.54,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P119','Moto DroidX',3,32156.45,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P120','Apple MAcbook Pro',3,56800.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P121','Dell Inspiron',3,36789.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P122','IPad Air',3,28000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P123','Xbox 360 with kinect',3,25000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P124','Abstract Hand painted Oil Painting on Canvas',4,2056.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P125','Mysore Painting of Lord Shiva',4,5000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P126','Tanjore Painting of Ganesha',4,8000.00,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P127','Marble Elephants statue',4,9056.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P128','Wooden photo frame',4,150.00,200);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P129','Gold plated dancing peacock',4,350.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P130','Kundan jewellery set',4,2000.00,30);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P131','Marble chess board','4','3000.00','20');
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P132','German Folk Art Wood Carvings Shy Boy and Girl',4,6122.20,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P133','Modern Abstract Metal Art Wall Sculpture',5,5494.55,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P134','Bean Bag Chair Love Seat',5,5754.55,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P135','Scented rose candles',5,200.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P136','Digital bell chime',5,800.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P137','Curtains',5,600.00,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P138','Wall stickers',5,200.00,30);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P139','Shades of Blue Line-by-Line Quilt',5,691.24,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P140','Tahoe Gear Prescott 10 Person Family Cabin Tent',6,9844.33,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P141','Turner Sultan 29er Large',6,147612.60,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P142','BAMBOO BACKED HICKORY LONGBOW ',6,5291.66,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P143','Adidas Shoes',6,700.00,150);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P144','Tennis racket',6,200.00,150);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P145','Baseball glove',6,150.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P146','Door gym',6,700.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P147','Cricket bowling machine',6,3000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P148','ROLLER DERBY SKATES',6,3079.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P149','Metal 3.5-Channel RC Helicopter',7,2458.20,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P150','Ned Butterfly Style Yo Yo',7,553.23,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P151','Baby Einstein Hand Puppets',7,1229.41,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P152','fire godzilla toy',7,614.09,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P153','Remote car',7,1000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P154','Barbie doll set',7,500.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P155','Teddy bear',7,300.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P156','Clever sticks',7,400.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P157','See and Say',7,200.00,50);



-- insertion scripts for CardDetails 

INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1201611246771470,'Cruz','V',171,'2026-12-25',13645.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1224120265211560,'Pirkko','M',771,'2027-01-11',14620.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1221664512112100,'Helen','M',402,'2021-06-21',16132.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1245674110616670,'Mary','M',121,'2011-01-04',14071.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1251175712010020,'Annette','M',606,'2022-10-24',15111.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1211352607461300,'Saveley','V  ',161,'2023-01-05',14120.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1307313341777150,'Anne','M',614,'2011-01-21',16611.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1307114461363110,'Philip','M',663,'2021-01-11',1663.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1323151003776600,'Parente','V  ',517,'2021-07-22',7532.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1333123521012050,'Laurence','M',401,'2021-01-01',16257.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1344543014137310,'Chang','V  ',602,'2023-10-16',10122.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1353631465427120,'Paolino','V  ',435,'2022-01-14',5400.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1360271142701510,'Karin','M',171,'2024-03-07',12112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1372132010111220,'Sommer','V  ',524,'2021-04-12',14556.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1375307422567340,'Yoshi','M',461,'2021-10-10',12344.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1316564526403300,'Carlos','M',461,'2025-01-25',6110.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1401111131746240,'Ibsen','V  ',246,'2022-01-01',7022.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1420510667654400,'Bennett','V  ',324,'2021-02-17',5724.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1422216513351170,'Aria','M',565,'2030-04-11',16016.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1421133147340150,'Martin','M',421,'2022-03-26',1567.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1431111041313360,'Matti Karttunen','M',151,'2026-05-14',6334.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1431111177663050,'Roel','V  ',641,'2024-01-15',13577.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1462257641213010,'Larsson','V  ',741,'2027-04-02',14613.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1412320153151460,'Peter','M',522,'2021-12-01',1433.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1412317474220120,'Maria','M',340,'2011-11-11',13011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1514516710011230,'Pedro','V  ',120,'2021-01-04',6451.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1537716141367160,'Pontes','V  ',310,'2021-05-23',1675.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1555631662463540,'Henriot','V  ',771,'2020-01-20',1716.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1563101313111020,'Jaime Yorres','V  ',240,'2011-10-22',11605.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1572423633450130,'Matti','M',775,'2021-02-02',5172.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1574371302243230,'Hernadez','V  ',551,'2022-11-07',3111.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1510111101132260,'Muller','V  ',645,'2021-03-01',10031.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1511603111737110,'Lincoln','V  ',316,'2022-10-04',11147.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1511621514155670,'Karla','M',632,'2030-07-17',13212.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1601547117331400,'Rourke','V  ',414,'2026-11-10',1013.0);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1625571520110510,'Mendel','V  ',661,'2011-06-16',1736.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1644101715340540,'Lebihan','V  ',103,'2020-11-11',11121.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1656151554325110,'Paolo','V  ',410,'2027-11-26',11165.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1666406702115340,'Lesley','M',275,'2025-01-27',6134.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1670172362066270,'Ottlieb','V  ',664,'2027-10-30',3257.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1706701611601450,'Martine','M',461,'2020-12-16',6611.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1753456075104120,'Cramer','V  ',156,'2021-12-22',17721.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1762111141311160,'Victoria','V  ',146,'2027-01-20',5127.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1761660540375220,'Smith','V  ',603,'2027-10-05',3011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1770711472411120,'Accorti','V  ',155,'2025-01-16',17423.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1770126010361760,'Koskitalo','V  ',174,'2021-01-11',15112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1774070025107600,'Miguel','M',444,'2020-06-11',10051.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1710717311715350,'Helvetius','M',161,'2027-05-03',12015.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1717045046216010,'Domingues','V  ',335,'2021-11-03',6613.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1103711311451210,'Diego','M',744,'2026-01-14',15762.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1125514516343200,'Nagy','V  ',705,'2023-04-11',7712.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1161441663431710,'Snyder','V  ',310,'2023-04-06',15011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1116061342213410,'Thomas','V  ',133,'2021-04-16',11755.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1105311731514100,'Sven','M',657,'2020-11-11',5751.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1130722551101600,'Pereira','V  ',556,'2026-04-12',5116.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1131172100701320,'Tonini','V  ',513,'2021-04-23',3565.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1174246112311160,'Anabela','M',204,'2023-12-03',13013.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1117163271307720,'Howard','M',331,'2026-02-10',2701.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1116173177447140,'Davis','M',501,'2023-03-21',11212.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2017070736071510,'Franken','V  ',431,'2023-06-05',11000000.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2020707634310170,'Karttunen','V  ',165,'2027-10-20',17121.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2031135301155300,'Janine','M',610,'2024-11-01',4077.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2040107464727150,'Paula','M',216,'2021-07-01',1052.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2054415375031050,'Elizabeth','M',113,'2024-01-12',6145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2071616512053250,'Maria','M',465,'2025-07-11',6170.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2012327655031300,'Jablonski','V  ',622,'2020-02-21',14210.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2011162707660160,'Timothy','M',561,'2023-01-01',1401.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2011211617152320,'Carlos González','V  ',244,'2026-01-07',7330.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2102101115051560,'Ashworth','V  ',634,'2027-05-24',10204.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2102410151544330,'Roulet','V  ',764,'2026-01-20',2113.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2107011101224360,'Latimer','V  ',720,'2021-01-16',11317.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2112361521723620,'Carine','M',410,'2022-12-06',11773.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2111125701641510,'Schmitt','V  ',331,'2030-05-01',6112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2121715155211770,'Palle','M',261,'2027-07-05',3655.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2122410035510610,'Margaret','M',175,'2022-01-16',11000.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2127103726103060,'Afonso','V  ',151,'2021-10-01',11726.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2136141552371010,'Rance','V  ',434,'2025-10-05',17113.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2131511656416670,'Francisco','M',727,'2021-01-30',15145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2155131100617450,'Labrune','V  ',400,'2021-02-10',2455.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2157326161005110,'Daniel','M',127,'2021-03-07',2145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2175132167133100,'Gary','M',635,'2021-05-31',14526.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2175174316401110,'Devon','V  ',270,'2021-11-20',3463.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2201617402112410,'Josephs','V  ',640,'2023-12-21',15714.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2210444662115510,'Paul','M',710,'2025-04-21',16523.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2211617013131110,'Roland','M',711,'2025-01-31',2537.00);

