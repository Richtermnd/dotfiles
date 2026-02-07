export DOTNET_CLI_TELEMETRY_OPTOUT=1;
export GOPATH="/home/mav/programming/go"
export JAVA_HOME="/home/mav/.local/opt/jdk-25.0.1"
export EDITOR=nvim

# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'
export DOTNET_ROOT=$HOME/.dotnet

export PATH=$PATH:/usr/local/go/bin:$GOPATH:$GOPATH/bin:/home/mav/.local/bin:/home/mav/.local/opt
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$PATH:$JAVA_HOME/bin


# dark theme for qt
export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_THEME=Adwaita:dark
export TK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark
export QT_STYLE_OVERIDE=GTK+



export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
