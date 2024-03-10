use master
go
if(DB_ID('SWP_Project_Gr6') is not null)
drop database SWP_Project_Gr6
go

----  create database ------
if(DB_ID('SWP_Project_Gr6') is null)
create database SWP_Project_Gr6;
go
use SWP_Project_Gr6
go
--------------------------------------              


--------------------------------------		Account      --------------------------------------------------

--if OBJECT_ID('dbo.[role]') is not null
--	drop table dbo.[role]
--go
if OBJECT_ID('dbo.[role]') is null
create table [Role](
	roleId int identity(1,1) primary key not null,
	roleName varchar(20) not null,
)
go
if OBJECT_ID('dbo.[Account_Status]') is not null
	drop table dbo.Account_Status
go
create table Account_Status(
	accountStatusId int identity(1,1) primary key not null,
	accountStatusDetail nvarchar(50) not null,
)

if Object_Id('dbo.Account') is null
create table Account(
	accountId int identity(1,1) primary key not null,
	username varchar(50) not null unique,
	[password] varchar(50) not null,
	email varchar(50) unique,
	[roleId] int foreign key references [Role](roleId) not null,
	accountStatusId int foreign key references Account_Status(accountStatusId)
)

if Object_Id('dbo.Communications') is null
create table Communications(
	communicationsId int identity(1,1) primary key not null,	
	accountId int foreign key references Account(accountId) not null,
	phoneNumber varchar(20) not null,
	[address] nvarchar(255) not null,

)

--if OBJECT_ID('trigger_communications_insert', 'tr') is not null
--	drop trigger trigger_communications_insert
--go
--create trigger trigger_communications_insert on communications
--after insert
--as
--begin
--	select * from communications
--end
--go


if Object_Id('dbo.Account_Profile') is null
create table Account_Profile(
	accountId int references Account(accountId) primary key not null,
	fullName nvarchar(50),
	birthDate datetime2,
	gender bit,
	avatar varchar(255)
)

---------------------------------------------------------------------------------------------------------------------

create table Brand(
	brandId int identity(1, 1) primary key not null,
	brandName nvarchar(100) not null,
)

insert into Brand values('Dell'), ('Acer'), ('Apple')

create table HardwareMemory(
	hardwareMemoryId int identity(1, 1) primary key not null,
	hardwareMemory varchar(100) not null
)
insert into HardwareMemory values('128GB'), ('256GB'), ('512GB'), ('1TB'), ('HDD: 1TB'), ('2TB'), ('120GB')

create table RamMemory(
	ramMemoryId int identity(1, 1) primary key not null,
	ramMemory varchar(100) not null
)
insert into RamMemory values('4GB'), ('8GB'), ('16GB'), ('32GB'), ('64GB')

create table Color(
	colorId int identity(1, 1) primary key not null,
	color varchar(100) not null,
)
insert into color values('Red'), ('Black'), ('Grey'), ('White'), ('Green')

create table ScreenSize(
	screenSizeId int identity(1, 1) primary key not null,
	screenSize varchar(100) not null
)
insert into ScreenSize values('15 inch'), ('16 inch'), ('17 inch')

create table Resolution(
	resolutionId int identity(1, 1) primary key not null,
	resolution varchar(100) not null
)
insert into Resolution values('Full HD'), ('HD'), ('2K')

create table GraphicCard(
	graphicCardId int identity(1, 1) primary key not null,
	graphicCard varchar(100) not null

)
insert into GraphicCard values('Card Onboard'), ('NVIDIA GeForce Series'), ('AMD Radeon Series')

--------------------------------------		Product     ------------------------------------------------------------


if Object_Id('dbo.Category') is null
create table Category(
	categoryId int identity(1, 1) primary key not null,
	categoryName nvarchar(255) not null
)

if Object_Id('dbo.Product') is null
create table Product(
	productId int not null primary key,
	productName nvarchar(255) not null,
	categoryId int foreign key references Category(categoryId), 	
	productDetail nvarchar(2000) 
)



--if Object_Id('dbo.Option') is null
--create table [Option](
--	optionId int identity(1, 1) primary key not null,
--	optionName nvarchar(255)
--)

--if Object_Id('dbo.Product_Option') is null
--create table Product_Option(
--	productOptionId int identity(1, 1) not null,
--	productId int foreign key references Product(productId) not null,
--	--optionId int foreign key references [Option](optionId),
--	optionDetail nvarchar(255),
--	price money not null,
--	numberInStock int not null,
--	quantitySold int not null default 0,
--	primary key(productOptionId)
--)


-- version 2
if Object_Id('dbo.Product_Option') is null
create table Product_Option(
	productOptionId int identity(1, 1) not null,
	productId int foreign key references Product(productId) not null,
	--optionId int foreign key references [Option](optionId),
	--optionDetail nvarchar(255),
	brandId int foreign key references Brand(brandId),
	hardwareMemoryId int foreign key references HardwareMemory(hardwareMemoryId),
	ramMemoryId int foreign key references RamMemory(ramMemoryId),
	colorId int foreign key references Color(colorId),
	screenSizeId int foreign key references ScreenSize(ScreenSizeId),
	resolutionId int foreign key references Resolution(resolutionId),
	graphicCardId int foreign key references  graphicCard(graphicCardId),
	price money not null,
	numberInStock int not null,
	quantitySold int not null default 0,
	primary key(productOptionId)
)



