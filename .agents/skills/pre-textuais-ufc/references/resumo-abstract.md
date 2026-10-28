# Resumo e abstract

## Arquivos e chamadas

- O resumo em português fica em `1-pre-textuais/resumo.tex` e é incluído com:

  ```tex
  \imprimirresumo{1-pre-textuais/resumo}
  ```

- O resumo em inglês fica em `1-pre-textuais/abstract.tex` e é incluído com:

  ```tex
  \imprimirabstract{1-pre-textuais/abstract}
  ```

Os dois arquivos são conteúdos incluídos pelo template. Não adicione
`\begin{document}` ou `\end{document}` neles.

## Estrutura

O `resumo.tex` deve conter o texto do resumo em português e uma chamada
`\palavraschave`:

```tex
Texto do resumo em português, apresentando o tema, o objetivo, a metodologia,
os principais resultados e a conclusão do trabalho.

\palavraschave{primeira palavra-chave; segunda palavra-chave; terceira palavra-chave.}
```

O `abstract.tex` deve conter a versão em inglês e uma chamada `\keywords`:

```tex
Abstract text in English presenting the subject, objective, methodology, main
results, and conclusion of the work.

\keywords{first keyword; second keyword; third keyword.}
```

## Revisão

Verifique se os comandos estão escritos exatamente como `\palavraschave` e
`\keywords`. O template usa esses comandos para aplicar a apresentação
correspondente, portanto não os substitua por texto simples ou por títulos
criados manualmente.
