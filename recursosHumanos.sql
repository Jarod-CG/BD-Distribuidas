--se instancia para una BD cartago y otra San jose
--en datos dummy se cambia la sede, y el nombre de los profes
USE [recursosHumanos_SJ_DB]
GO

/****** Object:  Table [dbo].[Campus]    Script Date: 29/4/2021 20:14:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Campus](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Escuela]    Script Date: 29/4/2021 20:14:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Escuela](
	[id] [int] NOT NULL,
	[idCampus] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Escuela] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Profesor]    Script Date: 29/4/2021 20:14:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Profesor](
	[id] [int] NOT NULL,
	[idEscuela] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido] [nvarchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[correo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Escuela]  WITH CHECK ADD  CONSTRAINT [FK_Escuela_Campus] FOREIGN KEY([idCampus])
REFERENCES [dbo].[Campus] ([id])
GO

ALTER TABLE [dbo].[Escuela] CHECK CONSTRAINT [FK_Escuela_Campus]
GO

ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Escuela] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuela] ([id])
GO

ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Escuela]
GO


