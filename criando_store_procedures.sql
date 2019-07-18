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
--Script com varios parametros

CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;
--Para executar esta store PROCEDURE
EXEC SelectAllCustomers City = "London", PostalCode = "WA1 1DP";
