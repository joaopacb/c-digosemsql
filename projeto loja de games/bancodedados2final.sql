create database Lojadegames;
use Lojadegames;
 
create table Plataformas
(id_plataforma int primary key auto_increment, 
nome_plataforma varchar(50) not null);

create table Jogos
(id_jogo int primary key auto_increment, nome_jogo varchar(50) not null, 
valor_jogo  int , categoria_jogo  varchar(50),  plataforma_jogo int);

create table Aluguel
(id_aluguel int primary key auto_increment, cod_jogo int , 
valor_aluguel int, data_aluguel date, data_devolucao date );

create table Clientes
(id_clientes int primary key auto_increment, nome_cliente varchar(50) not null, 
telefone_cliente varchar(20), email_cliente varchar(50), id_chamado int );

create table Assistencia
(id_chamado int primary key auto_increment, descricao varchar(50) not null, data_chamado date);

create table Encomendas
(id_encomenda int primary key auto_increment, descricao_encomenda varchar(50) not null, data_encomenda date);

create table Funcionarios
(id_funcionario int primary key auto_increment, nome_funcionario varchar(50) not null, 
telefone_funcionario varchar(20), email_funcionario varchar(50));

create table vendas
(id_vendas int primary key auto_increment, data_vendas date,  cod_jogo int);

create table Fornecedores
(id_fornecedor int primary key auto_increment, nome_fornecedor varchar(50) not null, 
produto varchar(50), telefone_fornecedor varchar(20), email_fornecedor varchar(50) );

create table Compras
(id_compra int primary key auto_increment, cod_compra int, valor_compra int);

alter table Jogos
add constraint jogo_plataforma
foreign key (plataforma_jogo)
references plataformas (id_plataforma);

alter table Aluguel
add constraint jogo_aluguel
foreign key (cod_jogo)
references Jogos (id_jogo);

alter table Clientes
add constraint assistencia_cliente
foreign key (id_chamado)
references Assistencia (id_chamado);

alter table Vendas
add constraint vendas_jogos
foreign key (cod_jogo)
references Jogos (id_jogo);

insert into Plataformas
(nome_plataforma )
values 
('PC' ),
('Xbox 360' ),
('PSP' ),
('Playstation 1' ),
('Playstation 2' ),
('Playstation 3' ),
('Xbox one' ),
('Playstation 4' );
 
 insert into Jogos
