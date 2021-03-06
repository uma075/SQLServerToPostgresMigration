USE [MigrationDB]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 4/19/2021 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[ProfileID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](30) NULL,
	[SerialNumber] [nvarchar](8) NULL,
	[TotalTime] [decimal](6, 2) NOT NULL,
	[ErrorMessage] [nvarchar](255) NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Profile] ADD  DEFAULT (newid()) FOR [ProfileID]
GO
