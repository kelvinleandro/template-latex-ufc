# Metadados definidos em `documento.tex`

Os comandos desta referência recebem um argumento e armazenam informações que
o template utiliza na capa, folha de rosto, folha de aprovação e outros
elementos institucionais. Preencha-os em `documento.tex`, sem redefinir os
valores nos capítulos.

## Instituição e unidade acadêmica

```tex
\ies{Universidade Federal do Ceará}
\iessigla{UFC}
\centro{Centro de ...}
\departamento{Departamento de ...}
```

Use os nomes oficiais da instituição, centro e departamento.

## Graduação e especialização

```tex
\graduacaoem{Nome do curso}
\habilitacao{bacharel}
\especializacaoem{Nome da especialização}
```

Use `\habilitacao` para informar a habilitação correspondente, como
`bacharel` ou `licenciado`.

## Mestrado

```tex
\programamestrado{Nome do programa}
\nomedomestrado{Mestrado Acadêmico em ...}
\mestreem{Área ou título}
\areadeconcentracaomestrado{Área de concentração}
```

## Doutorado

```tex
\programadoutorado{Nome do programa}
\nomedodoutorado{Doutorado em ...}
\doutorem{Área ou título}
\areadeconcentracaodoutorado{Área de concentração}
```

Preencha somente os grupos correspondentes ao tipo de trabalho selecionado,
mantendo os demais valores sem uso quando não se aplicarem.

## Dados do trabalho

```tex
\autor{Nome completo}
\titulo{Título do trabalho: subtítulo}
\data{Ano}
\local{Fortaleza}
\dataaprovacao{dia de mês de ano}
```

O título, o nome do autor, o local e as datas devem ser conferidos pelo autor.
Não use valores de exemplo na versão final.

## Orientador e coorientador

```tex
\orientador{Nome e titulação}
\orientadories{Instituição do orientador}
\orientadorcentro{Centro do orientador}

\coorientador{Nome e titulação}
\coorientadories{Instituição do coorientador}
\coorientadorcentro{Centro do coorientador}
```

Para remover o coorientador, deixe `\coorientador{}` vazio e ajuste os campos
relacionados conforme necessário. Use `\orientadorfeminino` e
`\coorientadorfeminino` conforme a referência de configuração acadêmica.

## Banca examinadora

Os membros usam uma sequência numérica:

```tex
\membrodabancadois{Nome e titulação}
\membrodabancadoiscentro{Centro}
\membrodabancadoisies{Instituição}

\membrodabancatres{Nome e titulação}
\membrodabancatrescentro{Centro}
\membrodabancatresies{Instituição}
```

O mesmo padrão se aplica a `membrodabancaquatro`,
`membrodabancacinco` e `membrodabancaseis`, com os respectivos sufixos
`centro` e `ies`. Deixe o nome vazio quando um membro não participar, em vez
de inserir um texto fictício.

## Regras para metadados

- Use cada comando no preâmbulo de `documento.tex`, antes de
  `\begin{document}`.
- Não altere a definição desses comandos em `lib/ufcTex.sty` para preencher
  dados de um único trabalho.
- Mantenha a grafia dos nomes institucionais e títulos consistente em todos os
  campos.
- Não adicione comandos de metadados novos sem verificar primeiro se o
  template já oferece um campo equivalente.
