# dotfiles

Install dependencies:
```
brew install zsh zsh-completions git vim fzf
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Clone:

```
git clone git@github.com:idanyman/dotfiles.git
```

Create symlinks:

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

Install vim plug:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```
vim +PlugInstall
vim +CocInstall\ coc-json
vim +CocInstall\ coc-yaml
```
