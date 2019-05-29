#!/usr/bin/env bash

# Git Init
#. ~/code/brew/git.brew

# Install Password Store
#. ~/code/brew/pass.brew

# Vim Configuration File
echo -e "syntax on\ncolo desert\n\nset tabstop=2\nset expandtab\nset autoindent" | tee ~/.vimrc > /dev/null

# Curl Configuration File
echo '-w "\n"' | tee ~/.curlrc > /dev/null

# ~/.bash_profile
echo -e "if [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi" >> ~/.bash_profile

echo -e "\n# Enable Colors\nexport CLICOLOR=1\nexport LSCOLORS=Exfxcxdxbxegedabagacad\nexport GREP_OPTIONS='--color=auto'\nPS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '" >> ~/.bash_profile

echo -e "\n# Infinite History\nHISTSIZE=1000000\nHISTFILESIZE=1000000" >> ~/.bash_profile

# ~/.bash_aliases
echo 'alias debug="open /Applications/Chromium.app/ --args --proxy-server=127.0.0.1:8080 --incognito"' >> ~/.bash_aliases
echo "alias activate='source venv/bin/activate'" >> ~/.bash_aliases
echo "alias global_activate='source /home/code/virtenv3/bin/activate'" >> ~/.bash_aliases
echo "alias ipify='curl -L api.ipify.org'" >> ~/.bash_aliases
echo "alias update='brew update && brew upgrade'" >> ~/.bash_aliases
echo "alias dvwa='docker run --rm -it -p 80:80 vulnerables/web-dvwa'" >> ~/.bash_aliases
echo "alias ll='ls -lA'" >> ~/.bash_aliases
echo 'lk() { builtin cd "$*" && ls -l; }' >> ~/.bash_aliases
echo 'dl() { aria2c -c -x 8 "$*"; }' >> ~/.bash_aliases
source ~/.bash_profile
