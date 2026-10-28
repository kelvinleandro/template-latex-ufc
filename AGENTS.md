# Instruções do projeto

Você está trabalhando com um template LaTeX para trabalhos acadêmicos da Universidade
Federal do Ceará (UFC), baseado no abnTeX2. Ele pode ser usado para TCCs de
graduação ou especialização, dissertações, teses e qualificações.

## Estrutura do projeto

- [`documento.tex`](./documento.tex) é o arquivo principal. Ele define a classe,
  os metadados do trabalho, a ordem dos elementos e os arquivos incluídos.
- [`1-pre-textuais/`](./1-pre-textuais/) contém ficha catalográfica, dedicatória, agradecimentos,
  epígrafe, resumo, abstract e listas de símbolos de abreviações.
- [`2-textuais/`](./2-textuais/) contém os arquivos de textos principais.
- [`3-pos-textuais/`](./3-pos-textuais/) contém [`referencias.bib`](./3-pos-textuais/referencias.bib),
  o glossário, apêndices e anexos.
- [`figuras/`](./figuras/) armazena imagens e outros arquivos usados no texto.
- [`lib/`](./lib/) contém a infraestrutura do template: a classe abnTeX2, os
  estilos [`ufcTex.sty`](./lib/ufcTex.sty) e
  [`ufcTexcite.sty`](./lib/ufcTexcite.sty), o preâmbulo, o estilo bibliográfico.
  Evite alterar esses arquivos; só faça isso quando uma necessidade do template estiver comprovada.
  de glossário quando o `latexmk` for utilizado.
  alíneas, algoritmos, capítulos, seções e entradas BibTeX.

## Fluxo de edição

1. Edite o conteúdo no arquivo correspondente à parte do trabalho. Não
   concentre todo o texto em `documento.tex`.
2. Use `documento.tex` para alterar metadados, selecionar o tipo do trabalho e
   controlar a ordem ou inclusão de partes.
3. Para selecionar o tipo acadêmico, deixe apenas um comando
   `\trabalhoacademico{...}` ativo: `tccgraduacao`, `tccespecializacao`,
   `dissertacao` ou `tese`. Ajuste também `\ehqualificacao{sim}` quando for
   uma versão de qualificação.
4. Preserve os caminhos relativos usados pelos `\input`, `\bibliography` e
   `\includegraphics`. Prefira nomes de arquivos sem espaços e sem caracteres
   especiais.
5. Ao inserir capítulos, seções, figuras, tabelas, quadros, algoritmos ou
   apêndices/anexos, mantenha `\label` estável e use referências cruzadas em
   vez de números escritos manualmente.

## Comandos e convenções do template

Priorize os comandos e ambientes personalizados deste template em vez de
substituí-los por alternativas LaTeX genéricas. Eles encapsulam a formatação
esperada pela UFC.

- Para figuras, tabelas e quadros, use `\Caption`, `\Fonte`, `\UFCfig`,
  `\UFCtab`.
- Para citações, use os comandos como `\cite` e `\citeonline`, e
  mantenha as referências em [`referencias.bib`](./3-pos-textuais/referencias.bib).
- Para listas de abreviaturas, símbolos e glossário, siga a configuração de
  `glossaries` em [`preambulo.tex`](./lib/preambulo.tex) e os arquivos da pasta
  [`1-pre-textuais/`](./1-pre-textuais/).
- Para elementos normatizados, prefira os comandos `\imprimir...` já usados em
  `documento.tex` a recriar a página manualmente.
- Não altere a formatação diretamente em cada capítulo para corrigir um efeito
  global. Primeiro verifique se existe uma opção no `documento.tex`, no
  preâmbulo ou em [`ufcTex.sty`](./lib/ufcTex.sty).

## Conteúdo acadêmico e uso de IA

- Você deve auxiliar na organização, revisão linguística, diagnóstico de
  compilação e aplicação das convenções do template, mas não deve inventar
  fontes, resultados, dados, citações ou referências.
- Toda afirmação acadêmica, referência bibliográfica e dado inserido no texto
  deve ser conferido pelo autor em uma fonte confiável.
- Preserve a autoria e o sentido técnico do texto. Ao revisar, não altere
  resultados, metodologia ou conclusões sem indicar explicitamente a mudança.
