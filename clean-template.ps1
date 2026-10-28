# Arquivo para rodar a limpeza do template pelo PowerShell
$ErrorActionPreference = "Stop"

# Usa a pasta onde este script está localizado
Set-Location $PSScriptRoot

$utf8 = [System.Text.UTF8Encoding]::new($false)

function Write-Utf8File {
    param(
        [string]$Path,
        [string[]]$Lines
    )

    $content = ($Lines -join "`n") + "`n"
    [System.IO.File]::WriteAllText(
        (Join-Path $PSScriptRoot $Path),
        $content,
        $utf8
    )
}

Write-Host "Restaurando os arquivos de conteúdo do template..."

# Apaga os arquivos das pastas indicadas, mantendo as pastas
foreach ($dir in @(
    "3-pos-textuais/anexos",
    "3-pos-textuais/apendices",
    "figuras"
)) {
    if (Test-Path -LiteralPath $dir -PathType Container) {
        Get-ChildItem -LiteralPath $dir -File -Recurse |
            Remove-Item -Force
    }
}

# Remove a ficha catalográfica em PDF
$pdf = "1-pre-textuais/ficha-catalografica.pdf"
if (Test-Path -LiteralPath $pdf) {
    Remove-Item -LiteralPath $pdf -Force
}

# Restaura os arquivos padrão do template
Write-Utf8File "3-pos-textuais/referencias.bib" @(
    '% Referências bibliográficas do trabalho.'
)

Write-Utf8File "3-pos-textuais/glossario.tex" @(
    '\newglossaryentry{termo-exemplo}{'
    "`tname={Termo de exemplo},"
    "`tdescription={Definição do termo de exemplo.}"
    '}'
)

Write-Utf8File "1-pre-textuais/abstract.tex" @(
    '\keywords{Example keyword; another keyword.}'
)

Write-Utf8File "1-pre-textuais/resumo.tex" @(
    '\palavraschave{Palavra-chave de exemplo; outra palavra-chave.}'
)

Write-Utf8File "1-pre-textuais/lista-de-abreviaturas-e-siglas.tex" @(
    '% use o comando \gls{} ao citar no texto para a sigla ficar visível na Lista.'
    '\newacronym{SIGLA}{SIGLA}{Descrição da sigla de exemplo}'
)

Write-Utf8File "1-pre-textuais/lista-de-simbolos.tex" @(
    '% Atencao! A lista nao ordena automaticamente'
    '\begin{simbolos} \itemstep -1pt'
    "`t\item[`$ x `$] Símbolo de exemplo"
    '\end{simbolos}'
)

# Arquivos que ficam vazios
foreach ($file in @(
    "1-pre-textuais/agradecimentos.tex",
    "1-pre-textuais/dedicatoria.tex",
    "1-pre-textuais/errata.tex"
)) {
    Write-Utf8File $file @('')
}

# Capítulos padrão
$chapters = @{
    "2-textuais/1-introducao.tex" = @(
        '\chapter{Introdução}'
        '\label{cap:introducao}'
    )
    "2-textuais/2-fundamentacao-teorica.tex" = @(
        '\chapter{Fundamentação Teórica}'
        '\label{cap:fundamentacao-teorica}'
    )
    "2-textuais/3-metodologia.tex" = @(
        '\chapter{Metodologia}'
        '\label{cap:metodologia}'
    )
    "2-textuais/4-resultados.tex" = @(
        '\chapter{Resultados}'
        '\label{cap:resultados}'
    )
    "2-textuais/5-conclusao.tex" = @(
        '\chapter{Conclusão}'
        '\label{cap:conclusao}'
    )
    "2-textuais/trabalhos-relacionados.tex" = @(
        '\chapter{Trabalhos Relacionados}'
        '\label{cap:trabalhos-relacionados}'
    )
}

foreach ($file in $chapters.Keys) {
    Write-Utf8File $file $chapters[$file]
}

Write-Host "Template restaurado com sucesso!"
