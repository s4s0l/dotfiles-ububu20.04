complete -W "$(tldr 2>/dev/null --list)" tldr
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
alias l="exa -lahF"
alias fzfp="fzf --preview '[[ \$(file --mime {}) =~ binary  ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -500'"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export VISUAL=vim
export EDITOR="$VISUAL"

if [[ -n $DISPLAY ]]; then
  copy_line_to_x_clipboard () {
    local x=$READLINE_LINE
    printf %s "$x" | xsel -ib
  }
  bind -x '"\C-g": copy_line_to_x_clipboard'
fi

eval "$(fasd --init auto)"
