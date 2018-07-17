ALTER PROCEDURE [dbo].[JE_UpdateAnswer]
@call_status NVARCHAR(15),
@call_result NVARCHAR(10),
@call_time NVARCHAR(50),
@id NVARCHAR (10)
AS
BEGIN
  UPDATE join_event SET call_status = @call_status, call_result = @call_result, call_time = @call_time WHERE id = @id;
END