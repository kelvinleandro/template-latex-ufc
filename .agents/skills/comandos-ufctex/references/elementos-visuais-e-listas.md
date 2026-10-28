# Elementos visuais e listas

## Legenda, fonte e nota

Use `\Caption{...}` para a legenda de figuras, tabelas e quadros:

```tex
\Caption{\label{fig:resultado} Legenda do elemento}
```

Coloque o `\label` dentro da legenda e use a chave para referências cruzadas,
por exemplo `\ref{fig:resultado}`.

Use `\Fonte{...}` para indicar a fonte:

```tex
\Fonte{Elaborado pelo autor}
\Fonte{\citeonline{chave-bibtex}}
```

O comando também aceita um rótulo opcional:

```tex
\Fonte[Fonte]{Descrição ou referência}
```

Use `\Nota{...}` para notas associadas a figuras ou tabelas:

```tex
\Nota{Nota explicativa sobre os dados apresentados.}
\Nota[Anotações]{Informação adicional.}
```

Não substitua esses comandos por `\caption`, texto solto ou formatação manual:
eles aplicam a convenção do template para legenda, fonte e nota.

## Figuras, tabelas e quadros

Os comandos `\UFCfig`, `\UFCtab` e `\UFCqua` têm a mesma assinatura:

```tex
\UFCfig{informação superior}{conteúdo}{fonte ou informação inferior}
\UFCtab{informação superior}{conteúdo}{fonte ou informação inferior}
\UFCqua{informação superior}{conteúdo}{fonte ou informação inferior}
```

Em geral, os dois primeiros argumentos de apresentação ficam vazios porque a
legenda é feita por `\Caption` e a fonte por `\Fonte`:

```tex
\begin{figure}[h!]
    \centering
    \captionsetup{width=8cm} %Da mesma largura que a figura
    \Caption{\label{fig:exemplo} Legenda da figura}
    \UFCfig{}{
        \includegraphics[width=8cm]{figuras/imagem}
    }{
        \Fonte{Elaborado pelo autor}
    }
\end{figure}
```

Para tabelas:

```tex
\begin{table}[h!]
    \centering
    \captionsetup{width=6cm} %Da mesma largura que a tabela
    \Caption{\label{tab:exemplo} Legenda da tabela}
    \UFCtab{}{
        \begin{tabular}{cc}
            \toprule
            Cabeçalho 1 & Cabeçalho 2 \\
            \midrule \midrule
            Dado 1 & Dado 2
            \bottomrule
        \end{tabular}
    }{
        \Fonte{Elaborado pelo autor}
    }
\end{table}
```

Para quadros, use o ambiente `quadro` e `\UFCqua`:

```tex
\begin{quadro}[h!]
    \centering
    \captionsetup{width=6cm} %Da mesma largura que o quadro
    \Caption{\label{qua:exemplo} Legenda do quadro}
    \UFCqua{}{
        \begin{tabular}{|c|c|}
            \hline
            Item & Descrição \\
            \hline
        \end{tabular}
    }{
        \Fonte{Elaborado pelo autor}
    }
\end{quadro}
```

Use o prefixo de `\label` de acordo com o tipo do elemento: `fig:`, `tab:` ou
`qua:`. Mantenha os caminhos das imagens relativos à raiz do projeto.

## Alíneas

Para listas com marcadores, use `alineascomponto` e
`subalineascomponto`:

```tex
\begin{alineascomponto}
    \item Primeiro item;
    \item Segundo item:
    \begin{subalineascomponto}
        \item Subitem;
        \item Outro subitem.
    \end{subalineascomponto}
\end{alineascomponto}
```

Para listas numeradas, use `alineascomnumero` e
`subalineascomnumero`:

```tex
\begin{alineascomnumero}
    \item Primeiro item;
    \item Segundo item:
    \begin{subalineascomnumero}
        \item Subitem;
        \item Outro subitem.
    \end{subalineascomnumero}
\end{alineascomnumero}
```

Use esses ambientes quando a lista representar alíneas ou incisos do texto
acadêmico. Não troque automaticamente por `itemize` ou `enumerate`, pois os
ambientes customizados controlam marcadores, numeração e recuos.

## Questões

O ambiente `questao` cria questões numeradas:

```tex
\begin{questao}
    \item Primeira questão.
    \item Segunda questão com itens:
    \begin{enumerate}
        \item Primeiro item;
        \item Segundo item.
    \end{enumerate}
\end{questao}
```

Use-o principalmente em questionários dentro de apêndices. Os itens
secundários podem usar `enumerate`, que é apropriado para as alternativas ou
subitens de uma questão.
