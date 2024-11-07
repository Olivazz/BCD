CREATE DATABASE IF NOT EXISTS db_oficina;
USE db_oficina;

CREATE TABLE tb_carros (
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(8) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    ano INT NOT NULL,
    cor VARCHAR(20) NOT NULL,
    proprietario VARCHAR(100) NOT NULL
);

CREATE TABLE tb_servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_carro INT,
    descricao VARCHAR(255) NOT NULL,
    data_servico DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    mecanico VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_carro) REFERENCES tb_carros(id_carro) ON DELETE CASCADE
);

INSERT INTO tb_carros (placa, modelo, marca, ano, cor, proprietario) VALUES
('ABC1D23', 'Civic', 'Honda', 2018, 'Prata', 'João Silva'),
('XYZ4E56', 'Corolla', 'Toyota', 2020, 'Preto', 'Maria Oliveira'),
('KLM7F89', 'Fiesta', 'Ford', 2015, 'Branco', 'Carlos Sousa'),
('GHI1J23', 'Cruze', 'Chevrolet', 2019, 'Vermelho', 'Ana Souza'),
('JKL4M56', 'Golf', 'Volkswagen', 2021, 'Azul', 'Paulo Lima'),
('MNO7P89', 'Focus', 'Ford', 2017, 'Cinza', 'Beatriz Almeida'),
('RST1Q23', 'HB20', 'Hyundai', 2016, 'Preto', 'Fernanda Costa'),
('UVW4R56', 'Compass', 'Jeep', 2021, 'Prata', 'José Santos'),
('XYZ7S89', 'Civic', 'Honda', 2018, 'Azul', 'Luiz Silva'),
('ABC1T23', 'Ranger', 'Ford', 2020, 'Branco', 'Patrícia Moreira'),
('DEF4U56', 'Onix', 'Chevrolet', 2019, 'Vermelho', 'Roberto Ribeiro'),
('GHI7V89', 'S10', 'Chevrolet', 2021, 'Preto', 'Mariana Martins'),
('JKL1W23', 'Renegade', 'Jeep', 2020, 'Verde', 'Marcelo Duarte'),
('MNO4X56', 'Corolla', 'Toyota', 2019, 'Cinza', 'Gabriel Campos'),
('PQR7Y89', 'Fit', 'Honda', 2017, 'Prata', 'Juliana Cardoso');

