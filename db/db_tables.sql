USE [Emlak_Sitesi]
GO

/****** Object:  Table [dbo].[Admin]    Script Date: 4.02.2022 22:45:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Admin](
	[name] [varchar](50) NULL,
	[password] [varchar](100) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Agents]    Script Date: 4.02.2022 22:45:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Agents](
	[agent_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[agent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Category]    Script Date: 4.02.2022 22:45:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Category](
	[category_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Properties]    Script Date: 4.02.2022 22:45:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Properties](
	[property_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [tinyint] NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](max) NULL,
	[square_meter] [int] NULL,
	[floor] [tinyint] NULL,
	[number_of_floor] [tinyint] NULL,
	[bedroom] [tinyint] NULL,
	[bathroom] [tinyint] NULL,
	[price] [int] NULL,
	[balcony] [bit] NULL,
	[garden] [bit] NULL,
	[garage] [bit] NULL,
	[air_condition] [bit] NULL,
	[onSale] [tinyint] NULL,
	[date] [smalldatetime] NULL,
	[agent_id] [tinyint] NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [DF_Properties_balcony]  DEFAULT ((0)) FOR [balcony]
GO

ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [DF_Properties_garden]  DEFAULT ((0)) FOR [garden]
GO

ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [DF_Properties_garage]  DEFAULT ((0)) FOR [garage]
GO

ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [DF_Properties_air_condition]  DEFAULT ((0)) FOR [air_condition]
GO

ALTER TABLE [dbo].[Properties] ADD  CONSTRAINT [DF_Properties_date]  DEFAULT (getdate()) FOR [date]
GO

ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Agents] FOREIGN KEY([agent_id])
REFERENCES [dbo].[Agents] ([agent_id])
GO

ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Agents]
GO

ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO

ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Category]
GO

