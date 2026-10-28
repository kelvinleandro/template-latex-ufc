# Lista de símbolos e siglas

## Lista de abreviaturas e siglas

O arquivo `1-pre-textuais/lista-de-abreviaturas-e-siglas.tex` usa
`\newacronym` para registrar cada sigla:

```tex
\newacronym{ABNT}{ABNT}{Associação Brasileira de Normas Técnicas}
```

Os três argumentos são:

1. chave interna usada nos comandos do texto;
2. forma curta exibida;
3. forma extensa ou descrição.

Use a chave no texto com `\gls{ABNT}` quando a sigla precisar ser registrada e
aparecer na lista. A chamada da lista em `documento.tex` é:

```tex
\imprimirlistadeabreviaturasesiglas
```

### Regras para siglas

- Use uma chave única, sem espaços ou caracteres especiais.
- Não crie várias entradas para a mesma sigla.
- Confira maiúsculas, plural e nome completo da instituição ou conceito.
- Use `\textit{...}` no terceiro argumento quando parte da descrição precisar
  de itálico, como nos exemplos do template.
- Não coloque explicações de uso como comentários dentro da entrada final; a
  entrada deve conter somente os dados da sigla.
- Registre somente siglas realmente usadas no trabalho.

## Lista de símbolos

O arquivo `1-pre-textuais/lista-de-simbolos.tex` usa o ambiente customizado
`simbolos`:

```tex
\begin{simbolos}
    \item[$ x $] Variável ou símbolo de exemplo
    \item[$ \lambda $] Comprimento de onda
\end{simbolos}
```

Cada `\item` recebe o símbolo entre colchetes e sua descrição depois do
colchete. A chamada em `documento.tex` é:

```tex
\imprimirlistadesimbolos{1-pre-textuais/lista-de-simbolos}
```

### Regras para símbolos

- Mantenha a notação exatamente igual à usada nas equações e no texto.
- Descreva unidade ou significado quando isso for relevante.
- Inclua apenas símbolos utilizados no trabalho.
- Organize a lista de forma consistente com o padrão adotado pelo autor; a
  ordenação não é automática.
- Preserve o ambiente `simbolos`; não o substitua por `itemize` ou uma tabela
  genérica.

## Uso no texto

As listas são elementos pré-textuais, mas as entradas devem corresponder ao
uso real nos capítulos. Ao adicionar uma sigla ou símbolo, procure suas
ocorrências no texto e mantenha a mesma grafia em todos os arquivos. Não
cadastre entradas apenas para preencher a lista.
