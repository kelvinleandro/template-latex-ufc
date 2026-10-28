########################################################################
## Customizações do abnTeX2 (http://abnTeX2.googlecode.com)           ##
## para a Universidade Estadual do Ceara - UECE                       ##
##                                                                    ##
## This work may be distributed and/or modified under the             ## 
## conditions of the LaTeX Project Public License, either version 1.3 ##
## of this license or (at your option) any later version.             ##
## The latest version of this license is in                           ##
##   http://www.latex-project.org/lppl.txt                            ##
## and version 1.3 or later is part of all distributions of LaTeX     ##
## version 2005/12/01 or later.                                       ##
##                                                                    ##
## This work has the LPPL maintenance status `maintained'.            ##
##                                                                    ##
## The Current Maintainer of this work is Thiago Nascimento           ##
##                                                                    ##
## Project available on: https://github.com/thiagodnf/uecetex2        ##
##                                                                    ##
## Further information about abnTeX2                                  ##
## are available on http://abntex2.googlecode.com/                    ##
##                                                                    ##
########################################################################

filename=documento

all: compile
	
compile:
	@echo "*********************************************************"
	@echo "*                                                       *"
	@echo "* Package 'ueceTeX2' Release 1.0 -- 17 de Dezembro 2014 *"
	@echo "*                                                       *"
	@echo "*********************************************************"
	@echo "Compilando..."
	pdflatex $(filename).tex
	bibtex $(filename)
	makeglossaries $(filename)
	makeindex $(filename)
	pdflatex $(filename).tex
	pdflatex $(filename).tex
	@echo "Processo finalizado com sucesso!"

	
clean:
	@echo -n "Limpando arquivos auxiliares...\n"
	@rm -f *.out *.aux *.alg *.acr *.dvi *.gls *.log *.bbl *.blg *.ntn *.not *.lof *.lot *.toc *.loa *.lsg *.nlo *.nls *.ilg *.ind *.ist *.glg *.glo *.xdy *.acn *.idx *.loq *~
	@rm -f $(filename).pdf
	@echo "Processo finalizado com sucesso!"

clean-template:
	@echo "Restaurando os arquivos de conteúdo do template..."
	@find 3-pos-textuais/anexos -type f -delete
	@find 3-pos-textuais/apendices -type f -delete
	@find figuras -type f -delete
	@rm -f 1-pre-textuais/ficha-catalografica.pdf
	@printf '%s\n' '% Referências bibliográficas do trabalho.' > 3-pos-textuais/referencias.bib
	@printf '%s\n' '\newglossaryentry{termo-exemplo}{' '	name={Termo de exemplo},' '	description={Definição do termo de exemplo.}' '}' > 3-pos-textuais/glossario.tex
	@printf '%s\n' '\keywords{Example keyword; another keyword.}' > 1-pre-textuais/abstract.tex
	@printf '%s\n' '\palavraschave{Palavra-chave de exemplo; outra palavra-chave.}' > 1-pre-textuais/resumo.tex
	@printf '%s\n' '% use o comando \gls{} ao citar no texto para a sigla ficar visível na Lista.' '\newacronym{SIGLA}{SIGLA}{Descrição da sigla de exemplo}' > 1-pre-textuais/lista-de-abreviaturas-e-siglas.tex
	@printf '%s\n' '% Atencao! A lista nao ordena automaticamente' '\begin{simbolos} \itemstep -1pt' '	\item[$ x $] Símbolo de exemplo' '\end{simbolos}' > 1-pre-textuais/lista-de-simbolos.tex
	@printf '%s\n' '' > 1-pre-textuais/agradecimentos.tex
	@printf '%s\n' '' > 1-pre-textuais/dedicatoria.tex
	@printf '%s\n' '' > 1-pre-textuais/errata.tex
	@printf '%s\n' '\chapter{Introdução}' '\label{cap:introducao}' > 2-textuais/1-introducao.tex
	@printf '%s\n' '\chapter{Fundamentação Teórica}' '\label{cap:fundamentacao-teorica}' > 2-textuais/2-fundamentacao-teorica.tex
	@printf '%s\n' '\chapter{Metodologia}' '\label{cap:metodologia}' > 2-textuais/3-metodologia.tex
	@printf '%s\n' '\chapter{Resultados}' '\label{cap:resultados}' > 2-textuais/4-resultados.tex
	@printf '%s\n' '\chapter{Conclusão}' '\label{cap:conclusao}' > 2-textuais/5-conclusao.tex
	@printf '%s\n' '\chapter{Trabalhos Relacionados}' '\label{cap:trabalhos-relacionados}' > 2-textuais/trabalhos-relacionados.tex
	@echo "Template restaurado com sucesso!"
