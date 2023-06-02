# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/home/sleter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias ll="ls -la"
alias chp="bluetoothctl connect E8:EE:CC:07:4C:3C"
alias ck="bluetoothctl connect DC:2C:26:0D:68:E9"
alias ass="xrandr --output HDMI-1 --auto --right-of eDP-1"                                   ✔  3s  
alias ass-off="xrandr --output HDMI-1 --off"
alias untar="tar -zxvf"
alias del="rm -rf"
alias update="sudo pacman -Syu"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Tesseract
export TESSDATA_PREFIX=/usr/share/tessdata
