# nreese - a slightly modified jreese

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi


PROMPT='%F{$NCOLOR}%n%F{yellow}@%F{red}%m%f %F{blue}%~ %f$(git_prompt_info)%F{red}%(!.#.$)%f '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
# RPS1='%(?.%{$fg[green]%}.%{$fg[red]%})%? ↵%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f "
ZSH_THEME_GIT_PROMPT_CLEAN="%F{green}✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}✗"

