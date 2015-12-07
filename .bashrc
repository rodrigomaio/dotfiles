# alias
alias l.='ls -dG .*'
alias ll='ls -lG'
alias ls='ls -G'

# PS1
R='\[\033[0m\]'
LGREEN='\[\033[01;32m\]'
LBLUE='\[\033[01;34m\]'
DGRAY='\[\033[01;30m\]'
LGRAY='\[\033[00;37m\]'
RED='\[\033[01;31m\]'
GIT_PS1_SHOWDIRTYSTATE=true
PS1="$ ${DGRAY}\h|${R}${LGRAY}\u${R} ${LBLUE}\W${R}\$(__git_ps1 \"${RED} (%s)${R}\"): "

# SSH Filesystem
function fuse() {
  local SERVER="$1"                      # Server, with FQDN if possible
  local USER="$2"                        # Remote username to mount
  local VOLUME="/Volumes/${SERVER}"      # Local mount point on OSX
  diskutil unmount force $VOLUME         # Force a unmount on Volume
  mkdir -p $VOLUME                       # Ensures that the directory exists
  sshfs -o auto_cache,reconnect,workaround=all ${USER}@${SERVER}:/home/${USER}/ $VOLUME
}

# Up & down map to history search once a command has been started.
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

