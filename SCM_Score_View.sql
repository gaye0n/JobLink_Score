USE [joblink]
GO
/****** Object:  StoredProcedure [dbo].[UP_ViewSCM_Score]    Script Date: 2020-12-01 오전 12:12:21 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--[1-3]공지사항 상제보기
ALTER Proc [dbo].[UP_ViewSCM_Score]
	@SCM_ScoreID Int
AS
	Set Nocount on
	--조회수증가
	Update 
		SCM_Score
	Set
		ReadCount = ReadCount + 1
	Where
		SCM_ScoreID = @SCM_ScoreID
	--번호값에 해당하는 정보 읽어오기
	
 	
	Select 
		*
	From
		SCM_Score
	Where
		SCM_ScoreID = @SCM_ScoreID;
   		


