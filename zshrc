export HOMEBREW_REPOSITORY="/opt/homebrew"
source $HOMEBREW_REPOSITORY/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# psql
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# virutalenv
export PATH="$HOME/.local/bin:$PATH"

# disable Spring
export DISABLE_SPRING=true

# bundle open
export BUNDLER_EDITOR=code

# legacy_version_file = no

# snowsql
alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/snowsql

export PATH="/Users/alexamyot/.asdf/shims/pip3:$PATH"

# use Terragrunt's provider cache
export TG_PROVIDER_CACHE=1

eval "$(direnv hook zsh)"
