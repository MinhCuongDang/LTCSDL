USE ONLINE_SHOP
GO

---- Câu 11: Tổng 2 số a, b

IF OBJECT_ID('uspCau11','P') IS NOT NULL 
	DROP PROC uspCau11
GO
CREATE PROC uspCau11
	@a int = 0,-- default
	@b int =0
AS
	RETURN (@a + @b)
GO
-- Gọi thực thi
DECLARE @x int = 2, @y int = 3, @tong int = 0
EXEC @tong = uspCau11 @x, @y
PRINT @tong







---- 11b: Cộng 2 số thực

IF OBJECT_ID('uspCau11b','P') IS NOT NULL 
	DROP PROC uspCau11b
GO
CREATE PROC uspCau11b
	@a float = 0.0,	-- default
	@b float = 0.0,
	@tong float OUT	-- OUTPUT 
AS
	-- RETURN (@a + @b) // Nó chỉ trả về số nguyên nên ko dùng đc
	SET @tong = @a + @b;
GO
-- Gọi thực thi
DECLARE @u float = 2.2, @v float = 3.3, @tong float
EXEC uspCau11b @u, @v, @tong OUT -- Vì k có tả về giá trị
PRINT CAST(@u AS varchar) + ' + ' + CAST(@v AS varchar) + ' = ' + CAST(@tong AS varchar) 
