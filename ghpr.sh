#!/bin/bash
gh config set pager cat
echo "APROVADOR DE PR 2.0 TURBO"
echo " "
echo "-----------------------------------------------------------------------------"
gh pr diff --patch $1
echo "-----------------------------------------------------------------------------"
echo " "
echo " "
echo "APROVAR?"
select sn in "Sim" "Nao"; do
    case $sn in
        Sim ) gh pr review -a $1; break;;
        Nao ) echo "PR não aprovada"; exit;;
    esac
done
