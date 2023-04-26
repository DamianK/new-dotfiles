# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
# my paths
export PATH=/home/damian/scripts:$PATH
# my aliases
alias con="openvpn3 session-start --config /home/damian/Documents/vpn/software_vpn_config.ovpn" 
alias discon="openvpn3 session-manage --config /home/damian/Documents/vpn/software_vpn_config.ovpn --disconnect"
alias listss="openvpn3 sessions-list"
alias downglib="sudo downgrade 'glib2=2.74.6'"
alias upgglib="sudo downgrade 'glib2=2.76.1'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
