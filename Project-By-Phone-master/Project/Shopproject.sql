USE [ShopProjectFinal1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[isVerified] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
	[AccountStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[CartQuantity] [int] NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[CartStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] NOT NULL,
	[OrderDetailTotalPrice] [float] NOT NULL,
	[OrderDetailQuantity] [int] NOT NULL,
	[OrderDetailStatus] [nvarchar](max) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderQuantity] [float] NOT NULL,
	[ShipperDate] [datetime2](7) NOT NULL,
	[OrderNote] [nvarchar](max) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[ProductDetailDescription] [nvarchar](max) NOT NULL,
	[ProductChipset] [nvarchar](max) NOT NULL,
	[ProductStorageInternal] [nvarchar](max) NOT NULL,
	[ProductStorageExternal] [nvarchar](max) NOT NULL,
	[ProductBatteryCapacity] [int] NOT NULL,
	[ProductSelfieCamera] [nvarchar](max) NOT NULL,
	[ProductMainCamera] [nvarchar](max) NOT NULL,
	[ProductStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/7/2023 4:39:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[UserStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231029054447_InitialMigration', N'5.0.17')
GO
INSERT [dbo].[Accounts] ([AccountID], [UserID], [Email], [Password], [isVerified], [Admin], [AccountStatus]) VALUES (1, 1, N'leanhtuyenvta@gmail.com', N'Abc123', 1, 1, N'1')
GO
INSERT [dbo].[Carts] ([CartId], [ProductID], [UserID], [ProductName], [CartQuantity], [ProductImage], [Price], [CartStatus]) VALUES (1, 6, 1, N'Samsung Galaxy Z Flip5', 1, N'B_ZFlip5-removebg-preview.png', 1120, N'0')
GO
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (1, N'iPhone', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (2, N'SamSung', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (3, N'Nokia', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (4, N'Vivo', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (5, N'Oppo', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (6, N'Xiaomi', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (7, N'Realme', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (8, N'Masstel', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (9, N'Itel', N'1')
INSERT [dbo].[Categorys] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (10, N'Mobell', N'1')
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderDetailTotalPrice], [OrderDetailQuantity], [OrderDetailStatus], [OrderID], [ProductID], [UserID]) VALUES (1, 1120, 1, N'1', 1, 6, 1)
GO
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [OrderQuantity], [ShipperDate], [OrderNote], [OrderStatus]) VALUES (1, 1, CAST(N'2023-11-06T17:53:16.6912448' AS DateTime2), 1, CAST(N'2023-11-11T17:53:16.6913032' AS DateTime2), N'Waiting for confirm', N'1')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (1, N'iPhone 15 Pro Max', N'A_Iphone15Promax-removebg-preview.png', 1349, 1, 150, N'iPhone 15 Pro Max not only has an upgraded look but also increases the holding experience for users with a thin, light but no less sturdy design. For the first time in iPhone history, Titanium material - the metal used for spacecraft, is delicately machined and crafted on Apple products.
In addition, the iPhone 15 Pro Max also has the thinnest bezel ever on an iPhone, a Ceramic Shield layer that protects the front and edges of the device with a new rounded edge, providing a comfortable, firm feeling when holding the device use. The new action button offers greater flexibility and convenience than traditional switches, allowing users to perform many different functions with just one press of the button. Tasks that users can perform such as: Silent mode, translation, recording, opening Shortcuts applications or turning on Camera.
This is a highly appreciated feature of Apple as it helps optimize the user experience, for example, being able to easily access the Camera quickly instead of having to turn on the screen and then open the camera as usual.', N'Apple A17 Pro 6', N'256GB', N'8GB', 4422, N'12MP', N'48 MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (2, N'iPhone 15 Pro', N'A_Iphone15Pro-removebg-preview.png', 1250, 1, 100, N'Apple today announced the iPhone 15 with improved performance, the Dynamic Island seen on the iPhone 14 Pro, a range of new colors, and a USB-C port that replaces the Lightning connector. iPhone 15 remains the same price as last year, starting at 799 USD.

Like last year, the iPhone 15 and iPhone 15 Plus have 6.1-inch and 6.7-inch screens. However, Apple says maximum brightness can now go up to 2000 nits. You can pre-order the iPhone 15 this Friday, and the device will launch on September 22.

Apple''s color finishes are now applied across the glass, creating stunning new colorful finishes. The iPhone 15 comes in pink, green yellow, blue, and black.', N'Apple A17 Pro 6', N'128GB', N'8GB', 3274, N'12MP', N'48MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (3, N'iPhone 15 Plus', N'A_Iphone15Plus-removebg-preview.png', 1150, 1, 200, N'iPhone 15 Plus is highly appreciated for its 6.7-inch Dynamic Island screen with impressive tinted back glass, powerful A16 Bionic chip and USB-C charging port for quick full charging. In addition, the Plus version of the iPhone 15 series also has 5 elegant pastel color versions suitable for many customers: pink, yellow, green, blue, black. See more useful information about the iPhone 15 Plus below!
iPhone 15 Plus is equipped with a Dynamic screen with Super Retina XDR technology with a size of 6.7 inches, a resolution of 2796x1290 pixels and a pixel density of 460 ppi. This screen supports HDR technology, helping to reproduce colors and brightness more realistically.
In addition, iPhone 15 Plus is also equipped with modern TrueTone technology, which helps adjust the color of the screen to suit the surrounding environment. It can be seen that the iPhone 15 Plus screen provides an outstanding experience of watching movies, playing games, surfing the web... with sharp, vivid images and realistic colors.
iPhone 15 Plus is equipped with an advanced Bionic A16 chip with a 6-core CPU, which helps improve overall performance, allowing for easy handling of complex tasks and at the same time providing impressive battery life. These include 2 performance cores that consume 20% less power and 4 power-saving cores, along with a 5-core GPU and a 16-core Neural Engine.', N'Apple A16 Bionic 6', N'128GB', N'6GB', 4383, N'12MP', N'48MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (4, N'Samsung Galaxy S23 FE 5G', N'B_GalaxyS23FE-removebg-preview.png', 1000, 2, 120, N'Feel free to choose from 4 trendy colors inspired by nature including Mint Green, Graphite Gray, Cream White and Purple. Each color version combines with a high-quality metal frame, creating a youthful elegance that attracts all eyes.
Capture precious moments with your Idol with a professional camera cluster, turning every frame into a masterpiece whether night or day. You will feel like you are close to your Idol thanks to the 50MP high resolution sensor, every photo taken is extremely detailed and sharp.
Don''t let the fear of low-light photos stop you from capturing beautiful moments at night. All footage is guaranteed to be smooth and stable even in the dark with the Idol Camera
Reveal your unique personality in each "Bung Quat Fan" frame captured by the Front Camera. Perfect sharpness at every viewing angle, giving an unforgettable impression.', N'Exynos 2200 8 core', N'128GB', N'8GB', 4500, N'10MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (5, N'Samsung Galaxy S23 Ultra 5G ', N'B_S23ultra-removebg-preview.png', 1250, 2, 160, N'Samsung Galaxy S23 Ultra 5G 256GB is Samsung''s most advanced smartphone, possessing an unbelievable configuration with a huge chip optimized specifically for the Galaxy line by Qualcomm and a camera of up to 200 MP, worthy of being the expected Android flagship. most in 2023.
In terms of design, the Samsung Galaxy S23 Ultra will continue to inherit the luxurious design from the previous generation, still with a metal frame, glass back and slightly curved shape on the sides and screen.
However, this curved style will tend to be a bit flat compared to the S22 Ultra, this gives you a firmer grip experience, but also brings a comfortable feeling for continuous use for a long time. long.
Regarding colors, this year Samsung has also released color versions such as: Purple, cream, blue and black. In general, these are extremely luxurious and elegant colors, suitable for active, strong young people and especially business customers because of their classy and elegant appearance.
Currently in my hand is Samsung''s signature blue version, this color both brings fresh youthfulness and also carries a dark color scheme to maintain a mysterious and enchanting look.', N'Snapdragon 8 Gen 2 for Galaxy', N'256GB', N'8GB', 5000, N'12MP', N'200MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (6, N'Samsung Galaxy Z Flip5', N'B_ZFlip5-removebg-preview.png', 1120, 2, 159, N'Samsung Galaxy Z Flip5 was officially launched on July 26. This is a smartphone with a unique design with a folding screen, equipped with a high-end Snapdragon 8 Gen 2 for Galaxy processor, RAM 8 GB, 256 GB internal memory, 12 MP dual camera and 3700 mAh battery.
Samsung Galaxy Z Flip5 continues to pursue the unique folding style that has become the trademark of the "Z Flip" product line. With its compact design and chalk box shape when folded, this phone is easy to store in your pocket or bag.
Samsung Galaxy Z Flip5 is made from high-quality materials such as metal and glass. The outer frame is made of sturdy Armor Aluminum, bringing sturdiness and elegance to the device. The back of the phone is covered with tempered glass, which helps protect the device from unwanted scratches and gives it a sleek, sophisticated look.', N'Snapdragon 8 Gen 2 for Galaxy ', N'256GB', N'8GB', 3700, N'10MP', N'12MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (7, N'OPPO Reno7 Z 5G ', N'C_Reno7-removebg-preview.png', 450, 5, 160, N'OPPO has launched the Reno7 Z 5G model with exclusive OPPO Glow design, a camera with professional DSLR-like effects and dual light borders, the device has a powerful configuration and achieved an A-rated certification for smoothness.
The OPPO Reno7 Z 5G phone has a trendy flat, square beveled frame, making the device look modern and dynamic. The four corners are softly curved to create a comfortable and light feeling (only 173 g). With a monolithic design, the overall machine becomes extremely sturdy, not only beautiful but also increases durability.
The most impressive point on the Reno7 Z is the exclusive OPPO Glow design, providing a delicate back that can change color when changing viewing angles. The device has 2 color versions: luxurious, sophisticated Infinity Black and outstanding Rainbow Silver. Regardless of which color version you choose, the back of the device is coated with a rough finish to help limit fingerprints and sweat, so the phone will always maintain its "luxurious" look at all times.', N'Snapdragon 695 5G', N'128GB', N'8GB', 4500, N'16MP', N'64MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (8, N'OPPO Find N2 Flip 5G', N'C_FineN2Flip-removebg-preview.png', 1223, 5, 156, N'On the current market, most Flip phones have not yet solved the problem of wrinkles appearing on the folding screen. However, coming to OPPO Find N2 Flip, you will get a completely new experience - FOLDING WITHOUT FOLDING. All thanks to the high-end hinge with 10-year durability made from specialized materials in the aviation industry. This is the breakthrough result of OPPO''s 5-year research and development process for folding phones.
In addition, OPPO Find N2 Flip will have two screens with different sizes and configuration parameters. Accordingly, the secondary screen is spacious 3.26 inches, AMOLED panel, 60Hz refresh rate, and 720x382 resolution. Thanks to that, you can view notifications more seamlessly, intuitively and sharply. At the same time, shortcuts on this screen are integrated to support quick customization and save time.
On each internal and external screen of the Find N2 Flip smartphone, OPPO is equipped with a selfie camera with 32MP resolution. So, whether the device is folded or opened, users can take selfies or make video calls.', N'MediaTek Dimensity 9000+ 8 core', N'256GB', N'8GB', 4300, N'50MP', N'32MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (9, N'OPPO Reno10', N'C_Reno10-removebg-preview.png', 956, 5, 100, N'As scheduled, OPPO phone company continues to launch the OPPO Reno10 5G 128GB product in the Vietnamese market in 2023. The phone has a beautiful design, smooth performance and handles all tasks well. , comes with a trio of cameras that deliver beautiful photos.
Bringing users a modern, youthful design, when the Reno10 5G is made of a monolithic block, it will have an extremely eye-catching and luxurious gradient color scheme. From there, it gives you a more premium and luxurious look, helping you confidently use it anywhere and always receive everyone''s attention when using Reno 10 5G in your hand.
The mole design will be brought by OPPO to the screen of the Reno10 5G with a size of 6.7 inches. This gives the device a large display space to fully enjoy all types of content, from That helps you relax after a tiring day of work.', N'Snapdragon 778G 5G', N'256GB', N'12GB', 4600, N'32MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (10, N'Xiaomi 12 5G ', N'D_12-removebg-preview.png', 465, 6, 123, N'Xiaomi phones are gradually asserting their position in the flagship segment by launching the Xiaomi 12 with an impressive set of parameters, the device has a neat design, strong performance, detailed display screen and capabilities. Take sharp photos thanks to lenses from Sony.
The sturdy metal frame and high-quality glass back are rough-finished, providing the ability to limit fingerprints, as well as providing a very comfortable and sturdy grip.
Xiaomi 12 goes against the current square design trend to give users the most comfortable holding experience possible, as the two sides are softly curved by the company.
The device gives me a very smooth feeling when used, the hand feeling almost does not appear even when used continuously for a long time, the gesture of swiping the screen from the outside edge to the inside becomes quick and easy. Smoother thanks to the curved screen edges.', N'Snapdragon 8 Gen 1', N'256GB', N'8GB', 4500, N'32MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (11, N'Xiaomi 13 Lite 5G', N'D_13Lite-removebg-preview.png', 512, 6, 160, N'Xiaomi has just launched the Xiaomi 13 Lite 5G phone model, continuing the success of the Xiaomi 13 Flagship line. Considered a mid-range product line, Xiaomi 13 Lite 5G has many outstanding features such as using Qualcomm''s new chipset and system Remarkable camera in the segment.
As the first phone model equipped with Snapdragon 7 Gen 1* chip, Xiaomi 13 Lite has almost attracted attention from a large number of technology-loving users and especially customers interested in new models. mid-range smartphone.
Snapdragon 7 Gen 1 can be considered a very new name, in the Vietnamese market, there were almost no genuine phone models equipped with this processor before Xiaomi 13 Lite launched.
Regarding parameters, as mentioned above, Xiaomi 13 Lite will be equipped with Snapdragon 7 Gen 1 chip manufactured by Qualcomm. The chip possesses 8 processing cores, of which the most powerful core reaches a maximum clock speed of about 2.4 GHz.', N'Snapdragon 7 Gen 1 8 core', N'256GB', N'8GB', 4500, N'32MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (12, N'Xiaomi 13T 5G', N'D_13T-removebg-preview.png', 1000, 6, 250, N'Xiaomi 13T 5G is a unique device launched in the Vietnamese market in September 2023. This product is attracting great attention from the user community, especially those who love photography and are looking for a unique experience with the camera thanks to the partnership with Leica, one of the camera manufacturing brands. top photo.
The back of Xiaomi 13T has two versions for you to choose from: leather and glass. The leather back brings luxury and warmth, while the glass back is a modern and elegant choice.
Whether it''s leather or glass, the Xiaomi 13T''s back design is flat and slightly curved at the edges, making it more comfortable to hold than ever. The consideration in curving the edges not only creates an aesthetic highlight but also brings a sense of safety when holding the product.', N'MediaTek Dimensity 8200-Ultra', N'256GB', N'8GB', 5000, N'20MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (13, N'Vivo V27e', N'E_V27e-removebg-preview.png', 864, 4, 100, N'vivo V27e is one of vivo''s outstanding mid-range phones in 2023. With a unique design and impressive photography and video recording capabilities, the device has brought vivo a lot of pride when launched in Vietnam. Vietnamese market, promising to bring a great experience to users.
The first impression when I held the vivo V27e in my hands was about the back design, made with sharp Confucius feather patterns on a lavender purple background, helping the device exude a gentle and flexible beauty.
As a creative breakthrough, vivo V27e has applied a unique technology to the feather pattern on the back of the phone. According to information from the media outlet, they have the ability to change color when exposed to light, and this is thanks to the fact that vivo has applied a special layer of photosensitizer.', N'MediaTek Dimensity 8200-Ultra', N'256GB', N'8GB', 5000, N'20MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (14, N'Vivo Y02s 64GB', N'E_Y02s_-_Copy-removebg-preview.png', 150, 4, 60, N'The vivo Y Series collection continues to be called vivo Y02s (3GB/64GB), with the goal of bringing many attractive features to low-cost phones, the product promises to bring users experiences beyond their expectations. wait.
vivo Y02s follows the design trend created by higher-end smartphones. The device has a 2.5D curved edge and a square frame, both exuding modern beauty and a good grip.
vivo Y02s is a product in the low-cost segment but has quite good display quality. According to reviews, the smartphone has a 6.51-inch Halo FullView screen, HD+ resolution, delivering vibrant colors in each frame. The device''s IPS LCD screen also allows automatic brightness adjustment based on surrounding conditions and filters out blue light that is harmful to the eyes.', N'MediaTek Helio P35', N'64GB', N'3GB', 5000, N'20MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (15, N'Vivo Y35', N'E_Y35_-_Copy-removebg-preview.png', 163, 4, 65, N'vivo Y35 is a notable mid-range phone launched in October 2022. The device stands out thanks to its beautiful design, fast charging ability and stable configuration in the segment, in addition to a high-resolution camera. Up to 50 MP is also a plus point for this device.
The phone is shaped in a square style similar to the vivo Y series phones previously launched in 2022. This is considered a popular design and has been quite popular in recent years, it helps The phone looks more luxurious, trendy and feels more expensive.
The back of vivo Y35 has a unique image changing effect every time we tilt the device through many angles. It feels like the device is illuminated by many light sources, creating many checkered squares that look very interesting and eye-catching.', N'Snapdragon 680', N'64GB', N'4GB', 5000, N'20MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (16, N'Realme 10 ', N'F_10_-_Copy-removebg-preview.png', 425, 7, 100, N'realme 10 is the next new product that realme possesses a luxurious design and powerful configuration. Specifically, the realme 10 phone is equipped with a 6.4-inch screen with Super AMOLED panel, 90Hz refresh rate, providing vivid display and smooth movement. The phone configuration is also impressive with Helio G99 chip, large RAM memory and 5000mAh battery for long-term use.
realme 10 is a name that many technology enthusiasts are interested in and waiting for. Possessing an extremely high-quality screen along with a camera with super high resolution, realme 10 will definitely help you satisfy your passion for photography as well as comfortably experience extreme entertainment.
realme 10 retains the same youthful, dynamic and stylish design as the previous version. With a reflective design and effects, it brings a premium and attractive look to users. Besides, the ability to limit fingerprints and sweat helps you have a better holding experience.', N'MediaTek Helio G99', N'256GB', N'8GB', 5000, N'20MP', N'50MP', N'1')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductImage], [ProductPrice], [CategoryID], [ProductQuantity], [ProductDetailDescription], [ProductChipset], [ProductStorageInternal], [ProductStorageExternal], [ProductBatteryCapacity], [ProductSelfieCamera], [ProductMainCamera], [ProductStatus]) VALUES (17, N'Realme C53', N'F_C53-removebg-preview.png', 286, 7, 100, N'realme C53 - a cheap phone with beautiful design, large screen and sharp camera, is truly a reasonable choice for users who are wondering to buy a device in the low-cost segment.
realme C53 is designed with a square shape and is made mainly from plastic, providing a solid feeling when holding. With a compact water drop screen, this realme phone can provide users with a wider screen experience while still maintaining a compact and fashionable size.
realme C53 has a 6.74 inch IPS LCD screen, providing a large display space for users. HD+ resolution for clear images and vivid colors. With a 90 Hz refresh rate, users can experience a smoother and more responsive experience when scrolling and playing games.', N'Unisoc Tiger T612', N'128GB', N'6GB', 5000, N'20MP', N'50MP', N'1')
GO
INSERT [dbo].[Users] ([UserID], [FullName], [Phone], [Address], [UserStatus]) VALUES (1, N'Le Anh Tuyen', N'0856020525', N'172,duong3/2,phuong hung loi, quan ninh kieu', N'1')
INSERT [dbo].[Users] ([UserID], [FullName], [Phone], [Address], [UserStatus]) VALUES (2, N'Le Anh Tuyen', N'1111111111', N'12121212121212121212e', N'1')
GO
