INSERT INTO INTUITO (id, nome) 
VALUES (1, 'Família'), 
(2, 'Profissional'), 
(3, 'Amador');


INSERT INTO USUARIO (email, nome, data_nascimento, token, foto, telefone, FK_INTUITO_id) 
VALUES ('gustavo@gmail.com', 'Gustavo Alves', '2000-01-01', 'gustavo123', 'gu.png', '99999999', 1),
('pedro@gmail.com', 'Pedro Ramos', '2006-05-10', 'pedrinho123', 'pe.png', '99999999', 2),
('joao@gmail.com', 'João Pedro', '1988-12-20', 'barcellos123', 'jp.png', '99999999', 1),
('fellipy@gmail.com', 'Fellipy Silva', '1999-07-15', 'pitico123', 'pi.png', '99999999', 2),
('moises@gmail.com', 'Moisés Omena', '1992-03-25', 'moises123', 'foto5.jpg', '99999999', 1),
('anaclarasantos@gmail.com', 'Ana Clara Santos Lima', '1990-09-12', 'Anaclara123', 'semfoto.png', '99999999', 3),
('caioferreira@gmail.com', 'Caio Ferreira Alves', '2007-11-05', 'caio123', 'semfoto.png', '99999999', 3),
('gabrielaoliveira@gmail.com', 'Gabriela Oliveira Costa', '1983-06-14', 'gabriela123', 'semfoto.png', '99999999', 3),
('felipealmeida@gmail.com', 'Felipe Almeida Castro', '1989-03-31', 'felipe123', 'semfoto.png', '99999999', 2),
('isabelacristina@gmail.com', 'Isabela Cristina Souza', '1977-12-22', 'isabela123', 'semfoto.png', '99999999', 1),
('vitorhugo@gmail.com', 'Vitor Hugo Silva Ferreira', '1997-08-17', 'vitor123', 'semfoto.png', '99999999', 2),
('liviacosta@gmail.com', 'Lívia Costa Lima', '1981-04-28', 'livia123', 'semfoto.png', '99999999', 3),
('gustavohenrique@gmail.com', 'Gustavo Henrique Oliveira', '1993-01-09', 'gustavo123', 'semfoto.png', '99999999', 2),
('juliapereira@gmail.com', 'Júlia Pereira Santos', '1985-10-19', 'julia123', 'semfoto.png', '99999999', 2),
('davialmeida@gmail.com', 'Davi Almeida Castro', '1973-07-30', 'davi123', 'semfoto.png', '99999999', 1),
('luanacosta@gmail.com', 'Luana Costa Souza', '2008-05-11', 'luana123', 'semfoto.png', '99999999', 2),
('thiagoferreira@gmail.com', 'Thiago Ferreira Alves', '1986-12-02', 'thiago123', 'semfoto.png', '99999999', 2),
('mariaeduardaoliveira@gmail.com', 'Maria Eduarda Oliveira Lima', '1974-09-23', 'maria123', 'semfoto.png', '99999999', 2),
('joaovictorsantos@gmail.com', 'João Victor Santos Ferreira', '1994-06-04', 'joao123', 'semfoto.png', '99999999', 1),
('marianaalves@gmail.com', 'Mariana Alves Castro', '1999-07-15', 'mariana123', 'semfoto.png', '99999999', 1),
('eduardolima@gmail.com', 'Eduardo Lima Oliveira', '1984-10-26', 'eduardo123', 'semfoto.png', '99999999', 1),
('leticiacosta@gmail.com', 'Letícia Costa Almeida', '1990-07-07', 'leticia123', 'semfoto.png', '99999999', 2),
('pedrohenrique@gmail.com', 'Pedro Henrique Santos Castro', '1976-04-18', 'pedro123', 'semfoto.png', '99999999', 2),
('isadora@gmail.com', 'Isadora Ferreira Lima', '1988-11-29', 'isadora123', 'semfoto.png', '99999999', 1),
('rafaela@gmail.com', 'Rafaela Oliveira Costa', '1996-09-10', 'rafaela123', 'semfoto.png', '99999999', 2),
('brunoh27@gmail.com', 'Bruno Henrique Santos', '1972-06-21', 'bruno123', 'semfoto.png', '99999999', 3),
('gabrielle@gmail.com', 'Gabrielle Castro Lima', '1987-03-02', 'gabrielle123', 'semfoto.png', '99999999', 3),
('jacob@gmail.com', 'Jacob Planil Zoka', '2006-03-02', 'Jacob123', 'semfoto.png', '99999999', 3),
('mark@gmail.com', 'Mark Zukiberg', '2007-07-15', 'Mark123', 'semfoto.png', '99999999', 1),
('junio@gmail.com', 'Junio Oliveira', '2008-05-02', 'junio123', 'semfoto.png', '99999999', 1);


