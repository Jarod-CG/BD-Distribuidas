USE [biblioteca_DB]
GO

/****** Object:  Table [dbo].[Autor]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Autor](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AutorXLibro]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AutorXLibro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAutor] [int] NOT NULL,
	[idLibro] [int] NOT NULL,
 CONSTRAINT [PK_AutorXLibro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Bibliotecario]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bibliotecario](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bibliotecario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Libro]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Libro](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[prestado] [bit] NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Prestamo]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prestamo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idLibro] [int] NOT NULL,
	[idPrestatario] [int] NOT NULL,
	[idBibliotecario] [int] NOT NULL,
	[idTipoPrestatario] [int] NOT NULL,
	[activo] [bit] NOT NULL,
	[fechaPrestamo] [date] NOT NULL,
	[fechaVencimiento] [date] NOT NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TipoPrestatario]    Script Date: 29/4/2021 18:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoPrestatario](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoPrestatario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AutorXLibro]  WITH CHECK ADD  CONSTRAINT [FK_AutorXLibro_Autor] FOREIGN KEY([idAutor])
REFERENCES [dbo].[Autor] ([id])
GO

ALTER TABLE [dbo].[AutorXLibro] CHECK CONSTRAINT [FK_AutorXLibro_Autor]
GO

ALTER TABLE [dbo].[AutorXLibro]  WITH CHECK ADD  CONSTRAINT [FK_AutorXLibro_Libro] FOREIGN KEY([idLibro])
REFERENCES [dbo].[Libro] ([id])
GO

ALTER TABLE [dbo].[AutorXLibro] CHECK CONSTRAINT [FK_AutorXLibro_Libro]
GO

ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Bibliotecario] FOREIGN KEY([idBibliotecario])
REFERENCES [dbo].[Bibliotecario] ([id])
GO

ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Bibliotecario]
GO

ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Libro] FOREIGN KEY([idLibro])
REFERENCES [dbo].[Libro] ([id])
GO

ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Libro]
GO

ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_TipoPrestatario] FOREIGN KEY([idTipoPrestatario])
REFERENCES [dbo].[TipoPrestatario] ([id])
GO

ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_TipoPrestatario]
GO


