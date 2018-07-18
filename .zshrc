# 日本語を使用
#export LANG=ja_JP.UTF-8

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit

# 他のターミナルとヒストリーを共有
setopt share_history

# コマンドミスを修正
setopt correct

# エイリアス
alias ls='ls --color=auto'
alias lst='ls -ltr --color=auto'
alias l='ls -ltr --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
#alias so='source'
alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'
#alias c='cdr'
# historyに日付を表示
alias h='fc -lt '%F %T' 1'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='cd ../'
#alias back='pushd'
alias diff='diff -U1'
# Shell_Reload
alias reload_shell='exec $SHELL -l'
# X
alias startx='startxfce4'
alias open='xdg-open'
# git
alias gita='git add'
alias gitc='git commit'
alias gits='git status'
alias gitl='git log --oneline --decorate --graph'
alias gitcs='git commit -S' # Signature option
# pbcopy-paste
alias pbcopy='xclip -in -sel clip'
alias pbpaste='xclip -out -sel clip'

# cdの後にlsを実行
chpwd() { ls -ltr --color=auto }

# プロンプトを2行で表示、時刻を表示
autoload -Uz vcs_info
PROMPT="%(?.%{${fg[green]}%}.%{${fg[green]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~"
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT=$PROMPT' ${vcs_info_msg_0_}'
PROMPT=$PROMPT"
%# "

#autoload -Uz vcs_info
#zstyle ':vcs_info:*' formats '(%F{white}%K{green}%s%f%k)-[%F{white}%K{blue}%b%f%k]'
#zstyle ':vcs_info:*' actionformats '(%F{white}%K{green}%s%f%k)-[%F{white}%K{blue}%b%f%k|%F{white}%K{red}%a%f%k]'
#
#precmd() {
#  local left='\-[%B%n%b%F{cyan}@%f%B%m%b]'
#  # バージョン管理されてた場合、ブランチ名
#  vcs_info
#  local right="${vcs_info_msg_0_}-[%K{magenta}%d%k]"
#
#  local invisible='%([BSUbfksu]|([FK]|){*})'
#  local leftwidth=${#${(S%%)left//$~invisible/}}
#  local rightwidth=${#${(S%%)right//$~invisible/}}
#  local padwidth=$(($COLUMNS - ($leftwidth + $rightwidth)))
#
#  print -P $left${(r:$padwidth::-:)}$right-
#}
## %(1j,(%j),) : 実行中のジョブ数が1つ以上ある場合ジョブ数を表示
#PROMPT='-%(1j,(%j),)%B%#%b '

# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2

# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 履歴
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# less color
export LESS='-R'
