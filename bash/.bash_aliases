# -------------------------------------
#	        General
# -------------------------------------
alias ls='ls --color=auto'
alias l='ls'
alias la="ls -A"       # List including dotfiles
alias ll="ls -lA"
alias ld="ls -d */"   # List only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c='clear'
alias reset='source ~/.profile'


# -------------------------------------
#		Vim
# -------------------------------------
alias v="vim"
alias vi="vim"

# ------------------------------------------------
#                GitHub
# ------------------------------------------------
# Quick git push 
alias qpush='git add --all && git commit -m "-" && git push'


# -------------------------------------
#	          Python
# -------------------------------------
# making the python 3 the default interpreter.
alias python=python3
alias ipy=ipython3        # quicker access to ipython

alias deac='deactivate'  # for virtual environments
alias q='exit'

# -------------------------------------
#	           Tmux
# -------------------------------------
alias mux='tmux'


# sudo mount -t vfat /dev/sda2 /mediasudo mount -t vfat /dev/sda2 /media/usb0 -o uid=1000,gid=1000,utf8,dmask=027,fmask=137
# sudo umount /media/usb0

alias tm=tmux
# sudo mount /dev/sdb1 /mnt/usb
