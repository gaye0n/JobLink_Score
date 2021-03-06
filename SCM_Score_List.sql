USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ListSCM_Score]    Script Date: 2020-12-01 오전 12:11:00 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Proc [dbo].[UP_ListSCM_Score]
	@result varchar(10)
AS	
	Select 
		* 
		, case  when result='합격' then 'blue' else 'red' end as color
	From
		SCM_Score
		where result like @result+'%'
	Order by 
	  color, result, SCM_ScoreID Desc