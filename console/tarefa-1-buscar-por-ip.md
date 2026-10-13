# Tarefa 1 - Busca de solicitações por endereço IP

## Objetivo

Localizar nos logs de dezembro de 2019 todas as solicitações cujo o endereço IP começa com `233.201.`.

## Comando utilizado

O comando utilizado para pesquisar os registros foi:


```bash
grep -h '^233\.201\.' logs/2019/12/*
```

## Explicação do comando

- `grep`: pesquisa linhas que correspondem a um padrão.
- `-h`: oculta os nomes dos arquivos na saída.
- `ˆ`: indica o início da linha.
- `233\.201\.`: procura o prefixo literal `233.201.`.
- `logs/2019/12/*`: seleciona os arquivos do diretório de dezembro de 2019.


## Resultados encontrados

```text
233.201.188.154 - - [18/12/2019:21:46:01 +0000] "DELETE /events HTTP/1.1" 400 3971
233.201.182.9 - - [21/12/2019:21:56:20 +0000] "PATCH /users HTTP/1.1" 400 4118
```

## Objetivo

Localizar, nos logs de dezembro de 2019, todas as solicitações cujo endereço IP começa com `233.201.`.
