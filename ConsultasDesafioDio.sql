--1 (OK)
SELECT
	Nome, 
	Ano
FROM Filmes

--2 (OK)
SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

--3 (OK)
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4 (OK)
SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

--5 (OK)
SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000;

--6 (OK)
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7 (OK)
SELECT 
	Ano, 
	COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

--8 (OK)
SELECT 
	Id,
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

--9 (OK)
SELECT
	Id,
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10 (OK)
SELECT 
	f.Nome AS NomeFilme, 
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11 (OK)
SELECT 
	f.Nome AS NomeFilme, 
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

--12 (OK)
SELECT 
	f.Nome AS NomeFilme, 
	a.PrimeiroNome, 
	a.UltimoNome, 
	ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
