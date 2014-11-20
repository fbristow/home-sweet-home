# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme l

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
alias git-clean-remotes "git branch -a --merged development | grep -v development | grep -v master | grep remotes | perl -pe 's#remotes/##g' | xargs -n 1 git branch -rd"
alias git-clean-local "git branch -a --merged development | grep -v development | grep -v master | xargs -n 1 git branch -d"
set EDITOR /usr/bin/vim