INSERT INTO ESTADO (id, nome)
VALUES (1, 'AC'), (2, 'AL'), (3, 'AM'), (4, 'AP'), (5, 'BA'), 
       (6, 'CE'), (7, 'DF'), (8, 'ES'), (9, 'GO'), (10, 'MA'), 
       (11, 'MG'), (12, 'MS'), (13, 'MT'), (14, 'PA'), (15, 'PB'), 
       (16, 'PE'), (17, 'PI'), (18, 'PR'), (19, 'RJ'), (20, 'RN'), 
       (21, 'RO'), (22, 'RR'), (23, 'RS'), (24, 'SC'), (25, 'SE'), 
       (26, 'SP'), (27, 'TO');

INSERT INTO CIDADE (id, nome, FK_ESTADO_id) 
VALUES (1, 'Serra', 8), 
(2, 'Cariacica', 8), 
(3, 'Guarapari', 8), 
(4, 'Vitória', 8), 
(5, 'Vila Velha', 8),
(6, 'Aracruz', 8),
(7, 'Rio de Janeiro', 19); 

INSERT INTO BAIRRO(id, nome, FK_CIDADE_id)
VALUES (1, 'Jardim Limoeiro', 1),
(2, 'Mata da Praia', 4),
(3, 'Santa Cruz', 6),
(4, 'Itaparica', 5),
(5, 'Marina da Glória', 7),
(6, 'Santa Helena', 4),
(7, 'Estância Monazítica', 1);

INSERT INTO TIPO_LOGRADOURO(id, tipo)
VALUES (1, 'Avenida'),
(2, 'Rua'),
(3, 'Alameda'),
(4, 'Condomínio'),
(5, 'Distrito'),
(6, 'Morro'),
(7, 'Estrada'),
(8, 'Loteamento'),
(9, 'Via'),
(10, 'Viaduto'),
(11, 'Vale'),
(12, 'Vereda'),
(13, 'Viela'),
(14, 'Vila'),
(15, 'Praça'),
(16, 'Pátio'),
(17, 'Parque'),
(18, 'Jardim'),
(19, 'Quadra'),
(20, 'Recanto'),
(21, 'Residência'),
(22, 'Rodovia');

INSERT INTO ENDERECO(id, numero, cep, descricao, FK_TIPO_LOGRADOURO_id, FK_BAIRRO_id)
VALUES (1, 1000, 29164018, 'Nelcy Lopes Vieira', 2, 1),
(2, 0, 29066010, 'Ana Viêira Mafra', 2, 2),
(3, 35, 29199548, 'ES-010', 22, 3),
(4, 0, 29103865, 'Est. José Júlio de Souza', 1, 4),
(5, 0, 20021140, 'Infante Dom Henrique', 1, 5),
(6, 189273, 29055070, 'Cristóvão Jaques', 15, 6),
(7, 714, 29175520, 'Abido Saadi', 1, 7);

INSERT INTO IDADE_PUBLICO(id, intervalo)
VALUES (1, 'De 3 a 7'),
(2, 'De 8 a 13'),
(3, 'De 14 a 15'),
(4, 'De 16 a 18'),
(5, 'Acima de 18');


INSERT INTO EVENTO(id, descricao, nome, data, min_pessoas, preco, max_pessoas, visibilidade_tabela, horario_inicio, horario_fim, FK_INTUITO_id, FK_ENDERECO_id, FK_USUARIO_id, FK_IDADE_PUBLICO_id)
VALUES (1, 'Aula ofertada pelo Zico para crianças de até 12 anos. O evento terá duração de 2 horas. Participação somente com inscrição prévia.','Aula do Zico', '2023-08-16', 2, 97, 10, TRUE, '12:00:00', '14:00:00', 1, 1, 7, 2),
(2, 'Treino de futebol americano da igreja. Não pode xingamentos! Venha se ajuntar conosco pra praticar este esporte tão raro aqui no Brasil', 'Treino Black Knights', '2023-05-26', 5, 0, 18, TRUE, '10:00:00', '11:00:00', 2, 2, 11, 5),
(3, 'Aulão de natação no sesc de Aracruz, venha aprender mais sobre natação e se divertir nesse dia!', 'Desafio de Natação', '2023-07-12', 2, 0, 25, FALSE, '08:00:00', '10:00:00', 1, 3, 21, 1),
(4, 'Este é um projeto da Prefeitura de Vila Velha junto com o Point Mar Dourado de Beach Tennis, para inserir a modalidade nos esportes educacionais ofertados nas escolas futuramente.', 'Mar Dourado Beach Tennis', '2023-09-12', 5, 10, 50, FALSE, '11:00:00', '12:00:00', 1, 4, 25, 3),
(5, 'O percurso será da Praça dos Ciclista à Prainha. Os participantes passarão pelas avenidas Estudante José Júlio de Souza e Gil Veloso, além das ruas Castelo Branco e Antônio Ataíde. Durante o trajeto, uma das faixas das vias será interditada para passagem dos atletas. A Guarda Municipal dará apoio com batedores da motopatrulha e viaturas no deslocamento.', '10ª corrida da Penha', '2023-04-09', 100, 0, 500, FALSE, '07:30:00', '08:30:00', 3, 4, 30, 5),
(6, 'O L’ÉTAPE RIO DE JANEIRO SANTANDER é um evento de ciclismo amador, cujo objetivo é aproximar os participantes da experiência da maior competição de ciclismo do mundo.', 'L’ÉTAPE RIO DE JANEIRO', '2023-06-30', 500, 130, 1500, FALSE, '12:00:00', '14:00:00', 2, 5, 12, 5),
(7, 'Surf na cidade de Vila Velha - ES na Praia de Itaparica.', 'Surf - Praia de Itaparica', '2023-08-27', 2, 0, 10, FALSE, '06:00:00', '08:00:00', 3, 4, 25, 3),
(8, 'Basquete na cidade de Vitória - ES na Praça do Cauê, perto da Terceira Ponte.', 'Basquete - Praça do Cauê', '2023-07-05', 6, 0, 18, FALSE, '18:00:00', '20:00:00', 3, 6, 15, 4),
(9, 'Motocross na praia de Jacaraípe, venha aproveitar desse esporte conosco!', 'Motocross Arena Jacaraípe', '2023-09-20', 10, 15.9, 50, FALSE, '08:00:00', '11:00:00', 2, 7, 8, 5);

