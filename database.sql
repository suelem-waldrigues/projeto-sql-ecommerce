SELECT * FROM tabelafornecedores;  /*exibe todos os itens da tabela*/

SELECT * FROM tabelafornecedores WHERE pai_s_de_origem = 'China'; /*traz dados de todos os cliente do pais selecionado*/

SELECT DISTINCT cliente FROM tabelapedidos; /*buscando um dado especifico de uma tabela específica*/

CREATE TABLE tabelaClientes (
  ID_Cliente INT PRIMARY KEY,
  Nome_Cliente VARCHAR (250),
  Informacoes_de_Contato VARCHAR (250)
  ); /* criar uma tabela*/
  
SELECT * FROM tabelaClientes;


ALTER TABLE tabelaClientes ADD Endereço_cliente VARCHAR (250); /* Inserir uma nova coluna a tabela*/

DROP TABLE tabelaClientes; /* muito CUIDADO com esse comando, ele serve para apagar uma tabela inteira*/

CREATE TABLE tabelacategorias (
  ID_Categoria INT PRIMARY KEY,
  Nome_Categoria VARCHAR (250),
  Descricao_Categoria TEXT
  );
  
 CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_do_produto VARCHAR (250),
  Descricão TEXT,
  Categoria INT,
  Preco_de_compra DECIMAL (10,2),
  Unidade VARCHAR (50),
  Fornecedor INT,
  Data_de_inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria), 
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)
  );
  
  
  INSERT INTO tabelaClientes
(id_cliente,
 nome_cliente,
 informacoes_de_contato,
 endereço_cliente)
 VALUES
 ('1', 'Ana Silva', 'ana.silva@email.com', 'rua flores, casa 1');
 
 SELECT * FROM tabelaClientes;
 
 INSERT INTO tabelaClientes
(id_cliente,
 nome_cliente,
 informacoes_de_contato,
 endereço_cliente)
 VALUES
 ('2', 'João Santoa', 'joao.santos@provedor.com', 'rua dos pinheiros, nº 25'),
 ('3', 'Maria Fernandes', 'maria.fernandes@provedor.com', 'rua dos pinheiros, nº 32'),
 ('4', 'Carlos Ferreira', 'carlos.ferreira@provedor.com', 'rua dos pinheiros, nº 50');
 
 SELECT * FROM tabelaClientes;
 
INSERT INTO tabelaClientes
(id_cliente,
 nome_cliente,
 informacoes_de_contato,
 endereço_cliente)
 VALUES
