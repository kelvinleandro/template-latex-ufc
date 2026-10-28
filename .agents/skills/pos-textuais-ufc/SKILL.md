---
name: pos-textuais-ufc
description: "Use when creating or editing post-textual elements in this UFC LaTeX template: references, glossaries, appendices, annexes, included PDFs, and their entries in documento.tex."
argument-hint: "Describe the post-textual element to create or update."
user-invocable: true
---

# Elementos pós-textuais do template UFC

Use esta skill para trabalhar com a pasta `3-pos-textuais/`:
referências bibliográficas, glossário, apêndices e anexos. Siga os comandos
customizados do template e mantenha a ordem dos elementos em
`documento.tex`.

## Antes de editar

1. Leia a parte de elementos pós-textuais em `documento.tex`.
2. Verifique se o material é:
   - **apêndice**: elaborado pelo autor, como questionário, código ou tabela
     complementar;
   - **anexo**: não elaborado pelo autor, como manual, mapa, datasheet,
     diagrama ou documento recebido de outra fonte.
3. Procure um exemplo existente na pasta correta antes de criar um novo
   arquivo.
4. Preserve os caminhos relativos a partir da raiz do projeto. Os comandos
   `\input` e `\includepdf` são escritos no contexto de
   `documento.tex`, não no contexto da subpasta.

## Ordem no `documento.tex`

O bloco pós-textual normalmente vem depois de `\textual` e dos capítulos:

```tex
% Elementos pós-textuais
\bibliography{3-pos-textuais/referencias}

\imprimirglossario

\imprimirapendices
\input{3-pos-textuais/apendices/apendice-a}
\input{3-pos-textuais/apendices/apendice-b}

\imprimiranexos
\input{3-pos-textuais/anexos/anexo-a}
\input{3-pos-textuais/anexos/anexo-b}
```

No estado original do template, `\bibliography`, os apêndices e os anexos já
estão configurados, enquanto `\imprimirglossario` está comentado. Só ative o
glossário quando houver entradas e quando ele fizer parte do trabalho.

### Regras de inclusão

- Inclua cada arquivo `.tex` uma única vez.
- A ordem dos `\input` determina a ordem dos apêndices e anexos no PDF.
- Remova ou comente o `\input` de um elemento que não será usado; não deixe
  referências para arquivos inexistentes.
- Use nomes sem espaços, acentos ou caracteres especiais, por exemplo
  `apendice-d.tex` e `anexo-c.tex`.
- Não coloque `\begin{document}` ou `\end{document}` nos arquivos incluídos.
  Eles devem conter somente o conteúdo do elemento.
- Não use `\chapter` para iniciar apêndices ou anexos: `\apendice` e `\anexo`
  já configuram a identificação e a formatação fornecidas pelo template.

## Glossário

O glossário fica em `3-pos-textuais/glossario.tex`.
Cada termo é definido com `\newglossaryentry`:

```tex
\newglossaryentry{termo-chave}{
    name={Termo-chave},
    description={Definição objetiva do termo}
}
```

### Criar e usar uma entrada

1. Adicione a entrada em `glossario.tex`.
2. Use a chave no texto com `\gls{termo-chave}`. A chave é interna e pode ser
   diferente do nome exibido.
3. No `documento.tex`, inclua o arquivo antes de imprimir o glossário:

   ```tex
   \input{3-pos-textuais/glossario}
   \imprimirglossario
   ```

4. Evite definir a mesma chave mais de uma vez.
5. Escreva definições verificáveis e não invente conceitos, fontes ou
   interpretações acadêmicas.

O preâmbulo `lib/preambulo.tex` já carrega
`glossaries` e executa `\makeglossaries`. Não adicione outro
`\makeglossaries` em `documento.tex` ou nos arquivos da pasta
`3-pos-textuais`.

## Apêndices

Um apêndice é um documento elaborado pelo autor, diferentemente do anexo. Geralmente, se coloca como
apêndice, questionários, códigos de programação, tabelas que tomariam muito espaço no meio do trabalho.
Crie um arquivo como `3-pos-textuais/apendices/apendice-a.tex`:

```tex
\apendice{Instrumento de coleta de dados}
\label{ap:A}

Conteúdo elaborado pelo autor.
```

Depois, registre-o em `documento.tex` após `\imprimirapendices`:

```tex
\imprimirapendices
\input{3-pos-textuais/apendices/apendice-a}
```

Para código, reutilize os recursos já carregados no preâmbulo:

```tex
\apendice{Código-fonte}
\label{ap:codigo}

\lstinputlisting[language=C++,caption={Programa principal}]{figuras/main.cpp}
```

Confira se o arquivo indicado por `\lstinputlisting` existe e se o caminho é
relativo à raiz do projeto.

## Anexos

Anexos são materiais não elaborados pelo autor.
Crie um arquivo como `3-pos-textuais/anexos/anexo-a.tex`:

```tex
\anexo{Manual do equipamento}
\label{an:manual}

Descrição sucinta do documento anexado.
```

Registre-o após `\imprimiranexos`:

```tex
\imprimiranexos
\input{3-pos-textuais/anexos/anexo-a}
```

### Anexar um PDF

Para a anexação de um PDF externo:

```tex
\anexo{Documento técnico}
\label{an:documento-tecnico}

\includepdf[pages={-}]{3-pos-textuais/anexos/documento-tecnico.pdf}
```

Coloque o PDF dentro de `3-pos-textuais/anexos/`, confirme o nome e a extensão
do arquivo e prefira nomes sem espaços ou caracteres especiais. Use
`pages={-}` para todas as páginas ou especifique um intervalo, como
`pages={1-3}`. A funcionalidade `\includepdf` já é disponibilizada pelo
`pdfpages` carregado em `lib/preambulo.tex`.

## Referências bibliográficas

As referências ficam em
`3-pos-textuais/referencias.bib` e
entram no documento com:

```tex
\bibliography{3-pos-textuais/referencias}
```

Use uma chave BibTeX estável e cite a obra no texto com os comandos do
`lib/ufcTexcite.sty`, como `\cite` ou
`\citeonline`.
