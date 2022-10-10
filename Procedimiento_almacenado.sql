drop procedure PRC_INS_UPD_CIUDADANO;

GO
CREATE PROCEDURE PRC_INS_UPD_CIUDADANO(
@p_dpi integer
,@p_nombre varchar(50)
,@p_apellido varchar(50)
,@p_fecha_nac date
,@p_mensaje varchar(50) output
)
AS
	DECLARE @V_EXISTE INTEGER;
	DECLARE @V_MENSAJE VARCHAR(50);
	SELECT @V_EXISTE = (SELECT COUNT(*)   
	FROM tb_ciudadano
	WHERE dpi = @p_dpi);

	IF( @V_EXISTE = 0) 
	 INSERT INTO tb_ciudadano(dpi, nombre,apellido,fecha_nacimiento)
	 VALUES(@p_dpi,@p_nombre,@p_apellido,@p_fecha_nac);
	ELSE
	 UPDATE tb_ciudadano
	 SET nombre = @p_nombre
	 , apellido = @p_apellido
	 ,fecha_nacimiento =@p_fecha_nac
	 where dpi = @p_dpi;
	;

	IF @V_EXISTE = 0
	SET @V_MENSAJE = 'Registro Guardado';
	ELSE 
	SET @V_MENSAJE = 'Registro Actualizado';
	;

	SET @p_mensaje = @V_MENSAJE;


GO
declare @v_mensaje varchar(50);
EXEC PRC_INS_UPD_CIUDADANO 123466,'VITOR','PEREIRA','2002/01/04',@v_mensaje output;
SELECT @v_mensaje as existe;
GO