create table [Image](
	imageId int identity(1, 1) not null,
	imageText varchar(255) not null,
	product_OptionId int references Product_Option(productOptionId)
)
-------------- ??????????
--create table Product_No_Option(
--	productId int foreign key references Product(productId) not null,
--	price money not null,
--	numberInStock int not null,
--	quantitySold int not null,
--)
------------------------


---------------------------------------------------------------------------------------------------------------------

--------------------------------------		order     ------------------------------------------------------------

if Object_Id('dbo.[Order]') is null
create table [Order](
	orderId int identity(1, 1) primary key not null,
	accountId int foreign key references account(accountId) not null,
	orderDate datetime not null,
	--totalPrice
)

create table OrderStatusDetail(
	orderStatusDetailId int identity(1, 1) primary key not null,
	[status] nvarchar(255) not null,
	discription nvarchar(255)
)

if Object_Id('dbo.Order_Status') is null
create table Order_Status(
	--orderStatusId int identity(1, 1) primary key not null,
	orderId int foreign key references [Order](orderId) not null,
	orderStatusDetailId int foreign key references OrderStatusDetail(orderStatusDetailId),
	--orderStatus nvarchar(255)
	changeStatusTime datetime not null,
	primary key(orderId, orderStatusDetailId)
)

if Object_Id('dbo.Order_Info') is null
create table Order_Info(
	orderInfoId int identity(1, 1) primary key not null,
	orderId int foreign key references [Order](orderId) not null,
	productId int foreign key references Product(productId) not null,
	productPrice money not null
)

if Object_Id('dbo.Cart') is null
create table Cart(
	cartId int identity(1, 1) primary key not null,
	accountId int foreign key references Account(accountId) not null,
	productId int foreign key references Product(productId) not null,
	quantity int not null
)

---------------------------------------------------------------------------------------------------------------------

--------------------------------------		Other     ------------------------------------------------------------

if Object_Id('dbo.Feedback') is null
create table Feedback(
	feedbackId int identity(1, 1) primary key not null,
	accountId int foreign key references Account(accountId) not null,
	productId int foreign key references Product(productId) not null,
)

if Object_Id('dbo.Reply') is null
create table Reply(
	replyId int identity(1, 1) primary key not null,
	accountId int foreign key references Account(accountId) not null,
	feedbackId int foreign key references Feedback(feedbackId) not null,
	content nvarchar(255) not null
)

create table Payment(
	paymentId int identity(1, 1) primary key not null,
	orderId int foreign key references [Order](orderId) not null,
	payDate datetime not null,
	paymentMethod varchar 
)

---------------------------------------------------------------------------------------------------------------------

insert into Account_Status values ('nonband'), ('banned')
insert into [Role] values ('Admin'), ('Guest'), ('Customer'), ('Marketing'), ('CustomerService')
insert into [Category] values('Laptop'), ('mouse')
insert into Account_Status values('baned'), ('nonband')
--insert into Account values ('admin', )
insert into Account values('admin', '123', 'admin@gmail.com', 1, 1);

insert into Product values (1, 'Macbook Air M1', 1, null, N'Bíu tỳ phùn')
insert into Product_Option values(1, (select brandId from Brand where brandName = 'apple'), 1, 1, 1, 1, 1, (select colorId from Color where color = 'black'), 10000, 0, 0)

	--select * from Brand b, Product_Option po, product p, HardwareMemory hm, RamMemory rm,

select * from product
select * from Product_Option
select po.productOptionId, p.productId, p.productName, p.categoryId, p.productDetail, b.brandName, c.color, hm.hardwareMemory, rm.ramMemory, sc.screenSize, r.resolution, gc.graphicCard, po.price, po.numberInStock, po.quantitySold from
	Brand b, Product_Option po, product p, HardwareMemory hm, RamMemory rm, Color c, ScreenSize sc, Resolution r, GraphicCard gc where po.productId = p.productId and po.hardwareMemoryId = hm.hardwareMemoryId and po.resolutionId = r.resolutionId
	and po.ramMemoryId = rm.ramMemoryId and po.colorId = c.colorId and po.brandId = b.brandId and po.graphicCardId = gc.graphicCardId and po.ScreenSizeId = sc.screenSizeId
select * from [image]


delete from Product_Option where productOptionId = 16
select * From category
--delete from [option] where optionId = 2
--delete from product where productId in (1, 2, 3)
select * from Product_Option
select * from account
select * from Role
select * From Brand
insert into Account values('guest', '123', 'guest@gmail.com', 2, 1)
--select coalesce(couponId, 0) from Product
select * from Resolution

select * from coupon

select * from product_option
select * from Product where productId = (select productId from Product_Option where productOptionId = 1)
select * from Product_Option where productId = (select productId from Product_Option where productOptionId = 2) 

select * From Image


select * from Account_Profile
select * from Account
select * from Communications

delete Communications
insert into Communications values (1, 2, '02929323', 'Hanoi')

select * From Role

select * from cart_item
select * From [order]
select * from Order_Info
select * From Account_Profile

drop table contact_image
drop table contact

create table Contact(
	contactId int not null primary key,
	accountId int foreign key references Account(accountId) not null,
	email varchar(50) not null,
	phoneNumber varchar(20),
	content nvarchar(200) not null,
	contactDate datetime not null
)

create table Contact_Image(
	contactImageId int identity(1, 1) primary key not null,
	contactId int foreign key references Contact(contactId) not null,
	[imageText] varchar(255) not null
)

select * from Contact
select * from Contact_Image