CREATE DATABASE MercadoBD;
USE MercadoBD;

Create table Produto(
IdProduto int identity Primary key,
Nome Varchar(100) not null,
Preco decimal(10,2) not null,
Estoque int not null,
IdFornecedor int,
FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(IdFornecedor)
);

Create table Cliente(
IdCliente int identity Primary Key,
RazaoSocial varchar(100) not null,
CPF varchar(14) not null,
Telefone varchar(20) not null,
Email varchar(100) not null
);

Create table Fornecedor(
IdFornecedor int identity Primary Key,
RazaoSocial varchar(100) not null,
CNPJ varchar(18) not null,
Telefone varchar(20) not null,
Email varchar(100) not null
);

Create table Usuario(
IdUsuario int identity Primary Key,
Nome varchar(100) not null,
Login varchar(50) not null,
Senha varchar(50) not null,
NivelAcesso varchar(20) not null
);

Create table Venda(
IdVenda int identity Primary Key,
DataVenda datetime not null,
IdCliente int,
IdUsuario int ,
ValorTotal decimal(10,2) not null,
FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
);

Create table ItemVenda(
IdItem int identity Primary Key,
IdVenda int,
IdProduto int,
Quantidade int not null,
Subtotal decimal(10,2) not null,
FOREIGN KEY (IdVenda) REFERENCES Venda(IdVenda),
FOREIGN KEY (IdProduto) REFERENCES Produto(IdProduto)
);
