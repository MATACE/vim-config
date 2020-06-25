# Set Termin Colors

```bash
tar -xzf vim-termin-colors.tar.gz
cd vim-termin-colors/gnome-terminal-colors-solarized
./set_dark.sh
cd ../dircolors-solarized/
cp dircolors.256dark  ~/.dircolors
vim ~/.bashrc
# Add the config in flow #export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;
export TERM=xterm-256color
```

# Set Vim Config 

```bash
mkdir ~/.vim/autoload
cd vim-config/config/vim-plug/
cp plug.vim ~/.vim/autoload
cp REPO_DIRECTORY.tar.gz ~/.vim/
tar -xzf ~/.vim/REPO_DIRECTORY.tar.gz
```

Vist the example [Web](https://www.matace.com/IT/a435ed41/)