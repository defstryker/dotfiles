function sudo!!
	eval sudo $history[1]
end

function perl_path
        set -x PATH /home/defstryker/perl5/bin $PATH ^/dev/null;
        set -q PERL5LIB; and set -x PERL5LIB /home/defstryker/perl5/lib/perl5:$PERL5LIB;
        set -q PERL5LIB; or set -x PERL5LIB /home/defstryker/perl5/lib/perl5;
        set -q PERL_LOCAL_LIB_ROOT; and set -x PERL_LOCAL_LIB_ROOT /home/defstryker/perl5:$PERL_LOCAL_LIB_ROOT;
        set -q PERL_LOCAL_LIB_ROOT; or set -x PERL_LOCAL_LIB_ROOT /home/defstryker/perl5;
        set -x PERL_MB_OPT --install_base\ \"/home/defstryker/perl5\";
        set -x PERL_MM_OPT INSTALL_BASE=/home/defstryker/perl5;
end

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-monokai.sh

    set -xg NIX_LINK "$HOME/.nix-profile"

    set EDITOR /usr/bin/vim

	set PATH $PATH ~/.npm-packages/bin
	# set PATH $PATH /home/defstryker/.gem/ruby/2.4.0/bin
	set PATH $PATH ~/.cargo/bin/
	set PATH $PATH ~/.cabal/bin/
	set PATH $PATH ~/transient/yadm/
	set PATH $PATH ~/bin/
	set PATH $PATH /home/defstryker/.gem/ruby/2.5.0/bin
	set -g -x GOPATH ~/.go
	set -g -x PATH  $PATH /home/defstryker/.local/bin/
	set -g -x PATH  $PATH /home/defstryker/.go/bin/
	# set -g -x PATH  $PATH /home/defstryker/.npm/bin/
	set -g -x GTK2_RC_FILES "/home/defstryker/.gtkrc-2.0"
    set -xg PATH $PATH $NIX_LINK/bin
    set -xg GOOGLE_APPLICATION_CREDENTIALS "/home/defstryker/FM/testing-grounds/consumers/NBI-Reel-P2-owner.json"
    eval fish ~/.config/fish/functions/nix.fish
    perl_path
end

function p
	eval ipython 
end

function time --description="Time just like in Bash"
    command time --portability $argv
end


