PROMPT='%{$fg[magenta]%}%n%{$reset_color%} %{$fg[blue]%}in%{$fg[green]%}%p %{$fg[cyan]%}%c%{$reset_color%}%{$fg[blue]%}$(prompt_git_info_funny_chars) %{$fg_bold[red]%}➜ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
