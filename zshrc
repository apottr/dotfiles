
#env vars
export EDITOR=$(which vi)
export ANTLRPATH=$HOME/.local/bin/antlr-4.7.1-complete.jar
export CLASSPATH=".:$ANTLRPATH:$CLASSPATH"
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$HOME/.pyenv/bin:$PATH"

#aliases
alias pgrep='pgrep -l'
alias rsync='rsync -Phr --remove-source-files'
alias open="xdg-open"
alias antlr4='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.gui.TestRig'

#functions
vidot () {
    $EDITOR $HOME/dotfiles/$1
}

#setup calls
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
