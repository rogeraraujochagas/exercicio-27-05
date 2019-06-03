use produto;
go

select * from secao
go
select*from produto
go
select*from preco_produto
go

select dsc_produto, len (dsc_produto) as 'Total de Caracteres'
from produto;
go

select dsc_produto, lower (dsc_produto) as 'Nome do Curso em Minusculo'
from produto;
go

select dsc_produto, upper (dsc_produto) as 'Nome do Curso em Maisculo'
from produto;
go

select dsc_produto, LEFT (dsc_produto, 3) as 'LEFT - Descrição Produto'
from produto;
go

select dsc_produto, RIGHT (dsc_produto, 4) as 'RIGHT - Descrição Produto'
from produto;
go
 
 select dsc_produto, RIGHT  (LTRIM(dsc_produto),1) as 'RIGHT/LTRIM - Descrição Produto'
from produto;
go

 /*funcões data*/

 select getdate()                        as 'Data Atual';
 go 
 select datepart(year,getdate())         as 'Ano Atual';
 go
 select datepart(month,getdate())        as 'Mês Atual';
 go
select datepart(day,getdate())           as 'Dia Atual';
 go
 select datepart(hour,getdate())         as 'Hora Atual';
 go
 select datepart(minute,getdate())       as 'Minutos Atual';
 go
 select datepart(second,getdate())       as 'Segundo Atual';
 go
 select datepart(weekday,getdate())      as 'Dia da Semana Atual';
 go

 select datepart(year,dat_inivigencia)       'Ano da data de vigência'
 from preco_produto
 go

 select datepart(month,dat_inivigencia)       'Mes da data de vigência'
 from preco_produto
 go

  select datepart(day,dat_inivigencia)       'Dia da data de vigência',
                    dat_inivigencia  
 from preco_produto
 go

 select datepart(dayofyear,dat_inivigencia)    as   'Dia do ano da data de vigência'
 from preco_produto;
 go

 select datepart(week,dat_inivigencia)       'Semana da data de vigência', dat_inivigencia
 from preco_produto;
 go

 select datediff(day,dat_inivigencia,getdate()) 'Dias corridos', getdate() 'Data atual',
                       dat_inivigencia 'Data vigencia Produto'   
 from preco_produto;
 go


 /* Arredondamento Universal*/
 
 select round (45.925, 2) as 'Arredondamneto acima', 
	   round (45.925, 2) as 'Arredondamneto para baixo',
       round (45.925, 0) as 'Arredondamneto na 2a casa da milhar',
       round (45.925, 1) as 'Arredondamneto na centena',
       round (45.925, -1) as 'Arredondamneto na milhar para baixo',
       round (45.925, -1) as 'Arredondamneto na milhar para cima';
 go

 /* funções de usuário do sistema */

select * from sysusers;
 go
select USER_NAME();
 go
select name FROM sysusers WHERE name = USER_NAME(1);
 go
select name FROM sysusers WHERE name = USER_NAME(3);
 go

 /* Usuário logado no BD*/

 select system_user;

 declare @sys_usr char(30);
 set @sys_usr = system_user;
 select 'o usuário logado no BD é: '+@sys_usr;

 /* SUSER_NAME ([ server_user_id]) */

 select SUSER_NAME()
 select SUSER_SNAME(1)
