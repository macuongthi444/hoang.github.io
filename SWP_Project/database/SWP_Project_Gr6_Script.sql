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

alter table contact add isResponded bit default 0

create table Contact(
	contactId int not null primary key,
	accountId int foreign key references Account(accountId) not null,
	email varchar(50) not null,
	phoneNumber varchar(20),
	content nvarchar(200) not null,
	contactDate datetime not null,
	isResponded bit default 0
)

create table Contact_Image(
	contactId int foreign key references Contact(contactId) not null,
	[imageText] varchar(255) not null,
	primary key(contactId, imageText)
)

create table Reply_Contact(
	
)

select * from account a join Role r on a.roleId = r.roleId
select * from Account_Profile
select *from Account_Status where accountStatusId = 1

select * from Contact
select * from Contact_Image


CREATE TABLE Shiped_History (
    accountId INT  NOT NULL,
    orderId INT NOT NULL,
    PRIMARY KEY (accountId, orderId)
);

create table deliveryMan_Company(
	accountId int primary key,
	deliveryCompany nvarchar(255) 
)
insert into Role values('Delivery Man')
insert into Account values('shipper1','123','shipper1@gmail.com',6,1)
insert into Account values('mkt1','123','mkt1@gmail.com',3,1)

insert into Account_Profile values(4,'shipper1','2003-12-30',1,null)
insert into deliveryMan_Company values(4,'Company A') 

select * From feedback

alter table feedback add [contentReview] [nvarchar](500) NULL
alter table feedback add [dateReview] [date] NULL
alter table feedback add [rating] [int] NULL

drop table PostProduct
drop table PostDescription
drop table post
drop table postType

create table PostType(
postTypeID  int identity(1, 1) primary key not null,
postTypeDetail nvarchar(50) not null,
)
create table Post(
	postId int identity(1, 1) primary key not null,
	postTitle nvarchar(255) not null,
	postImg varchar(255) not null,
	postStart datetime not null,
	postEnd datetime not null,
	postTypeID int foreign key references PostType(postTypeID) not null,
	postByUserMarketing int foreign key references Account(accountId) not null,
	couponId int foreign key references Coupon(couponId) not null
	
	
)
CREATE TABLE PostProduct(
	[postProductId] [int] IDENTITY(1,1) NOT NULL,
	[postId] int foreign key references Post(postId) not null,
	[productPost] int foreign key references Product_Option(productOptionId) not null
	)
CREATE TABLE PostDescription(
	[postDescriptionId] [int] IDENTITY(1,1) NOT NULL,
	[postId] int foreign key references Post(postId) not null,
	[PostTitleDescription] [nvarchar](255) NOT NULL,
	[postDetail] [nvarchar](500) NOT NULL,
	[postImg] [varchar](255) NOT NULL
)
select * from Coupon
insert into Coupon values (0.3, '2024-3-13', '2024-3-20', 0, 40)
select * from Product_Option
insert into PostType values('Hot'), ('New'), ('Sale'),('Announcements')
insert into account values('mkt1', '123', 'mkt1@gmail.com', 4, 1)
select * from Role
insert into Post values(N'🚀 Khám Phá Thế Giới Công Nghệ Tại Group 6! 💻🌐','','2024-01-10','2024-04-29',4,6,3)
insert into Post values(N'🚀 Khám Phá Sức Mạnh Mới - MacBook Air M1🌟 Đỉnh Cao Công Nghệ Đến Từ Apple 💻🌐','https://cdn.mediamart.vn/images/news/flash-sale-thang-3--apple-macbook-pro-m1-gim-mnh-6-triu-dng-macbook-air-m1-gia-ch-con-23_1cf2e752.jpg ','2024-01-10','2024-04-29',4,6,3)		
insert into Post values(N'🎮 Chinh Phục Thế Giới Game - Laptop Lenovo IdeaPad Gaming 3: Sức Mạnh Đỉnh Cao Tại Đầu Ngón Tay! 🚀💻','https://product.hstatic.net/1000167396/product/lenovo_ideapad_gaming_3_2023_281574a64fc942e9b9c6db3f7de142bb_grande.png','2024-02-10','2024-03-29 ',2,6,3)
insert into Post values(N'🌟 Đẳng Cấp Sáng Tạo - Laptop MSI Modern 14: Khi Nghệ Thuật Gặp Công Nghệ 🌈💻','https://product.hstatic.net/1000167396/product/msi_12_evo_d11938c43ec24c94a3bdd367481e9bc6_grande.png','2024-02-10','2024-03-09',3,6,3)
