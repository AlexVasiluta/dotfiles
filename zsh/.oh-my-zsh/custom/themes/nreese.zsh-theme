# nreese - a slightly modified jreese

() {
	local LC_ALL="" LC_CTYPE="en_US.UTF-8"
	SEG_SEPARATOR=$'\ue0b0'
	SEG_REV_SEP=$'\ue0b2'
	GIT_DIRTY=""
	GIT_CLEAN=""
}

CUR_BG='NONE'
CUR_FG='white'

segment()
{
	local bg fg
    [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
    [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
    if [[ $CUR_BG != 'NONE' && $1 != $CUR_BG ]]; then
  	  	echo -n " %{$bg%F{$CUR_BG}%}$SEG_SEPARATOR%{$fg%} "
    else
		echo -n "%{$bg%}%{$fg%} "
    fi
 	CUR_BG=$1
	[[ -n $3 ]] && echo -n "$3"

}

prompt_end()
{
	if [[ -n $CUR_BG ]]; then
		echo -n "%{%k%F{$CUR_BG}%}$SEG_SEPARATOR"
	else
		echo -n "%{%k%}"
	fi
	echo -n "%{%f%} "
	CURRENT_BG=''
}

prompt_user_host()
{
	#segment blue default "$USER@%m"
	COLOR="%(!.red.blue)"
	segment $COLOR default "$USER@%m"
}

prompt_dir()
{
	segment cyan black "%~ "
}

prompt_git()
{
	if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
		dirty=$(parse_git_dirty)
		branch=$(git rev-parse --abrev-ref HEAD)
		if [[ -n dirty ]]; then
			segment yellow "$branch"
		else
			segment green "$branch"
		fi
	fi
}

build_lprompt()
{
	prompt_user_host
	prompt_dir
	prompt_git
	prompt_end
}

debug()
{
	PROMPT="$(build_lprompt)"
}

build_rprompt()
{
	COL="%(?.green.red)"
	echo -n "%{%F{$COL}%}$SEG_REV_SEP%{%f%}%{%K{$COL}%}%? ↵%{%k%}"
}
RPS1='%{%f%b%k%}$(build_rprompt)'


PROMPT='%F{green}%n%F{yellow}@%F{red}%m %F{blue}%~ $(git_prompt_info)%F{red}%(!.#.$)%f '