(nome_jogo, valor_jogo , categoria_jogo , plataforma_jogo )
values 
('World War Z', 74 , 'Ação', 1),
('Control', 113 , 'Ação', 1), 
('Resident Evil 2 Remake', 89 ,  'Survival Horror', 1),
('Jump Force',199  , 'Luta', 1),
('Metro Exodus',74 , 'Ação', 1),
('DiRT Rally 2.0', 75  , 'Corrida', 1),
('Battlefield V',141  ,'Tiro' , 1),
('Darksiders III',107 , 'Ação', 1),
('Grand Theft Auto V',69 ,'Ação', 1),
('Dragon Ball Fighter Z',82 ,'Luta' , 1),
('Sid Meier s Civilization VI',38 ,'Estratégia', 1),
('South Park: The Fractured But Whole',149 , 'RPG', 1),
('Middle-earth Shadow of War',298,'RPG', 1),
('FIFA 17',27,'Esporte', 1),
('Minecraft',90,'Aventura', 1),
('Rocksmith 2014 Edition Remastered',89,'Simulação', 1),
('Project Highrise',15 ,'Simulação', 1),
('Call of Duty: Black Ops III',100, 'Tiro', 1),
('The Witcher 3: Wild Hunt',55,'RPG', 1),
('Shadow of the Tomb Raider',114, 'Ação', 1),
('The Elder Scrolls V: Skyrim', 53,'RPG', 2),
('Fez', 20,'Plataforma', 2),
('Grand Theft Auto IV', 89.99 , 'Ação', 2),
('Far Cry 3',69,'FPS', 2),
('Def Jam: Icon',20,'Luta', 2),
('Super Street Fighter IV',120,'Luta', 2),
('Twisted Metal: Head-On', 99,'Luta', 3),
('Metal Gear Acid', 58,'Cartas' , 3),
('FIFA Football 2005', 26,'Esporte', 3),
('NBA Street Showdown',20,'Esporte', 3),
('Midnight Club',50,'Corrida', 3),
('X-Men Legends II: Rise of Apocalypse',80,'RPG', 3),
('2002 FIFA World Cup', 20,'Esporte', 4),
('Ace Combat 3: Electrosphere', 10,'Simulação', 4),
('Bomberman World', 13,'Plataforma', 4),
('Capcom vs. SNK: Millennium Fight',10, 'Luta', 4),
('Castlevania: Symphony of the Night',20, 'RPG', 4),
('Crash Bandicoot: Warped', 10, 'Plataforma', 4),
('Crash Team Racing',22 , 'Corrida', 4),
('Digimon: Rumble Arena',10 , 'Luta', 4),
('Diablo',10 , 'RPG', 4),
('Digimon World 3',22, 'RPG', 4),
('Dino Crisis 2',38 , 'Survival Horror', 4),
('Driver 2: The Wheelman is Back', 22 , 'Corrida', 4),
('F1 Championship Season 2000',19 , 'Corrida', 4),
('Final Fantasy IX',22,  'RPG', 4),
('Gran Turismo 2',22 , 'Corrida', 4),
('Grand Theft Auto 2',11 , 'Ação', 4),
('King Of Fighters 98',25 , 'Luta', 4),
('Madden NFL 2004',30, 'Esporte', 4),
('Marvel Super Heroes vs. Street Fighter',55.99,'Luta', 4),
('Medal of Honor',10, 'FPS', 4),
('Grand Theft Auto: San Andreas',25,'Ação','5'),
('Resident Evil 4',30,'Suspense','5'),
('Final Fantasy X',20,'RPG','5'),
('Shadow of The Colossus',25 ,'Aventura','5'),
('Ico',25,'Aventura','5'),
('God of War',40,'Ação','5'),
('Silent Hill',20,'Suspense','5'),
('Bully',25,'Aventura','5'),
('Ace Combat',20,'Avião','5'),
('Need For Speed: Most Wanted',25,'Corrida','5'),
('Grand Turismo 4',30,'Simulação','5'),
('Kingdom Hearts II',35,'RPG','5'),
('Tekken 5',25,'Luta','5'),
('Black',30,'Tiro','5'),
("Tony Hawk's Pro Skater 3",25,'Esporte','5'),
('Devil May Cry',25,'Ação','5'),
('God Hand',25,'Ação','5'),
('Crash Twinsanity',30,'Aventura','5'),
('Soul Calibur III',25,'Luta','5'),
('Mortal Kombat: Shaolin Monks',30,'Ação','5'),
('The Last Of Us',65,'Survival Horror','6'),
('God of War 3',70,'Ação','6'),
('Battlefield 4',50,'FPS','6'),
('Dark souls',45,'RPG','6'),
('Heavy Rain',35,'Ação','6'),
('Beyond: Two Souls',35,'Aventura','6'),
('Forza Horizon 4',150,'Corrida','7'),
('Doom Eternal',250,'Tiro','7'),
('Red Dead Redemption 2',230, 'Ação','7'),
('NBA 2K20', 170,'Esporte','7'),
('Sea of Thieves',50,'Ação','7'),
('Resident Evil 3',250,'Survival Horror','7'),
('Spider Man',130,'Ação','8'),
('God of War',75,'Ação','8'),
('Final Fantasy VII Remake',250,'RPG','8'),
('Horizon Zero Dawn',200,'RPG','8'),
('Bloodborne',70,'RPG','8'),
('Days Gone',75,'Survival Horror','8');
 
 insert into Assistencia
(descricao  , data_chamado)
values
('Reparo Playstation 3' ,20200110),
('Reparo Playstation 4' ,20190110),
('Reparo Playstation 2' ,20180515),
('Reparo Playstation 1' ,20190410),
('Reparo xbox 360' ,20170610),
('Reparo Playstation 3' ,20160410),
('Reparo Xbox one' ,20200215),
('Reparo Psp' ,20150710),
('Reparo Playstation 4' ,20160120),
('Reparo Playstation 1' ,20160510),
('Reparo Playstation 4 Pro' ,20200310),
('Reparo Playstation 3' ,20140310),
('Reparo Xbox 360' ,20130810),
('Reparo Xbox one s' ,20200210),
('Reparo Playstation 4' ,20190110),
('Reparo Xbox one' ,20190910),
('Reparo Playstation 3' ,20180110),
('Reparo Playstation 2' ,20140125),
('Reparo Playstation 2' ,20160310), 
('Reparo Playstation 4' ,20180410);
 
