
# Projeto 6 — Noções Básicas de Banco de Dados



## Sobre o projeto

Este projeto tem como objetivo aplicar conhecimentos básicos de banco de dados e comandos Linux para analisar registros de log e executar consultas SQL.

As atividades envolvem pesquisa e filtragem de registros, organização de arquivos, análise de dados e documentação dos resultados obtidos.

## Objetivos

- Pesquisar registros de log utilizando comandos Linux.
- Filtrar solicitações por endereço IP e código HTTP.
- Organizar arquivos e diretórios no terminal.
- Executar consultas SQL para extrair e analisar dados.
- Documentar os comandos utilizados e os resultados encontrados.
- Versionar e publicar o projeto utilizando Git e GitHub.

## Tecnologias e ferramentas

- **Linux:** pesquisa, filtragem e organização de arquivos.
- **SQL:** consultas e análise de dados relacionais.
- **PostgreSQL:** execução das consultas no banco de dados `chicago_taxi`.
- **Git:** controle de versão.
- **GitHub:** armazenamento e publicação do projeto.
- **VS Code:** edição dos arquivos e documentação.

## Estrutura do projeto

```text
projeto-06-banco-de-dados/
├── README.md
├── console/
│   ├── tarefa-1-buscar-por-ip.md
│   └── tarefa-2-separar-erros.md
├── evidencias/
└── sql/
    ├── consultas.sql
    └── resultados.md
```

## Atividades desenvolvidas

### 1. Análise de logs com Linux

**Tarefa 1 — Busca por endereço IP**

- Pesquisa de registros com endereços IP iniciados por `233.201.`.
- Utilização do comando `grep` para filtrar os registros.
- **Resultado:** 2 registros encontrados.

**Tarefa 2 — Separação de logs por código HTTP**

- Seleção dos registros do dia 30/12/2019.
- Separação das solicitações com códigos HTTP `400` e `500`.
- Utilização dos comandos `grep`, `wc` e `mkdir`.
- **Resultado:** 1.786 registros no arquivo principal, 172 registros com código HTTP `400` e 156 registros com código HTTP `500`.

### 2. Consultas SQL

**Tarefa 1 — Contagem de veículos distintos**

- Utilização de `COUNT(DISTINCT vehicle_id)` para contar os veículos distintos.
- **Resultado:** 5.500 veículos distintos.

**Tarefa 2 — Empresas com menos de 100 veículos**

- Agrupamento dos veículos por empresa.
- Filtragem dos grupos com menos de 100 veículos.
- Utilização de `GROUP BY`, `HAVING` e `ORDER BY`.

**Tarefa 3 — Classificação das condições meteorológicas**

- Análise dos registros de 05/11/2017.
- Classificação das condições como `Good` ou `Bad`.
- Utilização de `CASE`, `ILIKE` e filtros de data.

**Tarefa 4 — Quantidade de viagens por empresa**

- Contagem das viagens realizadas nos dias 15 e 16/11/2017.
- Associação entre as tabelas `cabs` e `trips`.
- Utilização de `JOIN`, `COUNT`, `GROUP BY` e `ORDER BY`.
- **Resultado registrado:** Flash Cab, com 19.558 viagens.

## Resultados e validações

Os comandos Linux foram utilizados para pesquisar, filtrar e organizar registros de log. As consultas SQL foram executadas no banco de dados `chicago_taxi` para obter e analisar os dados solicitados.

- **Logs:** pesquisa por endereço IP e separação de registros por código HTTP.
- **SQL:** contagem de veículos distintos, identificação de empresas com menos de 100 veículos, classificação meteorológica e contagem de viagens por empresa.

## Aprendizados

- Utilização de comandos Linux para pesquisar e filtrar arquivos de log.
- Criação de diretórios e organização de arquivos pelo terminal.
- Escrita de consultas SQL para selecionar, filtrar, contar e agrupar dados.
- Aplicação de funções e comandos como `COUNT`, `DISTINCT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `JOIN` e `CASE`.
- Análise e interpretação de resultados.
- Documentação técnica de atividades.
- Utilização do Git e GitHub para controle de versão e publicação de projetos.

## Evidências

Os procedimentos e resultados desta etapa estão documentados nos arquivos da pasta `console/` e em `sql/resultados.md`. As capturas de tela das execuções não foram incluídas neste repositório.

## Autor

**Rafael Reis**

- GitHub: [https://github.com/reischampoudry](https://github.com/reischampoudry)
- LinkedIn: [https://www.linkedin.com/in/rafael-reis-qa/](https://www.linkedin.com/in/rafael-reis-qa/)