INSERT INTO tb_servicos (id_carro, descricao, data_servico, valor, mecanico, status) VALUES
(2, 'Troca de óleo', '2023-10-01', 150.00, 'Carlos Mecânico', 'Concluído'),
(2, 'Alinhamento e balanceamento', '2023-10-02', 120.00, 'Luiz Mecânico', 'Concluído'),
(3, 'Revisão completa', '2023-10-03', 500.00, 'João Mecânico', 'Concluído'),
(4, 'Substituição de freios', '2023-10-04', 300.00, 'Roberto Mecânico', 'Em andamento'),
(5, 'Troca de pneus', '2023-10-05', 800.00, 'Carlos Mecânico', 'Concluído'),
(6, 'Troca de bateria', '2023-10-06', 400.00, 'Luiz Mecânico', 'Concluído'),
(7, 'Alinhamento', '2023-10-07', 110.00, 'João Mecânico', 'Concluído'),
(8, 'Reparo de suspensão', '2023-10-08', 750.00, 'Roberto Mecânico', 'Em andamento'),
(9, 'Limpeza do sistema de arrefecimento', '2023-10-09', 200.00, 'Carlos Mecânico', 'Concluído'),
(10, 'Troca de óleo', '2023-10-10', 150.00, 'Luiz Mecânico', 'Concluído'),
(11, 'Troca de pastilhas de freio', '2023-10-11', 220.00, 'João Mecânico', 'Concluído'),
(12, 'Substituição de velas', '2023-10-12', 180.00, 'Roberto Mecânico', 'Concluído'),
(13, 'Revisão elétrica', '2023-10-13', 350.00, 'Carlos Mecânico', 'Concluído'),
(14, 'Revisão geral', '2023-10-14', 550.00, 'Luiz Mecânico', 'Em andamento'),
(15, 'Troca de óleo', '2023-10-15', 150.00, 'João Mecânico', 'Concluído'),
(3, 'Reparo de escapamento', '2023-10-16', 300.00, 'Roberto Mecânico', 'Concluído'),
(2, 'Balanceamento', '2023-10-17', 100.00, 'Carlos Mecânico', 'Concluído'),
(3, 'Revisão de suspensão', '2023-10-18', 600.00, 'Luiz Mecânico', 'Em andamento'),
(4, 'Troca de filtros', '2023-10-19', 250.00, 'João Mecânico', 'Concluído'),
(5, 'Substituição de correias', '2023-10-20', 450.00, 'Roberto Mecânico', 'Em andamento'),
(6, 'Alinhamento e balanceamento', '2023-10-21', 120.00, 'Carlos Mecânico', 'Concluído'),
(7, 'Reparo de motor', '2023-10-22', 1200.00, 'Luiz Mecânico', 'Em andamento'),
(8, 'Troca de bateria', '2023-10-23', 400.00, 'João Mecânico', 'Concluído'),
(9, 'Revisão completa', '2023-10-24', 500.00, 'Roberto Mecânico', 'Concluído'),
(10, 'Reparo elétrico', '2023-10-25', 300.00, 'Carlos Mecânico', 'Em andamento'),
(11, 'Troca de óleo', '2023-10-26', 150.00, 'Luiz Mecânico', 'Concluído'),
(12, 'Balanceamento', '2023-10-27', 100.00, 'João Mecânico', 'Concluído'),
(13, 'Troca de pneus', '2023-10-28', 800.00, 'Roberto Mecânico', 'Concluído'),
(14, 'Troca de filtros', '2023-10-29', 250.00, 'Carlos Mecânico', 'Em andamento'),
(15, 'Reparo de suspensão', '2023-10-30', 750.00, 'Luiz Mecânico', 'Concluído'),
(4, 'Troca de pastilhas de freio', '2023-10-31', 220.00, 'João Mecânico', 'Concluído'),
(2, 'Revisão elétrica', '2023-11-01', 350.00, 'Roberto Mecânico', 'Concluído'),
(3, 'Substituição de velas', '2023-11-02', 180.00, 'Carlos Mecânico', 'Concluído'),
(4, 'Alinhamento', '2023-11-03', 110.00, 'Luiz Mecânico', 'Concluído'),
(5, 'Limpeza do sistema de arrefecimento', '2023-11-04', 200.00, 'João Mecânico', 'Em andamento'),
(6, 'Troca de óleo', '2023-11-05', 150.00, 'Roberto Mecânico', 'Concluído'),
(7, 'Reparo de motor', '2023-11-06', 1200.00, 'Carlos Mecânico', 'Em andamento'),
(8, 'Revisão completa', '2023-11-07', 500.00, 'Luiz Mecânico', 'Concluído'),
(9, 'Troca de filtros', '2023-11-08', 250.00, 'João Mecânico', 'Em andamento'),
(10, 'Reparo elétrico', '2023-11-09', 300.00, 'Roberto Mecânico', 'Concluído'),
(11, 'Troca de bateria', '2023-11-10', 400.00, 'Carlos Mecânico', 'Concluído'),
(12, 'Troca de pneus', '2023-11-11', 800.00, 'Luiz Mecânico', 'Em andamento'),
(13, 'Substituição de correias', '2023-11-12', 450.00, 'João Mecânico', 'Concluído'),
(14, 'Revisão geral', '2023-11-13', 550.00, 'Roberto Mecânico', 'Concluído'),
(15, 'Troca de óleo', '2023-11-14', 150.00, 'Carlos Mecânico', 'Concluído');

-- 1
SELECT * FROM tb_carros;

-- 2
SELECT modelo, ano, marca FROM tb_carros WHERE marca = 'Ford';

-- 3
SELECT status FROM tb_servicos WHERE status = 'Em andamento';

-- 4
SELECT modelo, cor, proprietario FROM tb_carros INNER JOIN tb_servicos WHERE descricao = 'Troca de óleo';

-- 5
SELECT * FROM tb_carros LEFT JOIN tb_servicos ON tb_carros.id_carro = tb_servicos.id_carro ORDER BY status ASC;

-- 6
SELECT tb_carros.modelo, count(tb_servicos.descricao) AS servicos FROM tb_servicos inner join tb_carros On tb_carros.id_carro = tb_servicos.id_carro  group by tb_carros.modelo order by tb_carros.modelo;

-- 7
SELECT mecanico, COUNT(valor) as valor_total from tb_servicos where status = 'Concluido' group by mecanico;

-- 8 
SELECT modelo FROM tb_carros INNER JOIN tb_servicos ON tb_carros.id_carro = tb_servicos.id_carro where descricao is null;

-- 9
SELECT marca, AVG(tb_servicos.valor) AS media FROM tb_carros INNER JOIN tb_servicos ON tb_carros.id_carro = tb_servicos.id_carro WHERE marca = 'honda';

-- 10
SELECT ;