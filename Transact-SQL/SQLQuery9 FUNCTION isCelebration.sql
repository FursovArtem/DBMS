CREATE FUNCTION isCelebration (@date AS DATE) RETURNS BIT AS
BEGIN
	DECLARE @celebration BIT = 0
	IF EXISTS (SELECT * FROM Celebrations WHERE celebration_day = DATEPART(DAY, @date) AND celebration_month = DATEPART(MONTH, @date))
		SET @celebration = 1
	RETURN @celebration
END