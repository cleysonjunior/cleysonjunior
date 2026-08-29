#!/usr/bin/env bash
# Grava bio, localizacao, site, empresa e "disponivel para contratacao" no
# perfil do GitHub. Estes campos NAO sao do repositorio: sao da conta, e o
# token precisa do escopo `user` — o README sozinho nao os alcanca.
#
# Antes de rodar, uma vez:
#   gh auth refresh -h github.com -s user
#
# Sao os campos que o filtro de recrutador usa: "disponivel para contratacao"
# e localizacao entram na busca do GitHub; a bio e o que aparece no resultado.
set -euo pipefail

# O campo `blog` aponta para cleyson.me, nao mais para o site da empresa: numa
# busca de emprego quem clica quer VOCE, nao o produto. A pagina esta no ar com
# HTTPS desde 29/08/2026 e espelha o README deste perfil.
BIO='Coordenador de TI e dev full-stack. Construo SaaS que roda em produção: gestão de frota com GPS e chatbots de IA no WhatsApp.'

# gh auth status escreve em stderr, nao em stdout — testar pela saida faz o
# script achar que ninguem esta logado. O que vale e o codigo de saida.
if ! gh auth status >/dev/null 2>&1; then
  echo "gh nao autenticado — rode: gh auth login" >&2; exit 1
fi

# Sem --jq no PATCH de proposito: quando o token nao tem o escopo `user`, a
# resposta e um erro e o jq imprimia um "ok:" com os campos vazios — sucesso
# falso. Grava calado e CONFERE lendo o perfil de volta.
gh api -X PATCH /user \
  -f name='Cleyson Júnior Studzinski' \
  -f bio="$BIO" \
  -f location='Chapecó, SC — Brasil' \
  -f blog='https://cleyson.me' \
  -f company='CJS Infotech' \
  -F hireable=true > /dev/null

gh api /user --jq '"gravado: " + .name + " · " + .location + " · disponivel para contratacao=" + (.hireable|tostring) + "\nbio: " + .bio'
