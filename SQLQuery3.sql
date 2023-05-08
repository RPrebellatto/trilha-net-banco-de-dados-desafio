SELECT nome, ano FROM FILMES;

SELECT nome, ano FROM FILMES ORDER BY ano;

SELECT nome, ano, duracao FROM FILMES WHERE nome = 'De Volta para o Futuro'; 

SELECT * FROM FILMES WHERE ano = 1997;

SELECT * FROM FILMES WHERE ano > 2000;

SELECT * FROM FILMES WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao;

SELECT ano, COUNT(*) Quantidade FROM FILMES GROUP BY ano ORDER BY Quantidade DESC;

SELECT primeironome, ultimonome, genero  FROM atores WHERE Genero = 'M';

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT f.nome, g.genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.nome, g.genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério';

SELECT f.nome, a.primeironome, a.ultimonome, ef.papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;