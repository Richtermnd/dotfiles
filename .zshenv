export GOPATH="/home/mrust/go"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
export EDITOR=nvim
# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'
export DOTNET_ROOT=$HOME/.dotnet

export PATH=$PATH:/usr/local/go/bin:$GOPATH:$GOPATH/bin:/snap/bin:/home/mrust/bin/zen:/home/mrust/bin:/home/mrust/.cargo/bin
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
