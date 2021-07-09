--TAO CO SO DU LIEU--
Use Master
GO
If Exists(Select * From Sys.databases Where Name='ShopGiayCNPM')
Drop Database ShopBanHang
GO
Create Database ShopBanHang	
GO
USE ShopBanHang
GO

-- 1. Categorys ----------------------------------------
If Exists(Select * From Sys.tables Where Name='Categorys')
Drop Table Categorys
GO
CREATE TABLE Categorys 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(MAX) NOT NULL,
	[Slug] VARCHAR(MAX) NULL,
	[ParentId] INT NULL DEFAULT '0',
	[Orders] INT NULL,
	[Img] NVARCHAR(255) NULL,
	[MetaKey] NVARCHAR(155) NOT NULL,
	[MetaDesc] NVARCHAR(155) NOT NULL,
	[Created_By] INT NULL DEFAULT '1',
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO

---Thêm 1.Categorys-----------
INSERT INTO Categorys([Name],[Slug],[ParentId],[Orders],[Img],[MetaKey],[MetaDesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES 
(N'Giày NIKE','giay-nike',0,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày CONVERSE','giay-converse',0,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày Vans','giay-vans',0,3,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày MLB','giay-mlb',0,4,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày LUXURY','giay-luxury',0,5,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Dép siêu cấp','dep-sieu-cap',0,6,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE AIR FORCE','giay-nike-air-force',1,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE JORDAN','giay-nike-jordan',1,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE AIR MAX','giay-nike-air-max',1,3,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE M2K','giay-nike-m2k',1,4,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE AIR UPTEMPO','giay-nike-air-uptempo',1,5,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày NIKE AIR ZOOM PEGASUS','giay-nike-air-zoom-pegasus',1,6,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày CONVERSE 1975s','giay-converse-1975s',2,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày CONVERSE CDG','giay-converse-cdg',2,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày BALENCIAGA','giay-balenciaga',5,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày ALEXANDER MCQUEEN','giay-alexander-mcqueen',5,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày GUCCI','giay-gucci',5,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày RICK OWENS','giay-rick-owens',5,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày DIOR','giay-dior',5,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày FILA','giay-fila',5,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày LOUIS VUITTON','giay-louis-vuitton',5,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày XVESSEL','giay-xvessel',5,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày PUMA','giay-puma',5,1,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Giày CHANEL','giay-chanel',5,2,NULL,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

-- 2. Contacts  --------------------------------------------
If Exists(Select * From Sys.tables Where Name='Contacts')
Drop Table Contacts
GO
CREATE TABLE Contacts 
(
	[Id] INT IDENTITY(1,1)	NOT NULL PRIMARY KEY,
	[Title] NVARCHAR(64) NOT NULL,
	[Detail] TEXT NOT NULL,
	[FullName] NVARCHAR(64) NOT NULL,
	[Phone] VARCHAR(12) NOT NULL,
	[Email] NVARCHAR(64) NOT NULL,	
	[UserId] INT NULL,
	[DateContact] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
 
 --- Thêm Contacts -----
 INSERT INTO Contacts([Title],[Detail],[FullName],[Phone],[Email],[UserId],[DateContact],[Updated_By],[Updated_At],[Status])
VALUES(N'Tiêu đề liên hệ',N'Nội dung liên hệ',N'Nguyễn Văn An','0987654321','nguyenvanan@gmail.com',NULL,'2021-01-16 13:10:10',NULL,NULL,1),
(N'Tiêu đề liên hệ',N'Nội dung liên hệ',N'Nguyễn Văn An','0987654321','nguyenvanan@gmail.com',NULL,'2021-01-16 13:10:10',NULL,NULL,1),
(N'Tiêu đề liên hệ',N'Nội dung liên hệ',N'Nguyễn Văn An','0987654321','nguyenvanan@gmail.com',NULL,'2021-01-16 13:10:10',NULL,NULL,1)

-- 3. Links
If Exists(Select * From Sys.tables Where Name='Links')
Drop Table Links
GO
CREATE TABLE Links 
(
	[Id] INT IDENTITY(1,1)	NOT NULL PRIMARY KEY,
	[Slug] NVARCHAR(255) NOT NULL,
	[TypeLink] NVARCHAR(255) NOT NULL,
	[TableId] INT NOT NULL
)
GO

INSERT INTO Links([Slug],[TypeLink],[TableId])
VALUES 
('giay-nike','category',1),
('giay-converse','category',1),
('giay-vans','category',1),
('giay-mlb','category',1),
('giay-luxury','category',1),
('dep-sieu-cap','category',1),
('giay-nike-air-force','category',1),
('giay-nike-jordan','category',1),
('giay-nike-air-max','category',1),
('giay-nike-m2k','category',1),
('giay-nike-air-uptempo','category',1),
('giay-nike-air-zoom-pegasus','category',1),
('giay-converse-1975s','category',1),
('giay-converse-cdg','category',1),
('giay-balenciaga','category',1),
('giay-alexander-mcqueen','category',1),
('giay-gucci','category',1),
('giay-rick-owens','category',1),
('giay-dior','category',1),
('giay-fila','category',1),
('giay-louis-vuitton','category',1),
('giay-xvessel','category',1),
('giay-puma','category',1),
('giay-chanel','category',1)

-- 4. Menus ----------------------------------------
If Exists(Select * From Sys.tables Where Name='Menus')
Drop Table Menus
GO
CREATE TABLE Menus 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(MAX) NOT NULL,
	[Link] NVARCHAR(MAX) NOT NULL,
	[ParentId] INT NULL DEFAULT '0',
	[Orders] INT NOT NULL,
	[MenuType] VARCHAR(155) NOT NULL,
	[Position] VARCHAR(155) NOT NULL,
	[TableId] INT NULL,
	[Created_By] INT NULL DEFAULT '1',	
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
---Thêm 1.Categorys-----------
INSERT INTO Menus([Name],[Link],[ParentId],[Orders],[MenuType],[Position],[TableId],[Created_By],[Created_At],[Updated_By],[Updated_At],[Status])
VALUES
(N'Trang chủ','#',0,1,'custom','mainmenu',NULL,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1), 
(N'Giới thiệu','gioi-thieu',0,1,'page','mainmenu',NULL,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Sản phẩm','san-pham',0,1,'custom','mainmenu',NULL,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),  
(N'Tin tức','tin-tuc',0,1,'topic','mainmenu',NULL,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1), 
(N'Giày NIKE','giay-nike',3,1,'category','mainmenu',1,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Giày CONVERSE','giay-converse',3,2,'category','mainmenu',2,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Giày Vans','giay-vans',3,3,'category','mainmenu',3,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Giày MLB','giay-mlb',3,4,'category','mainmenu',4,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Giày LUXURY','giay-luxury',3,5,'category','mainmenu',5,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Dép siêu cấp','dep-sieu-cap',3,6,'category','mainmenu',6,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Giày NIKE AIR FORCE','giay-nike-air-force',3,1,'category','mainmenu',7,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1),
(N'Liên hệ','lien-he',0,1,'custom','mainmenu',NULL,1,'2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1)

-- 5. Orderdetails --------------------------------------------------------
If Exists(Select * From Sys.tables Where Name='Orderdetails')
Drop Table Orderdetails
GO
CREATE TABLE Orderdetails 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[OrderId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Quantity] INT NOT NULL,
	[PriceBuy] FLOAT NOT NULL
) 
GO

---Thêm Orderdetails---
INSERT INTO Orderdetails([OrderId],[ProductId],[Quantity],[PriceBuy]) 
VALUES 
(1,1,2,348000),
(1,2,3,248000),
(1,3,4,448000),
(1,4,4,148000),
(2,1,2,348000),
(2,2,3,248000),
(2,3,4,448000),
(2,4,4,148000)

-- 6. Orders ------------------------------------------
If Exists(Select * From Sys.tables Where Name='Orders')
Drop Table Orders
GO
CREATE TABLE Orders 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Code] INT NOT NULL,
	[DeliveryName] NVARCHAR(255) NULL,
	[DeliveryEmail] NVARCHAR(255) NULL,
	[DeliveryPhone] NVARCHAR(255) NULL,
	[DeliveryAddress] NVARCHAR(255) NULL,
	[Note] NVARCHAR(255) NULL,
	[UserId] INT NOT NULL,
	[DateOrder] DATETIME NOT NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
) 
GO

---Thêm Orders---
INSERT INTO Orders([Code] ,[DeliveryName],[DeliveryEmail],[DeliveryPhone],[DeliveryAddress],[Note],[UserId],[DateOrder],[Updated_By],[Updated_At],[Status])
VALUES(123456,N'Nguyễn Văn An','nguyenvanan@gmail.com','0987654321',N'HCM',NULL,1,'2021-01-30 16:10:10',NULL,1,1),
(123456,N'Nguyễn Văn An','nguyenvanan@gmail.com','0987654321',N'HCM',NULL,1,'2021-01-30 16:10:10',NULL,1,1),
(123457,N'Nguyễn Văn An','nguyenvanan@gmail.com','0987654321',N'HCM',NULL,1,'2021-01-30 16:10:10',NULL,1,1),
(123458,N'Nguyễn Văn An','nguyenvanan@gmail.com','0987654321',N'HCM',NULL,1,'2021-01-30 16:10:10',NULL,1,1)

-- 7. Posts-- --------------------------------------------------------
If Exists(Select * From Sys.tables Where Name='Posts')
Drop Table Posts
GO
CREATE TABLE Posts 
(
	[Id] INT IDENTITY(1,1)	NOT NULL PRIMARY KEY,
	[TopicId] INT NULL,
	[Title] NVARCHAR(MAX) NOT NULL,
	[Slug] NVARCHAR(MAX) NOT NULL,
	[Detail] NVARCHAR(MAX) NOT NULL,
	[Img] NVARCHAR(255) NOT NULL,
	[PostType] NVARCHAR(100) NULL,
	[MetaKey] NVARCHAR(155) NULL,
	[MetaDesc] NVARCHAR(155) NULL,
	[Created_By] INT NULL DEFAULT '1',
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
 --- Thêm Trang Don -----
INSERT INTO Posts([TopicId],[Title],[Slug],[Detail],[Img],[PostType],[MetaKey],[MetaDesc],[Created_By],[Created_At],[Updated_By],[Updated_At],[Status])
VALUES(NULL,N'Giới thiệu','gioi-thieu',N'Nội dung bài viết','gioi-thieu.jpg','page',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10',1,'2021-01-30 16:10:10',1),
(NULL,N'Giới thiệu','gioi-thieu',N'Nội dung bài viết','gioi-thieu.jpg','page',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10',1,'2021-01-30 16:10:10',1),
(NULL,N'Giới thiệu','gioi-thieu',N'Nội dung bài viết','gioi-thieu.jpg','page',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10',1,'2021-01-30 16:10:10',1),
(NULL,N'Giới thiệu','gioi-thieu',N'Nội dung bài viết','gioi-thieu.jpg','page',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10',1,'2021-01-30 16:10:10',1),
(NULL,N'Giới thiệu','gioi-thieu',N'Nội dung bài viết','gioi-thieu.jpg','page',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10',1,'2021-01-30 16:10:10',1)

INSERT INTO Posts([TopicId],[Title],[Slug],[Detail],[Img],[PostType],[MetaKey],[MetaDesc],[Created_By],[Created_At],[Updated_By],[Updated_At],[Status])
VALUES(2, N'Tin tức 1','tin-tuc-1',N'Nội dung bài viết','tin-tuc-1.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 2','tin-tuc-2',N'Nội dung bài viết','tin-tuc-2.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 3','tin-tuc-3',N'Nội dung bài viết','tin-tuc-3.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 4','tin-tuc-4',N'Nội dung bài viết','tin-tuc-4.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 5','tin-tuc-5',N'Nội dung bài viết','tin-tuc-5.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 6','tin-tuc-6',N'Nội dung bài viết','tin-tuc-6.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 7','tin-tuc-7',N'Nội dung bài viết','tin-tuc-7.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 8','tin-tuc-8',N'Nội dung bài viết','tin-tuc-8.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(2, N'Tin tức 9','tin-tuc-9',N'Nội dung bài viết','tin-tuc-9.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(3, N'Dịch vụ 1','dich-vu-1',N'Nội dung bài viết','dich-vu-1.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(3, N'Dịch vụ 2','dich-vu-1',N'Nội dung bài viết','dich-vu-2.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1),
(3, N'Dịch vụ 3','dich-vu-1',N'Nội dung bài viết','dich-vu-3.jpg','post',N'Metakeyword',N'Metadesc',1,'2021-01-30 16:10:10', 1,'2021-01-30 16:10:10',1)

-- 8. Products-- --------------------------------------------------------
If Exists(Select * From Sys.tables Where Name='Products')
Drop Table Products
GO
CREATE TABLE Products 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CatId] INT NOT NULL,
	[Name] NVARCHAR(MAX) NOT NULL,
	[Slug] VARCHAR(MAX) NOT NULL,
	[Detail] TEXT NOT NULL,
	[PriceBuy] FLOAT NOT NULL,
	[Img] VARCHAR(255) NOT NULL,
	[MetaKey] NVARCHAR(155) NOT NULL,
	[MetaDesc] NVARCHAR(155) NOT NULL,
	[Created_By] INT NULL DEFAULT '1',	
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
-- THÊM SẢN PHẨM ---

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(7,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(7,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(8,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(9,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(9,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(10,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(10,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(11,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(11,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(12,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(12,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(13,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(13,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(14,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(14,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(15,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(15,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(16,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(16,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)


INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(17,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(17,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)


INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(18,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(18,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)


INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(19,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(19,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)


INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(20,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(20,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(21,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(21,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(22,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(22,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(23,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(23,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

INSERT INTO Products([CatId],[Name],[Slug],[Img],[Detail],[PriceBuy],[Metakey],[Metadesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES(24,N'Nike SB Dunk Low J-Pack Shadow','nike-sb-dunk-low-j-pack-shadow','nike-sb-dunk-low-j-pack-shadow.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N'Nike Air Force 1 G-Dragon Peaceminusone Para-Noise 2.0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0','nike-air-force-1-g-dragon-peaceminusone-para-noise-2-0.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N'Nike Air Force 1 LX Vandalized White','nike-air-force-1-lx-vandalised-white','nike-air-force-1-lx-vandalised-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N'Nike Air Force 1 Vandalized Sail Mystic Green','nike-air-force-1-vandalized-sail-mystic-green','nike-air-force-1-vandalized-sail-mystic-green.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N'Nike Air Force 1 Shadow Beige Pale Ivory','nike-air-force-1-shadow-beige-pale-ivory','nike-air-force-1-shadow-beige-pale-ivory.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N'Nike Air Force 1 Shadow White Magic Flamingo','nike-air-force-1-shadow-white-magic-flamingo','nike-air-force-1-shadow-white-magic-flamingo.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(24,N' Nike Air Force 1 Shadow Triple White','nike-air-force-1-shadow-triple-white','nike-air-force-1-shadow-triple-white.jpg',N'Chi tiết sản phẩm',269000,N'Metakey',N'Metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

--9. ProductSales-------------------------------------------
If Exists(Select * From Sys.tables Where Name='ProductSales')
Drop Table ProductSales
GO
CREATE TABLE ProductSales 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ProductId] INT NULL,
	[PriceSale] FLOAT NULL,
	[DateBegin] DATETIME NULL,
	[DateEnd] DATETIME NULL,
)
GO
--Insert ProductSales -----
INSERT INTO ProductSales(ProductId,PriceSale,DateBegin,DateEnd) VALUES
(1,250000,'2021-01-17 0:0:0','2021-01-30 0:0:0'),
(2,250000,'2021-01-17 0:0:0','2021-01-30 0:0:0'),
(3,250000,'2021-01-17 0:0:0','2021-01-30 0:0:0'),
(4,250000,'2021-01-17 0:0:0','2021-01-30 0:0:0')

--10. Sliders-------------------------------------------
If Exists(Select * From Sys.tables Where Name='Sliders')
Drop Table Sliders
GO
CREATE TABLE Sliders 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	[Link] VARCHAR(255) NOT NULL,
	[Img] VARCHAR(100) NOT NULL,
	[Position] VARCHAR(100) NOT NULL,
	[Orders] INT NULL,
	[Created_By] INT NULL DEFAULT '1',
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
---Insert Sliders-----------
INSERT INTO Sliders(Name,Link,Img,Position,Orders,Created_By,Created_At,Updated_By,Updated_At,[Status]) 
VALUES(N'Hình ảnh 1','#','slider_1.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1),
(N'Hình ảnh 2','#','slider_2.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1),
(N'Hình ảnh 3','#','slider_3.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1),
(N'Hình ảnh 4','#','slider_4.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1),
(N'Hình ảnh 5','#','slider_5.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1),
(N'Hình ảnh 6','#','slider_6.jpg','slideshow',1,1,'2021-01-17 16:10:10', 1,'2021-01-17 16:10:10',1)


-- 11. Topics ----------------------------------------
If Exists(Select * From Sys.tables Where Name='Topics')
Drop Table Topics
GO
CREATE TABLE Topics 
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	[Slug] VARCHAR(255) NOT NULL,
	[ParentId] INT NOT NULL DEFAULT '0',
	[Orders] INT NULL,
	[MetaKey] NVARCHAR(155) NULL,
	[MetaDesc] NVARCHAR(155) NULL,
	[Created_By] INT NULL DEFAULT '1',
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO
INSERT INTO Topics([Name],[Slug],[ParentId],[Orders],[MetaKey],[MetaDesc],[Created_At],[Created_By],[Updated_At],[Updated_By],[Status])
VALUES 
(N'Tin tức','tin-tuc',0,1,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1),
(N'Tuyển dụng','tuyen-dung',0,2,N'metakey',N'metadesc','2021-01-16 13:10:10', 1,'2021-01-16 13:10:10',1,1)

-- 12. Users-- --------------------------------------------------------
If Exists(Select * From Sys.tables Where Name='Users')
Drop Table Users
GO
CREATE TABLE Users 
(
	[Id] INT IDENTITY(1,1)	NOT NULL PRIMARY KEY,
	[FullName] NVARCHAR(255) NOT NULL,
	[UserName] VARCHAR(225) NOT NULL,
	[Password] VARCHAR(40) NOT NULL,
	[Email] VARCHAR(255) NOT NULL,
	[Phone] VARCHAR(15) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
	[Img] VARCHAR(255) NOT NULL,
	[Gender] INT NULL,
	[Roles] INT NOT NULL,
	[Created_By] INT NULL DEFAULT '1',
	[Created_At] DATETIME NULL,
	[Updated_By] INT NULL DEFAULT '1',
	[Updated_At] DATETIME NULL,
	[Status] INT NULL DEFAULT '1'
)
GO

--- Insert User -------------
INSERT INTO Users([FullName],[UserName],[Password],[Email],[Phone],[Address],[Img],[Gender],[Roles],[Created_By],[Created_At],[Updated_By],[Updated_At],[Status])
VALUES(N'Quản trị','admin','123456','admin@gmail.com','0987654321','HCM','admin.png',1,1,1,'2021-01-17 16:10:10', 1,'2021-01-16 16:10:10',1),
(N'Khách hàng','khachhang','123456','khachhang@gmail.com','0987654321','HCM','khachhang.png',1,1,0,'2021-01-17 16:10:10', 1,'2021-01-16 16:10:10',1)

