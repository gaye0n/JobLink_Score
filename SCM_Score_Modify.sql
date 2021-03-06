USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ModifySCM_Score]    Script Date: 2020-12-01 오전 12:11:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER Proc [dbo].[UP_ModifySCM_Score]
(
@Title		VarChar(20),
@Content 	VarChar(1000),
@korean		VarChar(100),
@english	VarChar(100),
@math		VarChar(100),
@total		VarChar(100),
@result		VarChar(10),
@ts			VarChar(10),
@SCM_ScoreID 	Int	
	
	
)
AS
	Set nocount on
	UPdate
		SCM_Score
	Set	
		 Title = @Title
		,Content = @Content          
		,korean = @korean
		,english = @english
		,math = @math
		,total = @total		
		,result = @result
		,ts = @ts
			          
		,ModifyDate = GetDate()
		
	Where
		SCM_ScoreID = @SCM_ScoreID;