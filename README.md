# ghpr

## Como usar:

- Execute:
```
git clone https://github.com/nevesm/ghpr.git
cp ghpr.sh /usr/bin
chmod +x ghpr.sh /usr/bin
```
- Agora execute ghpr.sh seguido do link da PR à partir de qualquer lugar no seu SHELL: `ghpr.sh https://github.com/nevesm/ghpr/pull/1`


## Criar alias:

- Adicione esse trecho dentro do arquivo `~/.zshrc`:
```
#GitHub PR
alias aprova='~/ghpr.sh'
```
- Agora para aprovar alguma PR vc executa o comando 'aprova' seguido do link da PR: `aprova https://github.com/nevesm/ghpr/pull/1`