('5', 'Patrícia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123'),
('6', 'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
('7', 'André Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789'),
('8', 'Isabela Rodrigues', 'isabela.rodrigues@email.com', 'Rua da Paz, 321'),
('9', 'Ricardo Sousa', 'ricardo.sousa@email.com', 'Alameda dos Sonhos, 654'),
('10', 'Luana Gomes', 'luana.gomes@email.com', 'Praceta das Estrelas, 987'),
('11', 'Juliano Costa', 'juliano.costa@email.com', 'Av. Principal, 234'),
('12', 'Sandra Ferreira', 'sandra.ferreira@email.com', 'Rua da Liberdade, 567'),
('13', 'Roberto Barbosa', 'roberto.barbosa@email.com', 'Rua da Esquina, 432'),
('14', 'Alice Santos', 'alice.santos@email.com', 'Largo da Amizade, 765'),
('15', 'Gustavo Lima', 'gustavo.lima@email.com', 'Avenida das Árvores, 876'),
('16', 'Carla Silva', 'carla.silva@email.com', 'Travessa das Aves, 345'),
('17', 'Daniel Oliveira', 'daniel.oliveira@email.com', 'Alameda dos Bosques, 678'),
('18', 'Luciana Almeida', 'luciana.almeida@email.com', 'Rua das Colinas, 123'),
('19', 'Fernando Pereira', 'fernando.pereira@email.com', 'Avenida das Ondas, 987'),
('20', 'Marina Lima', 'marina.lima@email.com', 'Praceta dos Girassóis, 456'),
('21', 'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua das Montanhas, 321'),
('22', 'Adriana Sousa', 'adriana.sousa@email.com', 'Travessa dos Rios, 654'),
('23', 'Eduardo Gomes', 'eduardo.gomes@email.com', 'Avenida das Pedras, 789'),
('24', 'Marcia Costa', 'marcia.costa@email.com', 'Largo das Praias, 234'),
('25', 'José Silva', 'jose.silva@email.com', 'Av. dos Ventos, 432'),
('26', 'Beatriz Alves', 'beatriz.alves@email.com', 'Rua dos Coqueiros, 765'),
('27', 'André Santos', 'andre.santos@email.com', 'Avenida dos Lagos, 876'),
('28', 'Carolina Lima', 'carolina.lima@email.com', 'Travessa das Neves, 345'),
('29', 'Fábio Rodrigues', 'fabio.rodrigues@email.com', 'Alameda dos Campos, 678'),
('30', 'Larissa Pereira', 'larissa.pereira@email.com', 'Rua dos Bosques, 123');


INSERT INTO tabelaprodutos
(id_produto,
 nome_do_produto,
 descricão,
 categoria,
 preco_de_compra,
 unidade,
 fornecedor,
 data_de_inclusao)
 VALUES
(1, 'Smartphone X', 'Smartphone de última geração', 1, 699.99, 'Unidade', 1, '2023-08-01'),
(2, 'Notebook Pro', 'Notebook poderoso com tela HD', 2, 1199.99, 'Unidade', 2, '2023-08-02'),
(3, 'Tablet Lite', 'Tablet compacto e leve', 3, 299.99, 'Unidade', 3, '2023-08-03'),
(4, 'TV LED 55"', 'TV LED Full HD de 55 polegadas', 4, 599.99, 'Unidade', 4, '2023-08-04'),
(5, 'Câmera DSLR', 'Câmera digital DSLR com lente intercambiável', 5, 699.99, 'Unidade', 5, '2023-08-05'),
(6, 'Impressora Laser', 'Impressora laser de alta qualidade', 6, 349.99, 'Unidade', 6, '2023-08-06'),
(7, 'Mouse Óptico', 'Mouse óptico sem fio', 7, 19.99, 'Unidade', 7, '2023-08-07'),
(8, 'Teclado sem Fio', 'Teclado sem fio ergonômico', 8, 39.99, 'Unidade', 8, '2023-08-08'),
(9, 'Headphones Estéreo', 'Headphones estéreo com cancelamento de ruído', 9, 149.99, 'Unidade', 9, '2023-08-09'),
(10, 'Smartwatch', 'Smartwatch com monitor de frequência cardíaca', 10, 199.99, 'Unidade', 10, '2023-08-10'),
(11, 'Monitor 24"', 'Monitor LED Full HD de 24 polegadas', 11, 149.99, 'Unidade', 11, '2023-08-11'),
(12, 'HD Externo 1TB', 'HD Externo portátil de 1TB', 12, 79.99, 'Unidade', 12, '2023-08-12'),
(13, 'Drone DJI', 'Drone DJI com câmera 4K', 13, 799.99, 'Unidade', 13, '2023-08-13'),
(14, 'Console de Jogos', 'Console de jogos de última geração', 14, 299.99, 'Unidade', 14, '2023-08-14'),
(15, 'Fones de Ouvido Bluetooth', 'Fones de ouvido Bluetooth com estojo de carregamento', 15, 59.99, 'Unidade', 15, '2023-08-15'),
(16, 'Projetor HD', 'Projetor HD de alta definição', 16, 499.99, 'Unidade', 16, '2023-08-16'),
(17, 'Impressora Multifuncional', 'Impressora multifuncional com scanner', 6, 249.99, 'Unidade', 6, '2023-08-17'),
(18, 'Notebook Ultrafino', 'Notebook ultrafino com SSD rápido', 2, 999.99, 'Unidade', 2, '2023-08-18'),
(19, 'Mouse Gamer', 'Mouse gamer com iluminação RGB', 7, 49.99, 'Unidade', 7, '2023-08-19'),
(20, 'Câmera de Ação', 'Câmera de ação à prova d''água', 5, 129.99, 'Unidade', 5, '2023-08-20'),
(21, 'Tablet Profissional', 'Tablet profissional para designers', 3, 499.99, 'Unidade', 3, '2023-08-21'),
(22, 'Monitor Curvo', 'Monitor LED curvo de 32 polegadas', 11, 299.99, 'Unidade', 11, '2023-08-22'),
(23, 'Teclado Mecânico', 'Teclado mecânico para jogos', 8, 89.99, 'Unidade', 8, '2023-08-23'),
(24, 'Console Portátil', 'Console de jogos portátil', 14, 199.99, 'Unidade', 14, '2023-08-24'),
(25, 'HD Externo 2TB', 'HD Externo portátil de 2TB', 12, 109.99, 'Unidade', 12, '2023-08-25'),
(26, 'Kit de Caixas de Som', 'Kit de caixas de som estéreo', 17, 29.99, 'Unidade', 17, '2023-08-26'),
(27, 'Câmera de Segurança', 'Câmera de segurança com visão noturna', 18, 79.99, 'Unidade', 18, '2023-08-27'),
(28, 'Projetor Mini', 'Projetor mini portátil', 16, 199.99, 'Unidade', 16, '2023-08-28'),
(29, 'Impressora a Jato de Tinta', 'Impressora a jato de tinta colorida', 6, 89.99, 'Unidade', 6, '2023-08-29'),
(30, 'Servidor de Rede', 'Servidor de rede empresarial', 19, 799.99, 'Unidade', 19, '2023-08-30'),
(31, 'Smartphone Y', 'Smartphone de última geração', 1, 699.99, 'Unidade', 1, '2022-08-01'),
(32, 'Notebook Avançado', 'Notebook poderoso com tela Full HD', 2, 1299.99, 'Unidade', 2, '2022-08-02'),
(33, 'Tablet Pro', 'Tablet profissional com caneta stylus', 3, 399.99, 'Unidade', 3, '2022-08-03'),
(34, 'TV OLED 65"', 'TV OLED 4K de 65 polegadas', 4, 899.99, 'Unidade', 4, '2022-08-04'),
(35, 'Câmera Mirrorless', 'Câmera digital mirrorless de alta qualidade', 5, 799.99, 'Unidade', 5, '2022-08-05'),
(36, 'Impressora Jato de Tinta', 'Impressora jato de tinta colorida', 6, 299.99, 'Unidade', 6, '2022-08-06'),
(37, 'Mouse Bluetooth', 'Mouse Bluetooth ergonômico', 7, 29.99, 'Unidade', 7, '2022-08-07'),
(38, 'Teclado Mecânico RGB', 'Teclado mecânico RGB para gamers', 8, 59.99, 'Unidade', 8, '2022-08-08'),
(39, 'Fones de Ouvido Sem Fio', 'Fones de ouvido sem fio com cancelamento de ruído', 9, 169.99, 'Unidade', 9, '2022-08-09'),
(40, 'Smartwatch Pro', 'Smartwatch com GPS e monitor de saúde', 10, 249.99, 'Unidade', 10, '2022-08-10'),
(41, 'Monitor 27"', 'Monitor LED Quad HD de 27 polegadas', 11, 199.99, 'Unidade', 11, '2022-08-11'),
(42, 'HD Externo 4TB', 'HD Externo portátil de 4TB', 12, 129.99, 'Unidade', 12, '2022-08-12'),
(43, 'Drone DJI Pro', 'Drone DJI com câmera 8K', 13, 1199.99, 'Unidade', 13, '2022-08-13'),
(44, 'Console de Jogos Elite', 'Console de jogos de elite com VR', 14, 599.99, 'Unidade', 14, '2022-08-14'),
(45, 'Fones de Ouvido com Cancelamento de Ruído', 'Fones de ouvido com cancelamento de ruído ativo', 15, 89.99, 'Unidade', 15, '2022-08-15'),
(46, 'Projetor 4K', 'Projetor 4K de alta definição', 16, 799.99, 'Unidade', 16, '2022-08-16'),
(47, 'Impressora Laser Colorida', 'Impressora laser colorida de alta qualidade', 6, 349.99, 'Unidade', 6, '2022-08-17'),
(48, 'Notebook Ultrafino SSD', 'Notebook ultrafino com SSD rápido', 2, 1099.99, 'Unidade', 2, '2022-08-18'),
(49, 'Mouse Gamer RGB', 'Mouse gamer com iluminação RGB personalizável', 7, 69.99, 'Unidade', 7, '2022-08-19'),
(50, 'Câmera de Ação Pro', 'Câmera de ação 4K à prova dágua', 5, 149.99, 'Unidade', 5, '2022-08-20'),
(51, 'Tablet Profissional', 'Tablet profissional para designers e artistas', 3, 449.99, 'Unidade', 3, '2021-08-21'),
(52, 'Monitor Curvo 34"', 'Monitor LED curvo ultra-amplo de 34 polegadas', 11, 399.99, 'Unidade', 11, '2021-08-22'),
(53, 'Teclado Mecânico Retroiluminado', 'Teclado mecânico com retroiluminação', 8, 79.99, 'Unidade', 8, '2021-08-23'),
(54, 'Console Portátil Clássico', 'Console portátil com jogos clássicos', 14, 149.99, 'Unidade', 14, '2021-08-24'),
(55, 'HD Externo 5TB', 'HD Externo portátil de 5TB', 12, 149.99, 'Unidade', 12, '2021-08-25'),
(56, 'Kit de Caixas de Som Bluetooth', 'Kit de caixas de som Bluetooth estéreo', 17, 49.99, 'Unidade', 17, '2021-08-26'),
(57, 'Câmera de Segurança HD', 'Câmera de segurança HD com gravação em nuvem', 18, 99.99, 'Unidade', 18, '2021-08-27'),
(58, 'Projetor Portátil', 'Projetor portátil de alta qualidade', 16, 249.99, 'Unidade', 16, '2021-08-28'),
(59, 'Impressora a Laser Monocromática', 'Impressora a laser monocromática de alta velocidade', 6, 169.99, 'Unidade', 6, '2021-08-29'),
(60, 'Servidor de Rede Empresarial', 'Servidor de rede empresarial com suporte 24/7', 19, 1999.99, 'Unidade', 19, '2021-08-30');

SELECT * FROM tabelaprodutos;


CREATE TABLE tabelapedidosgold (
 ID_pedido_gold INT PRIMARY KEY,
 Data_Do_Pedido_gold DATE,
 Status_gold VARCHAR(50),
 Total_Do_Pedido_gold DECIMAL(10, 2),
 Cliente_gold INT,
 Data_De_Envio_Estimada_gold DATE,
 FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes(id_cliente)
);


INSERT INTO tabelapedidosgold
(id_pedido_gold,
 data_do_pedido_gold,
 status_gold,
 total_do_pedido_gold,
 cliente_gold,
 data_de_envio_estimada_gold)
 SELECT
 id,
 data_do_pedido,
 status,
 total_do_pedido,
 cliente,
 data_de_envio_es
 fROM tabelapedidos
 WHERE total_do_pedido >= 400;
 
SELECT * FROM tabelapedidosgold;
 
 
SELECT * FROM tabelapedidos WHERE data_do_pedido >'2023-09-19';
    
SELECT * from tabelapedidos;

SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200 AND status = 'Pendente';

SELECT * FROM tabelapedidos WHERE status = 'Pendente' OR status = 'Processando';

SELECT * FROM tabelapedidos WHERE NOT status = 'Pendente';

SELECT * FROM tabelapedidos WHERE data_de_envio_es BETWEEN '2023-08-01' and '2023-09-01';

SELECT * FROM tabelaprodutos WHERE preco_de_compra BETWEEN 200 and 600 ORDER BY nome_do_produto;

SELECT * FROM tabelaprodutos WHERE preco_de_compra BETWEEN 200 and 600 ORDER BY data_de_inclusao;

SELECT * FROM tabelaprodutos WHERE preco_de_compra BETWEEN 200 and 600 ORDER BY fornecedor;

SELECT * FROM tabelaprodutos WHERE preco_de_compra BETWEEN 200 and 600 ORDER BY fornecedor DESC;

SELECT informacoes_de_contato as email_cliente FROM tabelaClientes;

UPDATE tabelapedidos SET status = 'Enviado' WHERE status = 'Processando';

SELECT * FROM tabelapedidos;


UPDATE tabelaClientes SET informacoes_de_contato = 'j.santos@email.com', endereço_cliente = 'rua dos triangulos, nº 30'
WHERE id_cliente = 2; /* alterar dados da coluna*/

SELECT * FROM tabelaClientes;


DELETE from tabelafornecedores WHERE pai_s_de_origem = 'Turquia';

SELECT * FROM tabelafornecedores;

DELETE from tabelafornecedores WHERE id > 35;


CREATE TABLE tabelafuncionarios
(ID INT PRIMARY KEY,
 Nome VARCHAR (100),
 Departamento VARCHAR (100),
 Salario Float);
 
 
 INSERT INTO tabelafuncionarios
 (id,
  nome,
  departamento,
  salario)
  VALUES
  ('1', 'Heitor Vieira', 'Financeiro', 4959.22),
  ('2', 'Daniel Campos', 'Vendas', 3884.44),
  ('3', 'Luiza Dias', 'TI', 8205.78),
  ('4', 'Davi Lucas Moraes', 'Financeiro', 8437.02),
  ('5', 'Pietro Cavalcanti', 'TI', 4946.88),
  ('6', 'Evelyn da Mata', 'Vendas', 5278.88),
  ('7', 'Isabella Rocha', 'Marketing', 4006.03),
  ('8', 'Manuela Azevedo', 'Vendas', 6101.88),
  ('9', 'Brenda Cardoso', 'TI', 8853.34),
  ('10', 'Danilo Souza', 'TI', 8242.14);
  
/*  SELECT * FROM tabelafuncionarios;
  
  SELECT * FROM tabelafuncionarios WHERE departamento = 'Vendas';
  
  SELECT * FROM tabelafuncionarios WHERE salario > 5000;
  
SELECT DISTINCT departamento FROM tabelafuncionarios;

UPDATE tabelafuncionarios SET salario = 7500 WHERE departamento = 'TI';

DELETE FROM tabelafuncionarios WHERE salario < 4000;

SELECT nome, salario FROM tabelafuncionarios WHERE departamento = 'Vendas' AND salario >= 6000;

CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES tabelafuncionarios(id)
); */

DROP TABLE tabelafuncionarios;

INSERT INTO projetos 
(id_projeto, 
 nome_projeto, 
 id_gerente) 
VALUES 
(1, 'Projeto A', 2);

SELECT * FROM projetos WHERE id_gerente = 2;

