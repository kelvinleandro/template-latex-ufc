---
name: pre-textuais-ufc
description: "Use when creating or editing pre-textual elements in this UFC LaTeX template: resumo, abstract, palavras-chave, símbolos, siglas, epígrafe, errata, dedicatória, agradecimentos, lists, and their entries in documento.tex."
argument-hint: "Describe the pre-textual element to create or update."
user-invocable: true
---

# Elementos pré-textuais do template UFC

Use esta skill para editar os arquivos da pasta `1-pre-textuais/` e controlar
as chamadas dos elementos pré-textuais em `documento.tex`. Preserve os comandos
customizados do template e altere somente o arquivo correspondente ao elemento.

## Organização

- `documento.tex`: metadados, ordem dos elementos e chamadas `\imprimir...`.
- `1-pre-textuais/resumo.tex`: resumo em português e `\palavraschave`.
- `1-pre-textuais/abstract.tex`: resumo em inglês e `\keywords`.
- `1-pre-textuais/lista-de-abreviaturas-e-siglas.tex`: entradas `\newacronym`.
- `1-pre-textuais/lista-de-simbolos.tex`: ambiente `simbolos`.
- `1-pre-textuais/epigrafe.tex`: citação e autoria da epígrafe.
- `1-pre-textuais/errata.tex`: referência bibliográfica e tabela de correções.
- `1-pre-textuais/dedicatoria.tex`: texto da dedicatória.
- `1-pre-textuais/agradecimentos.tex`: texto dos agradecimentos.

As instruções específicas para resumo e abstract estão em
[`references/resumo-abstract.md`](./references/resumo-abstract.md). As
instruções para símbolos e siglas estão em
[`references/simbolos-siglas.md`](./references/simbolos-siglas.md).

## Procedimento geral

1. Identifique o arquivo do elemento que será alterado.
2. Mantenha no arquivo incluído somente o conteúdo do elemento; não adicione
   `\begin{document}` ou `\end{document}`.
3. Preserve os comandos próprios do template, como `\palavraschave`,
   `\keywords`, `\newacronym` e `\begin{simbolos}`.
4. Confira em `documento.tex` se a chamada correspondente está ativa, na ordem
   pré-textual desejada.
5. Não invente dados, fontes, citações, resultados ou informações
   institucionais.

## Ordem no `documento.tex`

O template organiza os elementos pré-textuais com comandos que recebem o
arquivo como argumento quando necessário:

```tex
\imprimircapa
\imprimirfolhaderosto{}
\imprimirfolhadeaprovacao
\imprimirdedicatoria{1-pre-textuais/dedicatoria}
\imprimiragradecimentos{1-pre-textuais/agradecimentos}
\imprimirepigrafe{1-pre-textuais/epigrafe}
\imprimirresumo{1-pre-textuais/resumo}
\imprimirabstract{1-pre-textuais/abstract}
\imprimirlistadeabreviaturasesiglas
\imprimirlistadesimbolos{1-pre-textuais/lista-de-simbolos}
\imprimirsumario
```

Use caminhos relativos à raiz do projeto nas chamadas de `documento.tex`.
Para desativar um elemento opcional, comente sua chamada; não apague o
comando customizado nem crie uma página manual para substituí-lo.

## Epígrafe

Edite `1-pre-textuais/epigrafe.tex` mantendo a estrutura fornecida pelo
template:

```tex
"Citação relacionada com o tema do trabalho, com indicação de autoria."
\autordaepigrafe{Autor, ano, p. xx.}
```

Substitua a citação, autoria, ano e página por informações conferidas pelo
autor. A página é inserida no documento por
`\imprimirepigrafe{1-pre-textuais/epigrafe}`. Não confunda a epígrafe com uma
citação bibliográfica comum: mantenha a apresentação própria do comando.

## Errata

A errata fica em `1-pre-textuais/errata.tex` e deve ser usada apenas quando
houver correções identificadas após a versão anterior do trabalho. Ela combina
a referência do trabalho com uma tabela contendo folha, linha, texto original
em `Onde se lê` e correção em `Leia-se`.

Para inserir a errata, ative em `documento.tex`:

```tex
\imprimirerrata{1-pre-textuais/errata}
```

Ative a chamada somente quando houver uma errata a ser incluída.

## Dedicatória e agradecimentos

- Dedicatória: edite `1-pre-textuais/dedicatoria.tex` como texto breve. A
  chamada é `\imprimirdedicatoria{1-pre-textuais/dedicatoria}`.
- Agradecimentos: edite `1-pre-textuais/agradecimentos.tex` e mantenha a
  chamada `\imprimiragradecimentos{1-pre-textuais/agradecimentos}`. Confira
  exigências de agências de fomento antes de citar bolsas ou instituições.

## Checklist

- O conteúdo está no arquivo pré-textual correto?
- A chamada correspondente em `documento.tex` está ativa e usa o caminho correto?
- Os comandos customizados do template foram preservados?
- Citações, autoria, dados institucionais e correções foram conferidos?
- Não foram adicionadas páginas manuais para substituir comandos do template?