---
name: comandos-ufctex
description: "Use when creating or editing content with the custom commands and environments provided by lib/ufcTex.sty in this UFC LaTeX template, including figures, tables, quadros, lists, questions, academic type, metadata, and advisor labels."
argument-hint: "Describe the UFC-TeX command or element to use."
user-invocable: true
---

# Comandos personalizados do UFC-TeX

Use esta skill para trabalhar com os comandos e ambientes definidos ou
adaptados em `lib/ufcTex.sty`. Eles encapsulam a formatação esperada pelo
template da UFC e devem ser preferidos às alternativas LaTeX genéricas.

## Referências desta skill

- [`references/elementos-visuais-e-listas.md`](./references/elementos-visuais-e-listas.md):
  legendas, fontes, notas, figuras, tabelas, quadros, alíneas e questões.
- [`references/configuracao-academica.md`](./references/configuracao-academica.md):
  tipo de trabalho, qualificação e gênero de orientador ou coorientador.
- [`references/metadados-documento.md`](./references/metadados-documento.md):
  comandos usados para preencher os metadados em `documento.tex`.

## Procedimento geral

1. Identifique o comando customizado adequado ao elemento que será criado ou
   editado.
2. Consulte a referência correspondente antes de substituir o comando por
   `figure`, `table`, `itemize`, `enumerate` ou outro recurso genérico.
3. Use os comandos no arquivo de conteúdo apropriado. Use `documento.tex` para
   metadados, seleção do tipo acadêmico e ordem dos elementos.
4. Preserve `\label` e referências cruzadas estáveis.
5. Não altere `lib/ufcTex.sty` para resolver um caso isolado de conteúdo. Uma
   alteração nesse arquivo afeta todo o documento.
6. Não invente dados institucionais, nomes, cargos, fontes ou informações
   acadêmicas.

## Comandos cobertos

Esta skill documenta os comandos abaixo:

- `\Caption`, `\Fonte`, `\Nota`;
- `\UFCfig`, `\UFCtab`, `\UFCqua`;
- `alineascomponto`, `subalineascomponto`, `alineascomnumero`,
  `subalineascomnumero`;
- ambiente `questao`;
- `\trabalhoacademico`;
- `\orientadorfeminino`, `\coorientadorfeminino`, `\artigoorientador`,
  `\artigocoorientador` e variantes com parênteses;
- `\ehqualificacao`;
- comandos de metadados usados em `documento.tex`.

## Regra de escolha

Antes de escrever LaTeX genérico, procure nesta skill e em
`lib/ufcTex.sty` se já existe um comando para a finalidade desejada. Os
comandos customizados não são apenas abreviações: eles aplicam espaçamento,
legendas, nomenclatura, listas e condições específicas do template.
