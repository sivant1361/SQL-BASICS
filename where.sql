DECLARE @site_value INT;
SET @site_value = 0;

WHILE @site_value <= 10
BEGIN
   PRINT 'Inside WHILE LOOP on TechOnTheNet.com';
   SET @site_value = @site_value + 1;
END;

PRINT 'Done WHILE LOOP on TechOnTheNet.com';
GO