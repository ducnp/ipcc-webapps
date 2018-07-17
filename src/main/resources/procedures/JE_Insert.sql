ALTER PROCEDURE [dbo].[JE_Insert]
@location NVARCHAR(255),
@staff_name NVARCHAR(255),
@agency_name NVARCHAR(255),
@customer_name NVARCHAR(255),
@customer_phone NVARCHAR(15),
@import_time NVARCHAR(50)
AS
BEGIN
  INSERT INTO join_event (location, staff_name, agency_name, customer_name, customer_phone, import_time)
		VALUES (@location, @staff_name, @agency_name, @customer_name, @customer_phone, @import_time);
END