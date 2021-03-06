USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_AddSCM_Score]    Script Date: 2020-12-01 오전 12:09:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--  =================================================================================
--  Create Stored Procedure
--  =================================================================================
--[1-1]공지사항 입력
ALTER Proc [dbo].[UP_AddSCM_Score]
(
@Title		VarChar(20),
@Content 	VarChar(1000),
@korean		VarChar(100),
@english	VarChar(100),
@math		VarChar(100),
@total		VarChar(100),
@result		VarChar(10),
@ts			VarChar(10)
        
)
As
	Set Nocount on

	Insert SCM_Score
	(
			Title, Content, korean, english, math, total, result, ts
	)
	Values
	(
			@Title,@Content,@korean,@english,@math,@total,@result, @ts
	);