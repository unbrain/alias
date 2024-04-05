# !/bin/sh

_() {
  # echo "where is yourzshrc"
  # read -r ZSH
  # [ -z "$ZSH" ] && exit 1
  ZSH="~/.zshrc"

  echo '
  # git
  alias ga.="git add ."
  alias gc="git commit"
  alias gsb="git status -sb"
  alias gp="git push"
  alias gco="git checkout"

  # proxy
  alias w2proxy="export https_proxy=http://127.0.0.1:8899 http_proxy=http://127.0.0.1:8899 all_proxy=socks5://127.0.0.1:8899"
  alias clashproxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

  ' >> '${ZSH}'

  source '${ZSH}'
} && _

unset -f _
