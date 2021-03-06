USE [master]
GO
/****** Object:  Database [Universidad]    Script Date: 19/03/2018 10:38:43 ******/
CREATE DATABASE [Universidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Universidad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Universidad.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Universidad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Universidad_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Universidad] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universidad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universidad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universidad] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universidad] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Universidad] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Universidad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universidad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universidad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universidad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universidad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universidad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universidad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universidad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universidad] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Universidad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universidad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universidad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universidad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universidad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universidad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universidad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universidad] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universidad] SET  MULTI_USER 
GO
ALTER DATABASE [Universidad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universidad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universidad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universidad] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Universidad]
GO
/****** Object:  Table [dbo].[ALUMNO]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO](
	[IdAlumno] [nvarchar](7) NOT NULL,
	[DNI] [nvarchar](9) NOT NULL,
 CONSTRAINT [ALUMNO$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ALUMNO_ASIGNATURA]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO_ASIGNATURA](
	[IdAlumno] [nvarchar](7) NOT NULL,
	[IdAsignatura] [nvarchar](6) NOT NULL,
	[NumeroMatricula] [smallint] NULL DEFAULT ((0)),
 CONSTRAINT [ALUMNO_ASIGNATURA$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC,
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASIGNATURA]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASIGNATURA](
	[IdAsignatura] [nvarchar](6) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Creditos] [real] NULL DEFAULT ((0)),
	[Cuatrimestre] [nvarchar](1) NULL,
	[CosteBasico] [real] NULL DEFAULT ((0)),
	[IdProfesor] [nvarchar](4) NULL,
	[IdTitulacion] [nvarchar](6) NULL,
	[Curso] [nvarchar](1) NULL,
 CONSTRAINT [ASIGNATURA$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[DNI] [nvarchar](9) NOT NULL,
	[Nombre] [nvarchar](25) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Ciudad] [nvarchar](25) NULL,
	[DireccionCalle] [nvarchar](50) NULL,
	[DireccionNum] [nvarchar](3) NULL,
	[Telefono] [nvarchar](9) NULL,
	[FechaNacimiento] [datetime2](0) NULL,
	[Varon] [nvarchar](1) NULL,
 CONSTRAINT [PERSONA$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROFESOR]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESOR](
	[IdProfesor] [nvarchar](4) NOT NULL,
	[DNI] [nvarchar](9) NOT NULL,
 CONSTRAINT [PROFESOR$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TITULACION]    Script Date: 19/03/2018 10:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TITULACION](
	[IdTitulacion] [nvarchar](6) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
 CONSTRAINT [TITULACION$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[IdTitulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A121212', N'16161616A')
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A131313', N'17171717A')
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A020202', N'18181818A')
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A030303', N'20202020A')
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A010101', N'21212121A')
INSERT [dbo].[ALUMNO] ([IdAlumno], [DNI]) VALUES (N'A040404', N'26262626A')
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A010101', N'150212', 1)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A020202', N'130113', 1)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A020202', N'150212', 2)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A030303', N'130113', 3)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A030303', N'130122', 2)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A030303', N'150212', 1)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A040404', N'130122', 1)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A121212', N'000115', 1)
INSERT [dbo].[ALUMNO_ASIGNATURA] ([IdAlumno], [IdAsignatura], [NumeroMatricula]) VALUES (N'A131313', N'160002', 4)
INSERT [dbo].[ASIGNATURA] ([IdAsignatura], [Nombre], [Creditos], [Cuatrimestre], [CosteBasico], [IdProfesor], [IdTitulacion], [Curso]) VALUES (N'000115', N'Seguridad Vial', 4.5, N'1', 30, N'P204', NULL, NULL)
INSERT [dbo].[ASIGNATURA] ([IdAsignatura], [Nombre], [Creditos], [Cuatrimestre], [CosteBasico], [IdProfesor], [IdTitulacion], [Curso]) VALUES (N'130113', N'Programación I', 9, N'1', 60, N'P101', N'130110', N'1')
INSERT [dbo].[ASIGNATURA] ([IdAsignatura], [Nombre], [Creditos], [Cuatrimestre], [CosteBasico], [IdProfesor], [IdTitulacion], [Curso]) VALUES (N'130122', N'Análisis II', 9, N'2', 60, N'P203', N'130110', N'2')
INSERT [dbo].[ASIGNATURA] ([IdAsignatura], [Nombre], [Creditos], [Cuatrimestre], [CosteBasico], [IdProfesor], [IdTitulacion], [Curso]) VALUES (N'150212', N'Química Física', 4.5, N'2', 70, N'P304', N'150210', N'1')
INSERT [dbo].[ASIGNATURA] ([IdAsignatura], [Nombre], [Creditos], [Cuatrimestre], [CosteBasico], [IdProfesor], [IdTitulacion], [Curso]) VALUES (N'160002', N'Contabilidad', 6, N'1', 70, N'P117', N'160000', N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'16161616A', N'Luis', N'Ramírez', N'Haro', N'Pez', N'34', N'941111111', CAST(N'1969-01-01 00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'17171717A', N'Laura', N'Beltrán', N'Madrid', N'Gran Vía', N'23', N'912121212', CAST(N'1974-08-08 00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'18181818A', N'Pepe', N'Pérez', N'Madrid', N'Percebe', N'13', N'913131313', CAST(N'1980-02-02 00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'19191919A', N'Juan', N'Sánchez', N'Bilbao', N'Melancolía', N'7', N'944141414', CAST(N'1966-03-03 00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'20202020A', N'Luis', N'Jiménez', N'Nájera', N'Cigüeña', N'15', N'941151515', CAST(N'1979-03-03 00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'21212121A', N'Rosa', N'García', N'Haro', N'Alegría', N'16', N'941161616', CAST(N'1978-04-04 00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'23232323A', N'Jorge', N'Sáenz', N'Logroño', N'Luis Ulloa', N'17', N'941171717', CAST(N'1978-09-09 00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'24242424A', N'María', N'Gutiérrez', N'Logroño', N'Avda. de la Paz', N'18', N'941181818', CAST(N'1964-10-10 00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'25252525A', N'Rosario', N'Díaz', N'Logroño', N'Percebe', N'19', N'941191919', CAST(N'1971-11-11 00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[PERSONA] ([DNI], [Nombre], [Apellido], [Ciudad], [DireccionCalle], [DireccionNum], [Telefono], [FechaNacimiento], [Varon]) VALUES (N'26262626A', N'Elena', N'González', N'Logroño', N'Percebe', N'20', N'941202020', CAST(N'1975-05-05 00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[PROFESOR] ([IdProfesor], [DNI]) VALUES (N'P101', N'19191919A')
INSERT [dbo].[PROFESOR] ([IdProfesor], [DNI]) VALUES (N'P203', N'23232323A')
INSERT [dbo].[PROFESOR] ([IdProfesor], [DNI]) VALUES (N'P304', N'24242424A')
INSERT [dbo].[PROFESOR] ([IdProfesor], [DNI]) VALUES (N'P117', N'25252525A')
INSERT [dbo].[PROFESOR] ([IdProfesor], [DNI]) VALUES (N'P204', N'26262626A')
INSERT [dbo].[TITULACION] ([IdTitulacion], [Nombre]) VALUES (N'160000', N'Empresariales')
INSERT [dbo].[TITULACION] ([IdTitulacion], [Nombre]) VALUES (N'130110', N'Matemáticas')
INSERT [dbo].[TITULACION] ([IdTitulacion], [Nombre]) VALUES (N'150210', N'Químicas')
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO$DNI]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [ALUMNO$DNI] ON [dbo].[ALUMNO]
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO$IdAlumno]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ALUMNO$IdAlumno] ON [dbo].[ALUMNO]
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO$PERSONAALUMNO]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [ALUMNO$PERSONAALUMNO] ON [dbo].[ALUMNO]
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA] ON [dbo].[ALUMNO_ASIGNATURA]
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA] ON [dbo].[ALUMNO_ASIGNATURA]
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO_ASIGNATURA$IdAlumno]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ALUMNO_ASIGNATURA$IdAlumno] ON [dbo].[ALUMNO_ASIGNATURA]
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ALUMNO_ASIGNATURA$IdAsignatura]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ALUMNO_ASIGNATURA$IdAsignatura] ON [dbo].[ALUMNO_ASIGNATURA]
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ASIGNATURA$IdAsignatura]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ASIGNATURA$IdAsignatura] ON [dbo].[ASIGNATURA]
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ASIGNATURA$IdProfesor]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ASIGNATURA$IdProfesor] ON [dbo].[ASIGNATURA]
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ASIGNATURA$IdTitulacion]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ASIGNATURA$IdTitulacion] ON [dbo].[ASIGNATURA]
(
	[IdTitulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ASIGNATURA$PROFESORASIGNARURA]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ASIGNATURA$PROFESORASIGNARURA] ON [dbo].[ASIGNATURA]
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ASIGNATURA$TITULACIONASIGNARURA]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [ASIGNATURA$TITULACIONASIGNARURA] ON [dbo].[ASIGNATURA]
(
	[IdTitulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PROFESOR$DNI]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [PROFESOR$DNI] ON [dbo].[PROFESOR]
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PROFESOR$IdProfesor]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [PROFESOR$IdProfesor] ON [dbo].[PROFESOR]
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PROFESOR$PERSONAPROFESOR]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [PROFESOR$PERSONAPROFESOR] ON [dbo].[PROFESOR]
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TITULACION$IdTitulacion]    Script Date: 19/03/2018 10:38:43 ******/
CREATE NONCLUSTERED INDEX [TITULACION$IdTitulacion] ON [dbo].[TITULACION]
(
	[IdTitulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TITULACION$Nombre]    Script Date: 19/03/2018 10:38:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TITULACION$Nombre] ON [dbo].[TITULACION]
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ALUMNO]  WITH NOCHECK ADD  CONSTRAINT [ALUMNO$PERSONAALUMNO] FOREIGN KEY([DNI])
REFERENCES [dbo].[PERSONA] ([DNI])
GO
ALTER TABLE [dbo].[ALUMNO] CHECK CONSTRAINT [ALUMNO$PERSONAALUMNO]
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[ALUMNO] ([IdAlumno])
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA] CHECK CONSTRAINT [ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA]
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA] FOREIGN KEY([IdAsignatura])
REFERENCES [dbo].[ASIGNATURA] ([IdAsignatura])
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA] CHECK CONSTRAINT [ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [ASIGNATURA$PROFESORASIGNARURA] FOREIGN KEY([IdProfesor])
REFERENCES [dbo].[PROFESOR] ([IdProfesor])
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [ASIGNATURA$PROFESORASIGNARURA]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [ASIGNATURA$TITULACIONASIGNARURA] FOREIGN KEY([IdTitulacion])
REFERENCES [dbo].[TITULACION] ([IdTitulacion])
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [ASIGNATURA$TITULACIONASIGNARURA]
GO
ALTER TABLE [dbo].[PROFESOR]  WITH NOCHECK ADD  CONSTRAINT [PROFESOR$PERSONAPROFESOR] FOREIGN KEY([DNI])
REFERENCES [dbo].[PERSONA] ([DNI])
GO
ALTER TABLE [dbo].[PROFESOR] CHECK CONSTRAINT [PROFESOR$PERSONAPROFESOR]
GO
ALTER TABLE [dbo].[ALUMNO]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ALUMNO$DNI$disallow_zero_length] CHECK  ((len([DNI])>(0)))
GO
ALTER TABLE [dbo].[ALUMNO] CHECK CONSTRAINT [SSMA_CC$ALUMNO$DNI$disallow_zero_length]
GO
ALTER TABLE [dbo].[ALUMNO]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ALUMNO$IdAlumno$disallow_zero_length] CHECK  ((len([IdAlumno])>(0)))
GO
ALTER TABLE [dbo].[ALUMNO] CHECK CONSTRAINT [SSMA_CC$ALUMNO$IdAlumno$disallow_zero_length]
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$IdAlumno$disallow_zero_length] CHECK  ((len([IdAlumno])>(0)))
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$IdAlumno$disallow_zero_length]
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$IdAsignatura$disallow_zero_length] CHECK  ((len([IdAsignatura])>(0)))
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$IdAsignatura$disallow_zero_length]
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$NumeroMatricula$validation_rule] CHECK  (([NumeroMatricula]<(6) AND [NumeroMatricula]>(0)))
GO
ALTER TABLE [dbo].[ALUMNO_ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ALUMNO_ASIGNATURA$NumeroMatricula$validation_rule]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Creditos$validation_rule] CHECK  (([Creditos]=(3) OR [Creditos]=(4.5) OR [Creditos]=(6) OR [Creditos]=(7.5) OR [Creditos]=(9) OR [Creditos]=(10.5)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Creditos$validation_rule]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Cuatrimestre$disallow_zero_length] CHECK  ((len([Cuatrimestre])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Cuatrimestre$disallow_zero_length]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Cuatrimestre$validation_rule] CHECK  (([Cuatrimestre]='1' OR [Cuatrimestre]='2'))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Cuatrimestre$validation_rule]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Curso$disallow_zero_length] CHECK  ((len([Curso])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Curso$disallow_zero_length]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Curso$validation_rule] CHECK  (([Curso]='1' OR [Curso]='2' OR [Curso]='3' OR [Curso]='4'))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Curso$validation_rule]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$IdAsignatura$disallow_zero_length] CHECK  ((len([IdAsignatura])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$IdAsignatura$disallow_zero_length]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$IdProfesor$disallow_zero_length] CHECK  ((len([IdProfesor])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$IdProfesor$disallow_zero_length]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$IdTitulacion$disallow_zero_length] CHECK  ((len([IdTitulacion])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$IdTitulacion$disallow_zero_length]
GO
ALTER TABLE [dbo].[ASIGNATURA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ASIGNATURA$Nombre$disallow_zero_length] CHECK  ((len([Nombre])>(0)))
GO
ALTER TABLE [dbo].[ASIGNATURA] CHECK CONSTRAINT [SSMA_CC$ASIGNATURA$Nombre$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Apellido$disallow_zero_length] CHECK  ((len([Apellido])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Apellido$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Ciudad$disallow_zero_length] CHECK  ((len([Ciudad])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Ciudad$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$DireccionCalle$disallow_zero_length] CHECK  ((len([DireccionCalle])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$DireccionCalle$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$DireccionNum$disallow_zero_length] CHECK  ((len([DireccionNum])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$DireccionNum$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$DNI$disallow_zero_length] CHECK  ((len([DNI])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$DNI$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Nombre$disallow_zero_length] CHECK  ((len([Nombre])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Nombre$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Telefono$disallow_zero_length] CHECK  ((len([Telefono])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Telefono$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Varon$disallow_zero_length] CHECK  ((len([Varon])>(0)))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Varon$disallow_zero_length]
GO
ALTER TABLE [dbo].[PERSONA]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PERSONA$Varon$validation_rule] CHECK  (([Varon]='0' OR [Varon]='1'))
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [SSMA_CC$PERSONA$Varon$validation_rule]
GO
ALTER TABLE [dbo].[PROFESOR]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PROFESOR$DNI$disallow_zero_length] CHECK  ((len([DNI])>(0)))
GO
ALTER TABLE [dbo].[PROFESOR] CHECK CONSTRAINT [SSMA_CC$PROFESOR$DNI$disallow_zero_length]
GO
ALTER TABLE [dbo].[PROFESOR]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PROFESOR$IdProfesor$disallow_zero_length] CHECK  ((len([IdProfesor])>(0)))
GO
ALTER TABLE [dbo].[PROFESOR] CHECK CONSTRAINT [SSMA_CC$PROFESOR$IdProfesor$disallow_zero_length]
GO
ALTER TABLE [dbo].[TITULACION]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$TITULACION$IdTitulacion$disallow_zero_length] CHECK  ((len([IdTitulacion])>(0)))
GO
ALTER TABLE [dbo].[TITULACION] CHECK CONSTRAINT [SSMA_CC$TITULACION$IdTitulacion$disallow_zero_length]
GO
ALTER TABLE [dbo].[TITULACION]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$TITULACION$Nombre$disallow_zero_length] CHECK  ((len([Nombre])>(0)))
GO
ALTER TABLE [dbo].[TITULACION] CHECK CONSTRAINT [SSMA_CC$TITULACION$Nombre$disallow_zero_length]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[IdAlumno]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'COLUMN',@level2name=N'IdAlumno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[DNI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'COLUMN',@level2name=N'DNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'CONSTRAINT',@level2name=N'ALUMNO$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[DNI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'INDEX',@level2name=N'ALUMNO$DNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[IdAlumno]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'INDEX',@level2name=N'ALUMNO$IdAlumno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[PERSONAALUMNO]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'INDEX',@level2name=N'ALUMNO$PERSONAALUMNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO].[PERSONAALUMNO]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO', @level2type=N'CONSTRAINT',@level2name=N'ALUMNO$PERSONAALUMNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[IdAlumno]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'COLUMN',@level2name=N'IdAlumno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[IdAsignatura]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'COLUMN',@level2name=N'IdAsignatura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[NumeroMatricula]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'COLUMN',@level2name=N'NumeroMatricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ALUMNO_ASIGNATURA$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[ALUMNOALUMNO_ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'INDEX',@level2name=N'ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[ASIGNARURAALUMNO_ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'INDEX',@level2name=N'ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[IdAlumno]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'INDEX',@level2name=N'ALUMNO_ASIGNATURA$IdAlumno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[IdAsignatura]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'INDEX',@level2name=N'ALUMNO_ASIGNATURA$IdAsignatura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[ALUMNOALUMNO_ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ALUMNO_ASIGNATURA$ALUMNOALUMNO_ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ALUMNO_ASIGNATURA].[ASIGNARURAALUMNO_ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ALUMNO_ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ALUMNO_ASIGNATURA$ASIGNARURAALUMNO_ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdAsignatura]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'IdAsignatura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[Nombre]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[Creditos]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'Creditos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[Cuatrimestre]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'Cuatrimestre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[CosteBasico]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'CosteBasico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdProfesor]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'IdProfesor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdTitulacion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'IdTitulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[Curso]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'COLUMN',@level2name=N'Curso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ASIGNATURA$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdAsignatura]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'INDEX',@level2name=N'ASIGNATURA$IdAsignatura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdProfesor]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'INDEX',@level2name=N'ASIGNATURA$IdProfesor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[IdTitulacion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'INDEX',@level2name=N'ASIGNATURA$IdTitulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[PROFESORASIGNARURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'INDEX',@level2name=N'ASIGNATURA$PROFESORASIGNARURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[TITULACIONASIGNARURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'INDEX',@level2name=N'ASIGNATURA$TITULACIONASIGNARURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[PROFESORASIGNARURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ASIGNATURA$PROFESORASIGNARURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[ASIGNATURA].[TITULACIONASIGNARURA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ASIGNATURA', @level2type=N'CONSTRAINT',@level2name=N'ASIGNATURA$TITULACIONASIGNARURA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[DNI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'DNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[Nombre]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[Apellido]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'Apellido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[Ciudad]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'Ciudad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[DireccionCalle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'DireccionCalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[DireccionNum]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'DireccionNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[Telefono]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[FechaNacimiento]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'FechaNacimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[Varon]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'Varon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PERSONA].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'CONSTRAINT',@level2name=N'PERSONA$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[IdProfesor]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'COLUMN',@level2name=N'IdProfesor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[DNI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'COLUMN',@level2name=N'DNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'CONSTRAINT',@level2name=N'PROFESOR$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[DNI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'INDEX',@level2name=N'PROFESOR$DNI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[IdProfesor]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'INDEX',@level2name=N'PROFESOR$IdProfesor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[PERSONAPROFESOR]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'INDEX',@level2name=N'PROFESOR$PERSONAPROFESOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[PROFESOR].[PERSONAPROFESOR]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROFESOR', @level2type=N'CONSTRAINT',@level2name=N'PROFESOR$PERSONAPROFESOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION].[IdTitulacion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION', @level2type=N'COLUMN',@level2name=N'IdTitulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION].[Nombre]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION', @level2type=N'CONSTRAINT',@level2name=N'TITULACION$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION].[IdTitulacion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION', @level2type=N'INDEX',@level2name=N'TITULACION$IdTitulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'universidad.[TITULACION].[Nombre]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TITULACION', @level2type=N'INDEX',@level2name=N'TITULACION$Nombre'
GO
USE [master]
GO
ALTER DATABASE [Universidad] SET  READ_WRITE 
GO
