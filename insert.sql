use id11294016_bd_tcc_fonodiologo;
/*Inserts fonos*/
INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('fonoaudiologo');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,tipo_usuario_cd_tipo_usuario) 
VALUES ('welinton@email.com','welinton',md5('1234'),1);
select * from Usuario;

select * from tipo_usuario;

/*fim insert fono*/

/* Incio do insert Usuario(paciente) */

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('ryanyan733@gmail.com','Ryan Eduardo',md5('1234'),'dipirona','32735478','Marcella','Carlos','1','2010-07-18','1','atividades','1','on',2,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('migueldosanjos@hotmail.com','Miguel dos Anjos',md5('1452'),'alenia','32987545','Sophia','Eduardo','1','2006-10-04','1','atividades','1','on',3,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('alicemartins@gmail.com','Alice Martins',md5('7834'),'beclozol','32965411','Simone','Jorge','2','2010-08-18','1','atividades','1','on',4,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('bernadoxavier@hotmail.com','Bernado Xavier',md5('4524'),'dipirona','32568947','Andressa','Joao','1','2009-07-28','1','atividades','1','on',5,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('biancarodrigues@gmail.com','Bianca Rodrigues',md5('7896'),'aspirina','32698755','Graziele','Jonatan','1','2008-05-18','1','atividades','1','on',6,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('renatagolzales@hotmail.com','Renata Golzales',md5('8521'),'dipirona','32417899','Gabriela','Joao','1','2005-07-14','1','atividades','1','on',7,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('lucasriseti@gmail.com','Lucas Riseti',md5('1234'),'dipirona','33526418','Valeria','Wagner','1','2012-07-25','1','atividades','1','on',8,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('albertojusto@hotmail.com','Alberto Justo',md5('3444'),'omeprazol','32654711','Beatriz','Alexandre','1','2005-07-18','1','atividades','1','on',9,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('marialuiza@gmail.com','Maria Luiza',md5('1234'),'rivotril','32659877','Joana','Crisvaldo','1','2010-08-14','1','atividades','1','on',10,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('beatrizcorreia@hotmail.coim','Beatriz Correia',md5('1234'),'clonazepan','32654177','Cristine','Sergio','1','2006-07-12','1','atividades','1','on',11,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('heitoralves@gmail.com','Heitor Alves',md5('1834'),'complexo B','32457899','Marilene','Italo','1','2010-05-18','1','atividades','1','on',12,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('giovannalopes@hotmail.com','Giovanna Lopes',md5('1428'),'paracetamol','33256188','Lorrayne','Lucas','1','2008-07-18','1','atividades','1','on',13,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('gabriellucas@gmail.com','Gabriel Lucas',md5('1384'),'dipirona','32657844','Joseane','Valdo','1','2008-04-18','1','atividades','1','on',14,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('nicolealves@hotmail.com','Nicole Alves',md5('3414'),'amoxilinina','32564122','Katia','Jose','1','2007-08-18','1','atividades','1','on',15,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('vitordossantos@gmail.com','Vitor Dos Santos',md5('6523'),'dipirona','32569877','Mikaela','Michael','1','2010-06-18','1','atividades','1','on',16,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('gabrielasilva@hotmail.com','Gabriela Silva',md5('8244'),'luftal','32231455','Yara','Guilherme','1','2019-07-18','1','atividades','1','on',17,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('nicolasconti@gmail.com','Nicolas Conti',md5('3254'),'AS','32569855','Sarah','Antonio','1','2009-09-16','1','atividades','1','on',18,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('yasmimsouza@hotmail.com','Yasmim Souza',md5('1234'),'Gardenal','32125466','Leticia','Leonardo','1','2007-07-05','1','atividades','1','on',19,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('esthercalvantine@gmail.com','Esther Calvantine',md5('1234'),'Alegra','32746855','Stela','Cesar','1','2009-07-14','1','atividades','1','on',20,0);

INSERT INTO tipo_usuario (nm_tipo_usuario) VALUES ('paciente');
INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,ic_autorizar_confirmacao,tipo_usuario_cd_tipo_usuario,logou) 
VALUES ('julialima@hotmail.com','Julia Lima',md5('2554'),'floratil','32856855','Tatiane','Julius','1','2009-07-07','1','atividades','1','on',21,0);


/* fim do insert do Usuario (paciente) */



/* Insert consulta*/

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2020-01-15 15:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala',10,'Treino de Dicção (Trava Língua)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-02-15 14:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com uma pouca melhora da fala',5,'Treino de Dicção (Fonemas "u" e "i")');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-03-15 15:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com uma pouca melhora da fala',6,'Treino de Dicção (Fonemas "u" e "i")');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-04-15 14:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com uma pouca melhora da fala',6,'Treino de Dicção (Fonemas "u" e "i")');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-05-15 15:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',7,'Treino de Dicção (Fonemas "u" e "i")');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-06-15 14:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',7,'Treino de Dicção (hummmm)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-07-15 15:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',8,'Treino de Dicção (hummmm)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-08-15 14:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',8,'Treino de Dicção (hummmm)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-09-15 15:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',8,'Treino de Dicção (hummmm)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-10-15 14:30:00','ryanyan733@gmail.com','paciente com dificuldade na fala porem com a melhora da fala da fala',8,'Treino de Dicção (Trava Língua)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-11-15 15:40:00','ryanyan733@gmail.com','paciente com dificuldade minima de fala proxima consulta terá alta',9,'Treino de Dicção (Trava Língua)');

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2019-12-15 14:30:00','ryanyan733@gmail.com','paciente tratado e devidamente com alta',10,'Treino de Dicção (Trava Língua)');

/* fim dos insert consulta*/


select * from Usuario;

select * from tipo_usuario;

select nm_usuario from Usuario;

SELECT * FROM Usuario as A  LEFT JOIN tipo_usuario as B on A.tipo_usuario_cd_tipo_usuario = B.cd_tipo_usuario WHERE nm_tipo_usuario = "paciente";

SELECT * FROM  Consulta;

INSERT INTO Consulta(dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio)
values('2020-02-15 15:40:00','ryanyan733@gmail.com','paciente com dificuldade minima de fala proxima consulta terá alta',9,'Treino de Dicção (Trava Língua)');



/*DELETE FROM `bd_tcc_fonodiologo`.`usuario` 
WHERE `nm_email`='albertojusto@hotmail.com' and`tipo_usuario_cd_tipo_usuario`='9';*/