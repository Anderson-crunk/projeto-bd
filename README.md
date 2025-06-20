# 📦 Projeto de Banco de Dados — Sistema de Vendas

Este projeto contém a modelagem e estrutura básica de um banco de dados relacional para um sistema de vendas simples, com controle de versão utilizando Git e GitHub.

## 🎯 Objetivo

Criar um banco de dados com pelo menos duas tabelas relacionadas, inserindo dados de exemplo e versionando todo o processo com Git, como parte de um exercício prático sobre bancos de dados e controle de versão.

## 🧱 Estrutura do Banco de Dados

O sistema é composto por duas tabelas:

- `produtos`: armazena os dados dos produtos vendidos.
- `pedidos`: registra os pedidos realizados, vinculando cada pedido a um produto.

### 🔗 Relacionamento

Cada pedido pertence a um produto (`produto_id` é uma chave estrangeira que referencia `produtos(id)`).

## 💾 Scripts SQL

O script principal `banco.sql` contém:

- Criação das tabelas `produtos` e `pedidos`
- Inserção de 3 registros em cada tabela
- Definição de chave primária e chave estrangeira

### 📁 Exemplo de uso (MySQL / MariaDB)

```bash
mysql -u seu_usuario -p < banco.sql


git init                             # Inicializa repositório Git
git add banco.sql                    # Adiciona o script ao controle de versão
git commit -m "Criação do banco de dados com tabelas produtos e pedidos"
git remote add origin https://github.com/Anderson-crunk/projeto-bd.git
git push -u origin master            # Envia os arquivos para o GitHub
