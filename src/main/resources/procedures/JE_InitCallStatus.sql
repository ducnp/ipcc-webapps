CREATE PROCEDURE [dbo].[JE_InitCallStatus]
@call_time NVARCHAR(50),
@call_status NVARCHAR(50),
@id NVARCHAR(10)
AS
BEGIN
  UPDATE join_event SET call_status = @call_status, call_time = @call_time WHERE id = @id;
END