INSERT INTO CLASSIFICACAO (id, nome) 
VALUES (1, 'Futebol'), 
(2, 'Corrida'), 
(3, 'Natação'),
(4, 'Motocross'),
(5, 'Surf'),
(6, 'Basquete'),
(7, 'Vôlei'),
(8, 'Futebol americano'),
(9, 'Tênis'),
(10, 'Beach Tênis'),
(11, 'Ciclismo');


INSERT INTO USUARIO_EVENTO(id, FK_USUARIO_id, FK_EVENTO_id)
VALUES (1, 28, 1), 
(2, 29, 1),
(3, 18, 3),
(4, 19, 3),
(5, 1, 4), 
(6, 2, 4), 
(7, 3, 4),
(8, 4, 4),
(9, 5, 4),
(10, 8, 5),
(11, 22, 5),
(12, 30, 6),
(13, 29, 6),
(14, 2, 7),
(15, 3, 7),
(16, 16, 8),
(17, 17, 8),
(18, 28, 9),
(19, 17, 9);

INSERT INTO EVENTO_CLASSIFICACAO(id, FK_EVENTO_id, FK_CLASSIFICACAO_id)
VALUES (1, 1, 1),
(2, 2, 8),
(3, 3, 3),
(4, 4, 10), 
(5, 5, 11),
(6, 6, 11),
(7, 7, 5),
(8, 8, 6),
(9, 9, 4);

INSERT INTO FOTO_EVENTO(id, foto, FK_EVENTO_id)
VALUES (1, 'https://i.imgur.com/e3zPVU7.png', 1),
(2, 'https://i.imgur.com/e3zPVU7.png', 1),
(3, 'https://i.imgur.com/e3zPVU7.png', 1),
(4, 'https://i.imgur.com/VCe3NHw.png', 2),
(5, 'https://i.imgur.com/kCM7mkC.png', 3),
(6, 'https://i.imgur.com/kCM7mkC.png', 3),
(7, 'https://i.imgur.com/l9I9hL4.png', 9),
(8, 'https://i.imgur.com/MH8QB1D.png',  8),
(9, 'https://i.imgur.com/o0DzAVc.png', 4),
(10, 'https://i.imgur.com/o0DzAVc.png', 4),
(11, 'https://i.imgur.com/9Hq0GSy.png', 7),
(12, 'https://i.imgur.com/3GbNJut.png', 5),
(13, 'https://i.imgur.com/3GbNJut.png', 5),
(14, 'https://i.imgur.com/q24YyoK.png', 6),
(15, 'https://i.imgur.com/q24YyoK.png', 6),
(16, 'https://i.imgur.com/q24YyoK.png', 6);

INSERT INTO RECORRENTE(id, recorrencia)
VALUES (1, 'Domingo'),
(2, 'Segunda'),
(3, 'Terça'),
(4, 'Quarta'),
(5, 'Quinta'),
(6, 'Sexta'),
(7, 'Sábado');

INSERT INTO EVENTO_RECORRENTE(id, FK_EVENTO_id, FK_RECORRENTE_id)
VALUES (1, 1, 4),
(2, 4, 3),
(3, 2, 6),
(4, 1, 7);
