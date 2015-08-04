

-- Table Script
CREATE TABLE [dbo].[Pages]
(
PageId INT IDENTITY NOT NULL PRIMARY KEY,
PageName VARCHAR(100) NOT NULL,
PageUrl VARCHAR(100) NOT NULL,
Title VARCHAR(100) NOT NULL,
Content VARCHAR(3000) NOT NULL,
)


-- Procedure To Insert Into Pages Table
CREATE PROC dbo.AddToPages
@PageName VARCHAR(100),
@PageUrl VARCHAR(100), 
@Title VARCHAR(100),
@Content VARCHAR(3000)
AS
BEGIN
SET NOCOUNT ON
	INSERT INTO dbo.Pages(PageName,PageUrl,Title,Content)
	VALUES(@PageName,@PageUrl,@Title,@Content)
	SELECT SCOPE_IDENTITY() AS PageId
SET NOCOUNT OFF
END

--Procedure To Get All Pages - Page List
CREATE PROC dbo.GetAllPages
AS
BEGIN
	SELECT PageId,PageName,PageUrl,Title,Content FROM dbo.Pages
END

--Procedure To Get Pages Content
CREATE PROC dbo.GetPageContent
@PageUrl VARCHAR(100)
AS
BEGIN
SET NOCOUNT ON
	SELECT PageName,Title,Content FROM dbo.Pages WHERE PageUrl=@PageUrl
SET NOCOUNT OFF
END