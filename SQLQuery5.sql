USE [TestDataBase]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[GetAllData]
		@ID = 1

SELECT	@return_value as 'Return Value'

GO
