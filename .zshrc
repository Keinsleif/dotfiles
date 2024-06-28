# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#################################  HISTORY  #################################
# history
HISTFILE=$HOME/.zsh_history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

## share .zshhistory
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt share_history        # 履歴を他のシェルとリアルタイム共有する

## duplicate
setopt hist_ignore_all_dups
setopt extended_history
setopt hist_expire_dups_first

#################################  COMPLEMENT  #################################
# enable completion
autoload -Uz compinit; compinit
autoload -Uz colors; colors

## setopts
setopt auto_param_keys
setopt auto_menu
setopt correct
setopt interactive_comments
setopt magic_equal_subst
setopt print_eight_bit
setopt no_beep
setopt complete_in_word

## case completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

## completion grouping
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

## tag completion
zstyle ':completion:*:default' menu select=2

## coloring
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## for docker
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes


eval "$(sheldon source)"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias exp="/mnt/c/Windows/explorer.exe"
alias clip="/mnt/c/Windows/system32/clip.exe"
alias code="/mnt/c/Users/keinsleif/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
