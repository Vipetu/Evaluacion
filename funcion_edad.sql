--drop function f_edad;

create function f_edad( 
					@p_fecha_nac date
					)
Returns decimal(10)
begin
   declare @edad decimal(10,2);
   set @edad =  DATEDIFF(YEAR,@p_fecha_nac,GETDATE())
   return @edad;
end;
