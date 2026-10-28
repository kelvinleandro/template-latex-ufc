# Configuração acadêmica

## Tipo de trabalho

Em `documento.tex`, mantenha somente um comando `\trabalhoacademico` ativo:

```tex
\trabalhoacademico{tccgraduacao}
\trabalhoacademico{tccespecializacao}
\trabalhoacademico{dissertacao}
\trabalhoacademico{tese}
```

O argumento seleciona o conjunto de textos e condições usados pelo template
para o trabalho acadêmico. Não deixe duas opções ativas ao mesmo tempo.

## Qualificação

Use `\ehqualificacao` para informar se o documento é uma versão de
qualificação:

```tex
\ehqualificacao{sim}
\ehqualificacao{nao}
```

O valor `sim` ativa o modo de qualificação; `nao` indica a versão final. O
comando também controla a exibição de elementos que não se aplicam a
qualificações.

## Gênero de orientador e coorientador

Informe o gênero usado nos títulos institucionais com:

```tex
\orientadorfeminino{sim}
\coorientadorfeminino{nao}
```

Os valores esperados são `sim` e `nao`. O template usa essas configurações nos
comandos:

```tex
\artigoorientador
\artigocoorientador
\artigoorientadorcomparenteses
\artigocoorientadorcomparenteses
```

Eles produzem, respectivamente, as formas de orientador e coorientador com ou
sem parênteses, ajustadas para `Orientador`/`Orientadora` e
`Coorientador`/`Coorientadora`.

Não escreva a forma manualmente em cada parte do documento, pois isso pode
causar inconsistência entre folha de aprovação, folha de rosto e demais
elementos institucionais.
