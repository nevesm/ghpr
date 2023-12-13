#!/bin/bash
gh config set pager cat
echo "-----------------------------------------------------------------------------"
echo "APROVADOR DE PR 2.0 TURBO"
echo "PR: $1"
echo "-----------------------------------------------------------------------------"

PS3="Selecione uma opção (1-4): "
MENU='1) Alteracoes\n2) Comentarios\n3) Aprovar\n4) Sair'

select options in "Alteracoes" "Comentarios" "Aprovar" "Sair"; do
    case $options in
        Alteracoes )
            gh pr diff --patch $1
            echo "-----------------------------------------------------------------------------"
            echo | sed "i$MENU";;
        Comentarios )
            gh pr view -c $1
            echo "-----------------------------------------------------------------------------"
            echo | sed "i$MENU";;
        Aprovar )
            gh pr review -a $1
            echo "-----------------------------------------------------------------------------"
            echo "PR aprovada!"
            exit;;
        Sair )
            echo "PR não aprovada"
            exit;;
    esac
done