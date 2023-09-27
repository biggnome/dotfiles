# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="../../zsh-theme-powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# case-insensitive path completion
# autoload -Uz +X compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Do not enter command lines into the history list if they are duplicates of the previous event
setopt HIST_IGNORE_DUPS

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove superfluous blanks from each command line being added to the history list
setopt HIST_REDUCE_BLANKS

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=~/.config/zsh/

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    ag
    aliases
    # calc                    # in-shell calculator (via "=" command) from arzzen/calc.plugin.zsh
    colored-man-pages-alt
    fancy-ctrl-z
    fast-syntax-highlighting
    fd
    git
    git-auto-fetch
    # sudo
    # z
    zsh-autosuggestions
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export SUDO_EDITOR='lvim'
export VISUAL='lvim'
export EDITOR='lvim'
export MICRO_TRUECOLOR=1    # Enable true color mode for micro editor
export PAGER='bat'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Pretty!
alias ls='lsd'  # formerly colorls
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
function chpwd() {  # ls that sucker whenever working directory changes
    lsd
}
# Human-readable sizes
alias df='df -h'
alias free='free -h'
# Don't do anything rash with cp, rm, or mv
alias cp='cp -i'
alias rm='rm -rI'
alias mv='mv -i'
# Shorthand commands
alias vi='lvim'         # alias n/vi/m to lvim....
alias vim='lvim'        # ....
alias nvim='lvim'       # ..
alias vimdiff='lvim -d' #.
alias mkdir='mkdir -p'
alias fd='fd -H -E /timeshift/ -E /run/timeshift/'      # Exclude backups from fd
alias find='fd -H -E /timeshift/ -E /run/timeshift/'    # Replace 'find' with faster 'fd'
alias ack='ag'
alias cat='bat'
alias less='bat'
alias more='bat'
alias readme='glow README.md'
alias zsh-config='lvim ~/.zshrc && exec zsh'
alias powerpellet='sudo pacman-mirrors -f0 && sudo pacman -Syyu && sudo pacman -Sc' # Refresh pacman mirrors, update repositories, tidy up
alias osxclean="/bin/find . -type f -name '*.DS_Store' -ls -delete"  # Clean up junk files from OS X
# alias alac-config='lvim ~/.config/alacritty/alacritty.yml'
alias kitty-config='lvim ~/.config/kitty/kitty.conf'
# alias conky-config='lvim ~/.config/conky/conky.conf'
# alias conky-reload='killall conky && ~/.config/conky/./autostart'
alias powertop='sudo powertop'
alias weather='curl https://wttr.in/'
alias makedep='sudo pacman -D --asdeps'
# Wanton frivolity
alias umoria='umoria ~/.local/share/games/umoria/moria-save'    # Load saved game from local directory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User functions
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# “...One function to extract them all, and in the darkness bind them”
ext ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)    tar xjf $1  ;;
      *.tar.gz)     tar xzf $1  ;;
      *.bz2)        bunzip2 $1  ;;
      *.rar)        unrar x $1  ;;
      *.gz)         gunzip $1   ;;
      *.tar)        tar xf $1   ;;
      *.tbz2)       tar xjf $1  ;;
      *.tar.tgz)    tar xzf $1  ;;
      *.zip)        unzip $1    ;;
      *.Z)          uncompress $1    ;;
      *.7z)         7z x $1     ;;
      *.deb)        ar x $1     ;;
      *.tar.xz)     tar xf $1   ;;
      *.tar.zst)    unzstd $1   ;;
      *)            echo "'$1' cannot be extracted via ext()"   ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

update-vcv ()
{
    sudo rm /usr/lib/vst/VCV*
    sudo mv $1/*.so /usr/lib/vst
    sudo rm -rf /opt/VCV/Rack2Pro
    sudo mv $1/Rack2Pro /opt/VCV/
    rm -rf $1
    echo "VCV Rack update complete (unless you did something really dumb...you didn't, did you?)"
}

# Path stuff
export BATTALIONDATADIR='/usr/share/games/battalion.data'
export BATTALIONSCOREDIR=$HOME/.local/share/games

