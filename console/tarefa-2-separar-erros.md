# Tarefa 2 - Separação de logs por código HTTP

## Objetivo

Separar os registros de log do dia 30/12/2019 e organizar as solicitações com erros HTTP 400 e 500 em arquivos distintos.

## Comandos utilizados

### 1. Criar os diretórios

```bash
mkdir bug1
mkdir bug1/events
```

### 2. Selecionar os registros do dia 30/12/2019

O comando utilizado para salvar os registros no arquivo `main.txt` foi:

```bash
grep '30/12/2019' logs/2019/12/apache_2019-12-30.txt > bug1/main.txt
```

### 3. Separar os erros HTTP 400 e 500

Para salvar os registros com erro HTTP 400:

```bash
grep ' 400 ' bug1/main.txt > bug1/events/400.txt
```

Para salvar os registros com erro HTTP 500:

```bash
grep ' 500 ' bug1/main.txt > bug1/events/500.txt
```

## Resultados encontrados

- `main.txt`: 1.786 linhas.
- `400.txt`: 172 registros com erro HTTP 400.
- `500.txt`: 156 registros com erro HTTP 500.

## Estrutura dos arquivos

```text
bug1/
├── main.txt
└── events/
    ├── 400.txt
    └── 500.txt
```

## Conclusão

Os registros do dia 30/12/2019 foram separados por código de erro HTTP. Foram encontrados 172 registros com erro 400 e 156 registros com erro 500.