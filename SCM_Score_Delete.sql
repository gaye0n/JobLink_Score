USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_DeleteSCM_Score]    Script Date: 2020-12-01 오전 12:10:17 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--[1-5]공지사항 삭제
ALTER Proc [dbo].[UP_DeleteSCM_Score]
	@SCM_ScoreID Int
As
	Set Nocount on
	Delete 
		SCM_Score
	Where
		SCM_ScoreID = @SCM_ScoreID
	Select @@RowCount
