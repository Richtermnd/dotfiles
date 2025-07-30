export DOTNET_CLI_TELEMETRY_OPTOUT=1;
export GOPATH="/home/mrust/programming/go"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk/"
export EDITOR=nvim

# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'
export DOTNET_ROOT=$HOME/.dotnet

export PATH=$PATH:/usr/local/go/bin:$GOPATH:$GOPATH/bin:/snap/bin:/home/mrust/bin/zen:/home/mrust/bin:/home/mrust/.cargo/bin
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools


# dark theme for qt
export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_THEME=Adwaita:dark
export TK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark
export QT_STYLE_OVERIDE=GTK+
