ALTER PROCEDURE [dbo].[JE_UpdatePathRecord]
@path_record NVARCHAR(255),
@id NVARCHAR(11)
AS
BEGIN
  UPDATE join_event SET record_path = @path_record WHERE id = @id
END