insert into Clientes
(nome_cliente, telefone_cliente, email_cliente, id_chamado)
values
('Alexandra Ribeiro Cruz','1198768465','Alexandre_01@gmail.com',1),
('Castro Neves Junior','1148152648','CastroN_45@outlook.com',2),
('Dorival Teles Silva','11917283925','Dori.TS_78@yahoo.com',3),
('Maciel Torres Oliveira','11989987845','Cieltorres_111@gmail.com',4),
('Diego Tafarel Ceni','11987646462','DiegoCeni_222@gmail.com',5),
('Kalec Moraes','11998762222','KalecMoraes_01@gmail.com',6),
('Lucas Santana','11987633331','LucaoSan_01@gmail.com',7),
('Eduardo Machado','11948766666','EduMacha_01@yahoo.com',8),
('Gabriel Torres','11987787770','Bieltorres_01@yahoo.com',9),
('Jesus Morales','1147048830','MoralesJesus_01@gmail.com',10),
('Dunga Silva Nunes','1141377810','NunesDunga_012@gmail.com',11),
('Nicole Silva','11988860102','Nicolelindasilva_0107@outlook.com',12),
('Arthur Moraes','11987684007','Thurmora_0111@outlook.com',13),
('Messias Castro Teves','11987684884','TevesMessias_014@gmail.com',14),
('Roberto Paveio','11978769865','Robertopaveio_013@gmail.com',15),
('Amauri Torres','11976801213','AmauriJT_012@outlook.com',16),
('Monteiro Cristo','1140048830','MonteiroCristo_011@gmail.com',17),
('Joao Nunes','11983737443','NunuAo@yahoo.com',18),
('Zagalo Brasil','11984946262','BrasilZagalo_333@outlook.com',19),
('Marcos Mundial','11987747576','Marcaosemmundial@yahoo.com',20);

insert into Aluguel
(cod_jogo, valor_aluguel , data_aluguel  , data_devolucao  )
values 
(1 ,30, 20200429, 20200608),
(3, 35, 20200427, 20200606),
(7 ,45, 20200425, 20200604),
(10 ,25, 20200429, 20200608),
(2 ,50, 20200429, 20200608);

insert into Fornecedores
(nome_fornecedor, produto , telefone_fornecedor , email_fornecedor )
values 
('Casa dos Jogos' ,'Jogos para a plataforma Playsatation', '1147048830', 'casadosjogos@jogo.com'),
('Armazem das Peças' ,'Pecas de reposição para a assistencia', '1120200429', 'armazemp@pecas.com'),
('Xgames' ,'Jogos para a plataforma Xbox', '1199200429', 'xgames@x.com');

insert into Compras
(cod_compra, valor_compra)
values
(54,30),
(59,20),
(64,35),
(70,30),
(55,20),
(57,20),
(80,250),
(84,250),
(88,200),
(90,75),
(81,230),
(79,150),
(69,25),
(58,40),
(57,25),
(87,250),
(77,35),
(74,70),
(71,20),
(60,25);
 
insert into Encomendas
(descricao_encomenda, data_encomenda)
values
('The Last Of Us Part 2',20200619),
('Marvel Avengers',20200904),
('Ghost of Tsushima',20200626),
('CyberPunk2077',20200917),
('Fast & Furious Crossroads',20200520);

insert into Vendas
(data_vendas ,  cod_jogo )
values
(20200119, 5),
(20190220, 25),
(20200319, 30),
(20200419, 50),
(20200219, 15),
(20200110, 55),
(20200319, 45);

insert into funcionarios (nome_funcionario, telefone_funcionario , email_funcionario ) values 
('jose','87543780','jose@outlook.com'),
('maria','95378510','maria@outlook.com'),
('vivian','86398610','vivian@outlook.com'),
('gilvam','901772903','gilvam@outlook.com'),
('atila','83045789','atila@outlook.com');
 
 select * from Jogos;
 
select Jogos.nome_jogo, Vendas.data_vendas
from Vendas right join Jogos
on Vendas.cod_jogo = Jogos.id_jogo;

select Jogos.nome_jogo, Jogos.valor_jogo, Jogos.categoria_jogo, Plataformas.nome_plataforma
from Plataformas inner join Jogos
on Jogos.plataforma_jogo = Plataformas.id_plataforma;

select Jogos.nome_jogo, Aluguel.data_aluguel, Aluguel.valor_aluguel , Aluguel.data_aluguel  , Aluguel.data_devolucao 
from Jogos left join Aluguel
on Jogos.id_jogo = Aluguel.cod_jogo;

select * from Jogos where nome_jogo like 'g%';
