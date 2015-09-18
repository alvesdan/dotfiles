# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
DISABLE_AUTO_TITLE="true"
plugins=(git bundler common-aliases git-extras osx rvm web-search)
source $ZSH/oh-my-zsh.sh

killByName () {
  local name=$1;
  ps -ax | grep $name | awk '{print $1}' | xargs kill -9
}

kill_by_name () { killByName $@; }

setTerminalText () {
  # echo works in bash & zsh
  local mode=$1 ; shift
  echo -ne "\033]$mode;$@\007"
}
stt_both  () { setTerminalText 0 $@; }
stt_tab   () { setTerminalText 1 $@; }
stt_title () { setTerminalText 2 $@; }

stt_title "Let's Code"

# Base16 Shell
BASE16_SHELL="$HOME/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

