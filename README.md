# dotfiles

### Enable key repeat on external keyboard
````
defaults write -g ApplePressAndHoldEnabled -bool false
````

### Fix smooth font on external monitor
[Reference](http://hints.macworld.com/article.php?story=20090828224632809)
```
defaults -currentHost write -globalDomain AppleFontSmoothing -int 1
```

### Show hidden files permanently
```
defaults write com.apple.Finder AppleShowAllFiles true && killall Finder
```

### Install homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Clone

```
brew install git
git clone git@github.com:idanyman/dotfiles.git
```

### Install dependencies from Brewfile

```
cd dotfiles
brew bundle
```

### Install oh-my-zsh and set zsh as default shell
```
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install kitty
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

### Create symlinks

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/vscode/settings.json /Users/inyman/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/vscode/keybindings.json /Users/inyman/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/dotfiles/.config/nvim ~/.config/
ln -s ~/dotfiles/.config/kitty ~/.config/
```

### Install VS Code extensions

1. Enable shell command
    1. Launch VS Code
    2. Open the Command Palette (⇧⌘P)
    3. Enable `Shell Command: Install 'code' command in PATH`
2. Install extensions through the shell
    ```
    ~/dotfiles/vscode/extensions.sh
    ```
