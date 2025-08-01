sudo apt update
sudo apt install nala
sudo nala fetch
sudo add-apt-repository ppa:deadsnakes/ppa
sudo nala update
sudo nala upgrade -y

sudo nala install git python3-venv python3-pip
sudo nala install pipx powerline-gitstatus
sudo nala install python-is-python3 wslu

pipx install pdm
pipx inject pdm cookiecutter
pipx install ipython
pipx inject ipython requests

ln -s "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" $HOME/msedge.exe


cat << 'EOF' >> ~/.bashrc

# powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
   source /usr/share/powerline/bindings/bash/powerline.sh
fi

# add .local/bin to path for pip/python.
export PATH=$PATH:~/.local/bin

# gWSL to allow graphical representation (open Linux GUI apps)
export DISPLAY=":0"

# MS EDGE Default Browser for any app or script trying to open a browser
# Symlink was created with:
# ln -s "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" $HOME/msedge.exe
export BROWSER=$HOME/msedge.exe

alias here='explorer.exe `wslpath -w $PWD`' # open current directory in windows explorer
alias o="wslview" # open file with default program in windows

EOF

source ~/.bashrc

echo 'ssh-keygen -C'
echo 'cat ~/.ssh/id_rsa.pub | clip.exe'

echo 'ssh -T git@github.com'
