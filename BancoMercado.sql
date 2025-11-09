CREATE DATABASE MercadoBD;
GO

USE MercadoBD;
GO

Create table Produto(
IdProduto varchar(14) Primary key,
Nome Varchar(100) not null,
Preco decimal(10,2) not null,
Estoque int not null,
IdFornecedor int,
FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(IdFornecedor)
);
GO

Create table Cliente(
IdCliente int identity Primary Key,
Nome varchar(100) not null,
CPF varchar(14) not null,
Telefone varchar(20) not null,
Email varchar(100) not null
);
GO

Create table Fornecedor(
IdFornecedor int identity Primary Key,
RazaoSocial varchar(100) not null,
CNPJ varchar(18) not null,
Telefone varchar(20) not null,
Email varchar(100) not null
);
GO

Create table Usuario(
IdUsuario int identity Primary Key,
Nome varchar(100) not null,
Login varchar(50) not null,
Senha varchar(50) not null,
NivelAcesso varchar(20) not null
);
GO

Create table Venda(
IdVenda int identity Primary Key,
DataVenda datetime not null,
IdCliente int,
IdUsuario int ,
ValorTotal decimal(10,2) not null,
FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
);
GO

Create table ItemVenda(
IdItem int identity Primary Key,
IdVenda int,
IdProduto varchar(14),
Quantidade int not null,
Subtotal decimal(10,2) not null,
FOREIGN KEY (IdVenda) REFERENCES Venda(IdVenda),
FOREIGN KEY (IdProduto) REFERENCES Produto(IdProduto)
);
GO


INSERT INTO Usuario(Nome, Login, Senha, NivelAcesso)
VALUES ('LucasProf','Lucas','123','Gerente');








