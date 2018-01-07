function sudo!!
	eval sudo $history[1]
end

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-monokai.sh

    set -xg NIX_LINK "$HOME/.nix-profile"

	set PATH $PATH ~/.npm-packages/bin
	# set PATH $PATH /home/defstryker/.gem/ruby/2.4.0/bin
	set PATH $PATH ~/.cargo/bin/
	set PATH $PATH ~/.cabal/bin/
	set PATH $PATH ~/transient/yadm/
	# set PATH $PATH ~/.go/bin/
	# set PATH $PATH /home/defstryker/.gem/ruby/2.4.0/bin
	set -g -x GOPATH ~/.go
	set -g -x PATH  $PATH /home/defstryker/.local/bin/
	set -g -x PATH  $PATH /home/defstryker/.go/bin/
	# set -g -x PATH  $PATH /home/defstryker/.npm/bin/
	set -g -x GTK2_RC_FILES "/home/defstryker/.gtkrc-2.0"
    set -xg PATH $PATH $NIX_LINK/bin
    eval fish ~/.config/fish/functions/nix.fish
end

function p
	eval ipython 
end

function time --description="Time just like in Bash"
    command time --portability $argv
end
