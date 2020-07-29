# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Add wisely, as too many plugins slow down shell startup.
#

plugins=(copyfile zsh_reload extract)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/snap/bin/:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# redefine prompt_context for hiding user@hostname
# prompt_context () { }

######## Env Tokens ############
export TWITTER_CONSUMER_KEY=""
export TWITTER_CONSUMER_SECRET=""
export TWITTER_ACCESS_TOKEN_KEY=""
export TWITTER_ACCESS_TOKEN_SECRET=""
export BITLY_ACCESS_TOKEN=""
export MEGA_KEY=""
export IMGUR_CLIENT_ID=""
export IMGUR_SECRET=""
export POSTIMG_CLIENT_ID=""
export GITHUB_PERSONAL_TOKEN=""
export GOOGLE_CLIENT_ID=''
export GOOGLE_CLIENT_SECRET=''
######################################

#MAIL SETTING
export EMAIL=""
MAIL=/var/spool/mail/john && export MAIL


######## Custom aliases #############

#alias pip2='/usr/bin/python -m pip'
alias datagrip='/home/prdpx7/desktop_dump/DataGrip-2017.2.2/bin/datagrip.sh'
#alias djvenv='source /home/prdpx7/LocalGitHub/DjangoPlayground/venv/bin/activate'
alias rm='rm -v'
#alias prolog='swipl'
alias rot13='tr "[A-Za-z]" "[N-ZA-Mn-za-m]"'
alias shttp="echo 'Machine IP: '`hostname -I` && python -m SimpleHTTPServer"
alias xup="sudo apt-get update && sudo apt-get upgrade"
alias cls='printf "\033c"'
alias jadx="/home/prdpx7/Experiments/jadx/build/jadx/bin/jadx"
export ANDROID_HOME=/home/prdpx7/Tools/android-sdk-linux
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
###########################################


###### NodeJS Config #########
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_ENV="development"
#########################################


###### python config ########
export PYTHONDONTWRITEBYTECODE=1
VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs

export DJANGO_ENV_TYPE='local'
###################################

#export JAVA_HOME='usr/lib/jvm/default-java'


###### Ruby config
export PATH="$PATH:$HOME/.rvm/bin"
#######################

# include dotfiles executable scripts
export PATH="$PATH:$HOME/dotfiles/scripts"

####### Qt config #########
export PATH=/opt/Qt5.3.1/5.3/gcc_64/bin/:$PATH
#####################

######### Golang-config ################
export GOPATH=$HOME/go:$HOME/GoProjects
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
########################################


####### Rust-config ###########
export PATH="$HOME/.cargo/bin:$PATH"
#############################

# supervisor aliases
alias server_status='tail -F /var/log/gunicorn/gunicorn_server.log'
alias render_server_status='sudo supervisorctl tail -f render_server'
alias spotify="/snap/bin/spt"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
