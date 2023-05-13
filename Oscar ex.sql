

-- 1 - Quantas vezes Natalie Portman foi indicada ao Oscar?

SELECT COUNT(*) FROM movies WHERE name = 'Natalie Portman';
 
 -- R: Três vezes

 
 -- 2 - Quantos Oscars Natalie Portman ganhou?

SELECT COUNT(*) FROM movies WHERE name = 'Natalie Portman' AND winner = 'true';

-- R: Uma vez


-- 3 - Amy Adams já ganhou algum Oscar?

SELECT * FROM movies WHERE name = 'Amy Adams' AND winner = 'True';

-- R: Não


-- 4 - A série de filmes Toy Story ganhou um Oscar em quais anos?

SELECT * FROM movies WHERE film LIKE 'Toy Story%';

-- R: Em 2011 e 2020


-- 5 - Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

SELECT COUNT(*) FROM movies WHERE category = 'BEST PICTURE' AND winner = 'True';
SELECT COUNT(*) FROM movies WHERE category = 'Actor' AND winner = 'True';


-- R: A categoria "Melhor Filme" tem mais Oscars contando com 58 oscars.


-- 6 - O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

SELECT * FROM movies WHERE winner = 'True' AND category = 'Actress';

-- R: Para Janet Gaynor em 1928


-- 7 - Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
-- R: 

UPDATE movies SET winner = 0 WHERE winner = 'false';
UPDATE movies SET winner = 1 WHERE winner = 'true';


-- 8 - Em qual edição do Oscar "Crash" ganhou o prêmio principal?

SELECT * FROM movies WHERE film = 'Crash' AND winner = 1;
 
-- R: "Crash" ganhou o prêmio de melhor filme na 78° edição do Oscar, no ano de 2006.


-- 9 - Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

UPDATE movies SET winner = 1 WHERE id_movie = '7749';


-- R: Good Will Hunting



-- 10 - O filme Central do Brasil aparece no Oscar?

SELECT * FROM movies WHERE film = 'Central do Brasil';

-- R: Não.


-- 11 - Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.


INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018,  2019, 91, 'BEST PICTURE', 'Marvel Studios, producer', 'Vingadores Guerra Infinita', 0);

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2016,2017, 89, 'WRITING (Adaptation)', 'Written by Makoto Shinkai', 'Your Name', 0);

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004,2005,77,'BEST PICTURE', 'Avi Arad, Laura Ziskin and Lorne Orleans, producers', 'Homem Aranha 2', 0);

-- R: "Homem Aranha 2" , "Vingadores Guerra Infinita" E "Your Name".

 
-- 12 - Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

-- R: Categoria: "plot twist"

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018,  2019, 91, 'PLOT TWIST', 'Marvel Studios, producer', 'Vingadores Guerra Infinita', 1);

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2016,2017, 89, 'PLOT TWIST', 'Written by Makoto Shinkai', 'Your Name', 1);

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004,2005,77,'PLOT TWIST', 'Avi Arad, Laura Ziskin and Lorne Orleans, producers', 'Homem Aranha 2', 1);


-- 13 - Qual foi o primeiro ano a ter um prêmio do Oscar?

SELECT * FROM movies WHERE ceremony= 1;

-- R: Em 1928.


-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

SELECT * FROM movies WHERE year_ceremony= '2003';


-- R: O Oscar de melhor filme foi para: "Chicago"; o de melhor diretor para  'Roman Polans' do filme :"The Pianist" e não teve prêmio de melhor de atriz.


-- 15 - Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018, 2019, 91, 'ACTRESS', 'Letitia Wright', 'Black Panther', 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2021, 2022, 94, 'ACTRESS', 'Hanggini Purinda Retto', 'Geez & Ann', 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018, 2019, 91, 'ACTRESS', 'Amy Sun', 'Accidentally in Love', 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2020, 2021, 92, 'ACTRESS', 'Seo Ye-ji', "It's Okay to Not Be Okay", 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2022, 2023, 95, 'ACTRESS', 'Gal Gadot', 'Death on the Nile', 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2021,2022,94,'ACTRESS', 'Pallavi Sharda', 'wedding season', 0);
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2022, 2023, 95, 'ACTRESS', 'Hazal Kaya', 'Midnight at the Pera Palace', 0);

-- 16 - Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?
 
 INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2017, 2018, 90, 'ACTOR', 'Hugh Jackman', 'Logan', 1);
 
 -- R: Hugh Jackman - Ele é um defensor da educação e da luta contra a pobreza, trabalhando com a Laughing Man Foundation para apoiar projetos de desenvolvimento comunitário.