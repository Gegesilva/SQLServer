--==========================================Procedure Sem retorno==========================================================

ALTER PROCEDURE Teste01
	   @situacao varchar(1),
	   @Empresa NUMERIC
AS

--SET @situacao = @situacao

SELECT DISTINCT
	TB01008_CODIGO Cod,
	TB01008_NOME Nome,
	TB02112_END [End],
	TB02111_CODEMP CodEmpresa,
	TB02111_DIALEITURA DiaLeitura
	
FROM TB01008
LEFT JOIN TB02111 ON TB02111_CODCLI = TB01008_CODIGO
LEFT JOIN TB02112 ON TB02112_CODIGO = TB02111_CODIGO 

WHERE TB01008_SITUACAO = @situacao
   AND TB01008_EMPRESA = @empresa


--============================================Procedure com retorno e insert==============================================

ALTER PROCEDURE Teste01Incluir
		@codigo VARCHAR(10)
AS
BEGIN
	DECLARE @VIDAUTIL VARCHAR(20)
	DECLARE @NOME VARCHAR(MAX)

	SELECT @VIDAUTIL = TB01010_COPIA, @NOME = TB01010_NOME FROM TB01010 WHERE TB01010_CODIGO = @codigo

	INSERT INTO BM_VIDAUTIL (Cód, [Descrição do Produto], [VIDA ÚTIL])
		VALUES (@codigo, @NOME, @VIDAUTIL)

	SELECT @codigo = Cód FROM BM_VIDAUTIL WHERE Cód = @codigo --alimenta a variavel novamente para trazer o retorno correto
	
	SELECT 
		@codigo as Cod, 
		@NOME as Nome --Retornos das ações

END
