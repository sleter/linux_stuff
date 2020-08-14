# Kubuntu setup - neon style
## Activity Settings

 1. Activity Settings
 2. Define a special behaviour
 3. Never turn off the screen / Never shut down the computer or let it go to sleep

## Install Git
```console
sudo apt install git
```

## ZSH console
### Install ZSH
```console
sudo apt update
sudo apt install zsh
dpkg -l zsh
```
### Setting up ZSH as default shell
```console
chsh -s $(which zsh) // for working user
sudo chsh -s $(which zsh) // for root
```
### Setting up ZSH as default in Konsole

 1. Settings
 2. Edit current profile
 3. Command: /bin/zsh

After running console again and press ' 0 ' (creating ~/.zshrc with comment).

### Setting up Powerlevel10k theme
##### Downloading fonts
```console
cd Documents/
mkdir Fonts
cd Fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
```
##### Installing fonts
Click on every font and install it. Reboot computer.
##### Add font to Konsole

 1. Settings
 2. Edit Current Profile
 3. Appearance
 4. Select Font: *MesloLGS NF Regular*

##### Installing Powerlevel10k
```console
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```
Restart Konsole and choose what u like with configuration wizard.
## Setting up Konsole
##### Helpful shortcuts
 - *Ctrl+Shift+T* - New Tab
 - *Ctrl+Shift+W* - Close Tab
 - *Ctrl+Shift+N* - New Konsole window
 - *Shift+Right/Left* - Change Tab
##### Apperance

 - Color scheme & font: *Green on black*
 - Cursor - shape: *Underline*
 - Cursor - blinking: *Enabled*
 - Font - size: *11* 
##### Konsole configure
General:
 - disable - Show menu bar
 - enable - Remove window titlebar and frame

## Helpful aliases
Add to *~/.zshrc* file.
```console
alias ll='ls -la'
alias ls='ls --color=auto'
alias pls='sudo'
alias ..='cd ..'
alias grep='grep --color=auto'
alias h='history'
alias untar='tar -zxvf'
```
## System theme

 1. Global Theme
 2. Get New Global Themes
 3. Install *Sweet KDE*
 4. Select *Sweet* and Apply 

## SDDM login theme
https://github.com/stuomas/delicious-sddm-theme
```console
cd Documents/
git clone https://github.com/stuomas/delicious-sddm-theme.git
cd delicious-sddm-theme
./install.sh
```
## Important apps installation (SNAP)

### Recommended way - use snap

##### Slack
`sudo snap install slack --classic`
##### VSCode
`sudo snap install code --classic`
Best theme: 1984 (https://marketplace.visualstudio.com/items?itemName=juanmnl.vscode-theme-1984)
##### Spotify
`sudo snap install spotify`
##### VLC
`sudo snap install vlc`
##### Caprine (Facebook Messenger)
`sudo snap install caprine`
##### Curl
`sudo apt install curl`

### Bugs and fixes
Snap commends won't work with ZSH, fix:
`emulate sh -c 'source /etc/profile.d/apps-bin-path.sh'`

Another known bug (application doesn't appear in menu): https://forums.linuxmint.com/viewtopic.php?t=319827

## Additional apps installation
#### ytop (old gotop) - https://github.com/cjbassi/ytop
or
#### bashtop - https://github.com/aristocratos/bashtop
```console
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install
```
#### neofetch
`sudo apt install neofetch`

#### xclip
`sudo apt install xclip`
## SSH
#### Creating SSH key
```console
ssh-keygen
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
```
## Helpful shortcuts
### Managing windows
 - *Meta+#arrow#* - Move window to direction
 - *Meta+PgUp* - Maximize window
 - *Meta+PgDown* - Minimize window
### Changing virtual desktops
My own settings (GLobal Shortcuts - Switch One Desktop Up/Down):
 - *Ctr+Alt+DownArrow* - Next desktop
 - *Ctr+Alt+UpArrow* - Previous desktop

## Setting up Java with Sbt (SDKMAN)
```console
curl -s "https://get.sdkman.io" | zsh
source "/home/sleter/.sdkman/bin/sdkman-init.sh" # if .zshrc doesn't update automatically add this line
sdk install java 8.0.265.hs-adpt
sdk list java | grep installed # check installed
sdk install scala 2.11.12
sdk install sbt 1.3.13
```
More info: bartmiki.github.io/blog/2020/08/06/sdkman and https://sdkman.io/
