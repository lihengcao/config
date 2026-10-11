separator() { echo -e "\n---\n"; }
uu() { sudo apt update && separator && sudo apt upgrade -y; }
uua() { uu && separator && sudo apt autoremove -y; }

a() { tmux new-session -A -s ${1:-main}; }
d() { tmux detach; }

alias rm="echo Use the full path i.e. '/bin/rm', consider using trash or gio trash"