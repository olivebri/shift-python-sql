--comando para alterar uma tabela no SQL
ALTER TABLE nome_da_tabela
    ADD CONSTRAINT nome_da_constraint
    FOREIGN KEY 


-- alter table categoria rename to categorias;



-- adicionar uma nova foreign key na tabela
alter table livros 
	add constraint fk_categoria foreign key (categoria_id)
    -- precisamos mostrar aonde que ele esta referenciando
	references categorias (id)

--1
select * from livros
order by paginas desc

--2
select titulo,paginas from livros
where ano = 2000

--3
select * from autores 
where nome like 'A%'

--4
select * from livros
order by paginas desc 
limit 1


select * from livros 
where paginas = (select MAX(paginas) from livros)


--5
select l.titulo, l.ano from livros as l
inner join editoras e
on 
l.editora_id = e.id
where e.nome = 'Galera'

--6
select l.titulo, e.nome as editora from livros as l
inner join editoras e 
on
l.editora_id = e.id 

--7
select  c.nome, count(*) from livros l
inner join categorias c 
on
l.categoria_id = c.id
group by c.nome

--8
select e.nome, AVG(l.paginas) as media_paginas from livros l
inner join editoras e
on l.editora_id = e.id 
group by e.nome

--9
select l.titulo, c.nome as categoria from livros as l
inner join categorias as c 
on
l.categoria_id = c.id 
where c.nome = 'Ficção'
order by l.titulo asc

--10
select a.nome,count(a.nome) from autores as a
inner join livros as l 
on
a.id = l.autor_id
group by a.nome 
HAVING COUNT(*) > 2;

select a.nome, COUNT(*) as total_livros from autores a
inner join livros l 
on
l.autor_id = a.id 
group by a.nome




