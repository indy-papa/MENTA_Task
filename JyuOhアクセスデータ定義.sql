USE [master]
GO
/****** Object:  Database [JyuOh]    Script Date: 2023/01/12 21:34:08 ******/
CREATE DATABASE [JyuOh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JyuOh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JyuOh.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JyuOh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JyuOh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JyuOh] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JyuOh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JyuOh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JyuOh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JyuOh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JyuOh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JyuOh] SET ARITHABORT OFF 
GO
ALTER DATABASE [JyuOh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JyuOh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JyuOh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JyuOh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JyuOh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JyuOh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JyuOh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JyuOh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JyuOh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JyuOh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JyuOh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JyuOh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JyuOh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JyuOh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JyuOh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JyuOh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JyuOh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JyuOh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JyuOh] SET  MULTI_USER 
GO
ALTER DATABASE [JyuOh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JyuOh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JyuOh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JyuOh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JyuOh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JyuOh] SET QUERY_STORE = OFF
GO
USE [JyuOh]
GO
/****** Object:  Table [dbo].[T_DATA_CUT_H]    Script Date: 2023/01/12 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_CUT_H](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [smallint] NOT NULL,
	[SOKUTEN] [nvarchar](5) NULL,
	[SOKUTEN_PLUS] [nvarchar](10) NULL,
	[L_MUKI] [tinyint] NULL,
	[L_KOUBAI] [nvarchar](10) NULL,
	[L_SOKUTEN_SU] [tinyint] NULL,
	[R_KOUBAI] [nvarchar](10) NULL,
	[R_MUKI] [tinyint] NULL,
	[R_SOKUTEN_SU] [tinyint] NULL,
	[DANMENSEKI] [real] NULL,
	[TAISEKI] [real] NULL,
	[HEIKINATU] [real] NULL,
	[HYOUSOU] [real] NULL,
	[KISOU] [real] NULL,
	[TYUKANSOU] [real] NULL,
	[PRINT_X_BAIRITU] [nvarchar](10) NULL,
	[PRINT_Y_BAIRITU] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_CUT_M]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_CUT_M](
	[ID] [int] NULL,
	[GYO_NO] [int] NULL,
	[NIJU_DANMEN] [tinyint] NULL,
	[COL] [tinyint] NULL,
	[ROW] [tinyint] NULL,
	[DATA] [nvarchar](10) NULL,
	[ROW_BAK] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_EXC_H]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_EXC_H](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [int] NOT NULL,
	[SOKUTEN] [nvarchar](5) NULL,
	[SOKUTEN_PLUS] [nvarchar](10) NULL,
	[L_MUKI] [tinyint] NULL,
	[L_KOUBAI] [nvarchar](10) NULL,
	[L_SOKUTEN_SU] [tinyint] NULL,
	[R_KOUBAI] [nvarchar](10) NULL,
	[R_MUKI] [tinyint] NULL,
	[R_SOKUTEN_SU] [tinyint] NULL,
	[EXC_ATU_1] [real] NULL,
	[DANMENSEKI_1] [real] NULL,
	[TAISEKI_1] [real] NULL,
	[EXC_ATU_2] [real] NULL,
	[DANMENSEKI_2] [real] NULL,
	[TAISEKI_2] [real] NULL,
	[PRINT_X_BAIRITU] [nvarchar](10) NULL,
	[PRINT_Y_BAIRITU] [nvarchar](10) NULL,
	[E_KUSSAKU_CALC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_EXC_M]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_EXC_M](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [int] NOT NULL,
	[COL] [tinyint] NULL,
	[ROW] [tinyint] NULL,
	[DATA] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_JUDAN]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_JUDAN](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[SOKUTEN] [nvarchar](5) NULL,
	[SOKUTEN_PLUS] [nvarchar](10) NULL,
	[JIBAN] [nvarchar](10) NULL,
	[SETTEI] [nvarchar](10) NULL,
	[KEIKAKU] [nvarchar](10) NULL,
	[VCL] [nvarchar](10) NULL,
	[KIRIMORI] [nvarchar](10) NULL,
	[JIBAN_KOUBAI] [nvarchar](10) NULL,
	[KEIKAKU_KOUBAI] [nvarchar](10) NULL,
	[TUIKA_KYORI] [real] NULL,
	[V_FLAG] [tinyint] NULL,
	[SETTEI_KOUBAI] [nvarchar](10) NULL,
	[PRINT_X_BAIRITU] [nvarchar](10) NULL,
	[PRINT_Y_BAIRITU] [nvarchar](10) NULL,
	[BAK_KEIKAKU] [nvarchar](10) NULL,
	[BAK_KEIKAKU_KOUBAI] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_OL_H]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_OL_H](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [tinyint] NOT NULL,
	[SOKUTEN] [nvarchar](5) NULL,
	[SOKUTEN_PLUS] [nvarchar](10) NULL,
	[L_MUKI] [tinyint] NULL,
	[L_KOUBAI] [nvarchar](10) NULL,
	[L_SOKUTEN_SU] [tinyint] NULL,
	[R_KOUBAI] [nvarchar](10) NULL,
	[R_MUKI] [tinyint] NULL,
	[R_SOKUTEN_SU] [tinyint] NULL,
	[DANMENSEKI] [real] NULL,
	[TAISEKI] [real] NULL,
	[PRINT_X_BAIRITU] [nvarchar](10) NULL,
	[PRINT_Y_BAIRITU] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_OL_M]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_OL_M](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [tinyint] NOT NULL,
	[COL] [tinyint] NOT NULL,
	[ROW] [tinyint] NOT NULL,
	[DATA] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_OUDAN_H]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_OUDAN_H](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [tinyint] NOT NULL,
	[SOKUTEN] [nvarchar](5) NULL,
	[SOKUTEN_PLUS] [nvarchar](10) NULL,
	[L_MUKI] [tinyint] NULL,
	[L_KOUBAI] [nvarchar](10) NULL,
	[L_DANMEN] [nvarchar](10) NULL,
	[L_SOKUTEN_SU] [tinyint] NULL,
	[R_KOUBAI] [nvarchar](10) NULL,
	[R_DANMEN] [nvarchar](10) NULL,
	[R_MUKI] [tinyint] NULL,
	[R_SOKUTEN_SU] [tinyint] NULL,
	[PRINT_X_BAIRITU] [nvarchar](10) NULL,
	[PRINT_Y_BAIRITU] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DATA_OUDAN_M]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_OUDAN_M](
	[ID] [int] NOT NULL,
	[GYO_NO] [int] NOT NULL,
	[NIJU_DANMEN] [tinyint] NOT NULL,
	[COL] [tinyint] NOT NULL,
	[ROW] [tinyint] NOT NULL,
	[DATA] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_KOUJI]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_KOUJI](
	[ID] [int] NOT NULL,
	[KOUJI_MEISYOU] [nvarchar](50) NULL,
	[KOUJI_BASYO] [nvarchar](50) NULL,
	[SOKUTEI_BASYO] [nvarchar](50) NULL,
	[TATIAININ] [nvarchar](50) NULL,
	[SOKUTEIBI] [datetime] NULL,
	[SOKUTENMEI] [tinyint] NULL,
	[J_U_SYUKUSYAKU] [real] NULL,
	[J_R_SYUKUSYAKU] [real] NULL,
	[SOKUTENKANKYORI] [real] NULL,
	[J_PRINT_KOUMOKU] [nvarchar](100) NULL,
	[O_U_SYUKUSYAKU] [real] NULL,
	[O_R_SYUKUSYAKU] [real] NULL,
	[L_SOKUTEN_SU] [tinyint] NULL,
	[R_SOKUTEN_SU] [tinyint] NULL,
	[O_PRINT_KOUMOKU] [nvarchar](100) NULL,
	[S_U_SYUKUSYAKU] [real] NULL,
	[S_R_SYUKUSYAKU] [real] NULL,
	[S_L_SOKUTEN_SU] [tinyint] NULL,
	[S_R_SOKUTEN_SU] [tinyint] NULL,
	[S_PRINT_KOUMOKU] [nvarchar](100) NULL,
	[OL_U_SYUKUSYAKU] [real] NULL,
	[OL_R_SYUKUSYAKU] [real] NULL,
	[OL_L_SOKUTEN_SU] [tinyint] NULL,
	[OL_R_SOKUTEN_SU] [tinyint] NULL,
	[OL_PRINT_KOUMOKU] [nvarchar](100) NULL,
	[OD_BAIRITU_SET] [int] NULL,
	[SS_BAIRITU_SET] [int] NULL,
	[OL_BAIRITU_SET] [int] NULL,
	[E_U_SYUKUSYAKU] [real] NULL,
	[E_R_SYUKUSYAKU] [real] NULL,
	[E_L_SOKUTEN_SU] [tinyint] NULL,
	[E_R_SOKUTEN_SU] [tinyint] NULL,
	[E_PRINT_KOUMOKU] [nvarchar](100) NULL,
	[E_BAIRITU_SET] [int] NULL,
	[E_KUSSAKU_CALC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PRINT_ZAHYO]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PRINT_ZAHYO](
	[FRM_NAME] [nvarchar](255) NOT NULL,
	[ID] [int] NOT NULL,
	[POLY_ID] [int] NOT NULL,
	[PAGE_NO] [int] NOT NULL,
	[OBJECT_TYPE] [int] NOT NULL,
	[LAYER] [int] NULL,
	[CHANGE_X] [float] NULL,
	[CHANGE_Y] [float] NULL,
	[SX] [float] NULL,
	[SY] [float] NULL,
	[EX] [float] NULL,
	[EY] [float] NULL,
	[CIRCLE_R] [float] NULL,
	[ANGLE] [float] NULL,
	[TXT_AX] [float] NULL,
	[TXT_AY] [float] NULL,
	[TXT_BX] [float] NULL,
	[TXT_BY] [float] NULL,
	[TXT_CX] [float] NULL,
	[TXT_CY] [float] NULL,
	[TXT_DX] [float] NULL,
	[TXT_DY] [float] NULL,
	[TXT_DATA] [nvarchar](255) NULL,
	[FONT_NAME] [nvarchar](255) NULL,
	[FONT_SIZE] [float] NULL,
	[TXT_H] [float] NULL,
	[TXT_W] [float] NULL,
	[TXT_H_Pxs] [float] NULL,
	[TXT_W_Pxs] [float] NULL,
	[TXT_COLOR] [int] NULL,
	[ZU_COLOR] [int] NULL,
	[TXT_ALIGN_H] [int] NULL,
	[TXT_ALIGN_V] [int] NULL,
	[LINE_TYPE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SOKUTEN_INDEX]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SOKUTEN_INDEX](
	[PAGE_NO] [int] NULL,
	[INDEX_NO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Zahyo_設計]    Script Date: 2023/01/12 21:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Zahyo_設計](
	[FrmID] [int] NULL,
	[ID] [int] NULL,
	[PolyID] [int] NULL,
	[ObjectType] [int] NULL,
	[Layer] [smallint] NULL,
	[RegionNo] [int] NULL,
	[KijunSokuten] [nvarchar](50) NULL,
	[PlusSokuten] [nvarchar](50) NULL,
	[Niju] [smallint] NULL,
	[ChgX] [float] NULL,
	[ChgY] [float] NULL,
	[RL] [nvarchar](1) NULL,
	[SX] [float] NULL,
	[SY] [float] NULL,
	[EX] [float] NULL,
	[EY] [float] NULL,
	[aHen_Base] [nvarchar](10) NULL,
	[bHen_Base] [nvarchar](10) NULL,
	[cHen_Base] [nvarchar](10) NULL,
	[dHen_Base] [nvarchar](10) NULL,
	[sHen_Base] [nvarchar](10) NULL,
	[aHen] [float] NULL,
	[bHen] [float] NULL,
	[cHen] [float] NULL,
	[dHen] [float] NULL,
	[Angle] [smallint] NULL,
	[TxtAX] [float] NULL,
	[TxtAY] [float] NULL,
	[TxtBX] [float] NULL,
	[TxtBY] [float] NULL,
	[TxtCX] [float] NULL,
	[TxtCY] [float] NULL,
	[TxtDX] [float] NULL,
	[TxtDY] [float] NULL,
	[TextData] [nvarchar](255) NULL,
	[FontName] [nvarchar](50) NULL,
	[FontSize] [float] NULL,
	[Txt_H] [float] NULL,
	[Txt_W] [float] NULL,
	[Txt_H_Pxs] [int] NULL,
	[Txt_W_Pxs] [int] NULL,
	[Text_Color] [int] NULL,
	[Zu_Color] [int] NULL,
	[TextAlignH] [smallint] NULL,
	[TextAlignV] [smallint] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [JyuOh] SET  READ_WRITE 
GO
