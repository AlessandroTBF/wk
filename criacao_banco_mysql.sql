CREATE database teste_tecnico ;

CREATE TABLE teste_tecnico.cliente (
   codigo INT NOT NULL AUTO_INCREMENT,
   nome VARCHAR(80) NOT NULL UNIQUE,
   cidade VARCHAR(30) NOT NULL,
   uf VARCHAR(2) NOT NULL,
  PRIMARY KEY (codigo));
  
CREATE INDEX idx_clinte_nome ON teste_tecnico.cliente(nome); 

CREATE TABLE teste_tecnico.produto (
   codigo INT NOT NULL AUTO_INCREMENT,
   descricao VARCHAR(60) NOT NULL UNIQUE,
   preco_venda FLOAT NOT NULL,
  PRIMARY KEY (codigo)); 
  
CREATE INDEX idx_produto_descricao ON teste_tecnico.produto(descricao); 

CREATE TABLE teste_tecnico.pedido_dado_geral (
   numero_pedido INT NOT NULL,
   data_emissao DATE NOT NULL,
   codigo_cliente INT NOT NULL,
   valor_total FLOAT NOT NULL,
  PRIMARY KEY (numero_pedido),
  CONSTRAINT fk_cliente
    FOREIGN KEY (codigo_cliente)
    REFERENCES teste_tecnico.cliente (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE teste_tecnico.sequencial_pedido (
   numero_pedido INT NOT NULL);
  
CREATE TABLE teste_tecnico.pedido_produto (
   codigo INT NOT NULL AUTO_INCREMENT,
   numero_pedido INT NOT NULL,
   codigo_produto INT NOT NULL,
   quantidade INT,
   valor_unitario FLOAT NOT NULL,   
   valor_total FLOAT NOT NULL,
  PRIMARY KEY (codigo),
  CONSTRAINT fk_produto
    FOREIGN KEY (codigo_produto)
    REFERENCES teste_tecnico.produto (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);  

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Maria', 'Salvador', 'BA');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('José', 'Salvador', 'BA');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('João', 'Salvador', 'BA');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Paulo', 'Rio de Janeiro', 'RJ');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Pedro', 'São Paulo', 'SP');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Joaquim', 'Belo Horizonte', 'MG');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Luzia', 'Goiânia', 'GO');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Paulina', 'Rio Branco', 'AC');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Thadeu', 'Maceió', 'AL');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Bento', 'Manaus', 'AM');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Cecília', 'Fortaleza', 'CE');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Jorge', 'Florianópolis', 'SC');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Expedito', 'Natal', 'RN');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Peregrino', 'Porto Alegre', 'RS');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Rita', 'Boa Vista', 'RR');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Lucas', 'Teresina', 'PI');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Onofre', 'Recife', 'PE');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Efigênia', 'Jequié', 'BA');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Amaro', 'Vitória da Conquista', 'BA');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Pio', 'Aracaju', 'SE');

insert into teste_tecnico.cliente (nome, cidade, uf)
values ('Teresa', 'Belém', 'PA');


insert into teste_tecnico.produto (descricao, preco_venda)
values ('Bíblia', '30.0');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Terço', '12.50');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Imagem 7cm', '22');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Imagem 15cm', '59');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Imagem 20cm', '109');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Catecismo', '62');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Bíblia infantil', '50');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Dezena para carro', '20');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Camisa N S Aparecida', '68');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Diário Bíblico', '40');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Folhinha 2023', '25');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Capela', '70');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Liturgia', '8');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Pulseira São Bento', '10');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Calendário 2023', '23');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Quadro', '130');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Santo Anjo de mesa', '68');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Santo Anjo de parede', '64');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Diário Espiritual', '48');

insert into teste_tecnico.produto (descricao, preco_venda)
values ('Ofício', '10');

insert into teste_tecnico.sequencial_pedido (numero_pedido) values(1);
