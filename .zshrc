source ~/.zsh.d/zshrc

alias ls="ls -FG"
alias l="ls -FG"
alias la="ls -lhAFG"
alias ll="ls -lAFG"
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias updatedb='/usr/libexec/locate.updatedb'
alias bim="vim"
alias im="vim"
alias vm="vim"
alias vmi="vim"
alias mvi="vim"
alias openssl='/usr/local/bin/openssl'
alias be="bundle exec"
alias koukai="java -XstartOnFirstThread -jar ~/Downloads/macosx-x64/logbook.jar"

#alias rec='rec --encoding signed-integer --bits 8 --channels 1 --rate 16000 test.wav'

export NVM_DIR="/Users/shimenawa/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.nvm/nvm.sh

export PATH="$HOME/.rbenv/shims:$PATH"

function fxg() {
  find "$1" -name "*" -type f -print0 |xargs -0 grep -n "$2"
}

export PHP_DOC_DIR="/Library/WebServer/Documents"
export SAKURA_SRV="160.16.66.155"
