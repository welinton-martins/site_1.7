insert into `tipo_usuario`(`nm_tipo_usuario`) values("paciente");
insert into `Usuario`(`nm_email`,`nm_usuario`,`nm_senha`,`ds_medicamento`,`cd_telefone_usuario`,`nm_mae_paciente`,`nm_pai_paciente` ,`ic_sexo`,`dt_nascimento`,`ds_escolaridade_paciente`,`ds_outras_atv_esportivas`,`ds_periodo_estudo`,`ic_autorizar_confirmacao`,`tipo_usuario_cd_tipo_usuario` ) 
values("ryanyan733@gmail.com","Ryan Eduardo","123456","dipirona","(13)996005915","Marcella","Carlos","m",'2002-01-25',"Ensino Médio","nada","noturno","c",1 );

select * from Usuario