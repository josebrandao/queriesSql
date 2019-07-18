CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;
--Para executar
EXEC SelectAllCustomers;

--Um outro exemplo utilizando valores para output
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City
GO;
--Na execução temos a opção de escolher o valor que queremos
--obter o resultado
EXEC SelectAllCustomers City = "London";
