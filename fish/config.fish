### General ###
set -g fish_greeting # Set Fish greeting to empty
source ~/.config/fish/secret_env_vars.fish  # hides secret keys in config
set -gx COLORTERM truecolor  # For helix editor
set -gx EDITOR nvim
set -g theme_nerd_fonts yes
set -g theme_powerline_fonts yes


### CUDA ###
export LD_LIBRARY_PATH='/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda-12.2/lib64:/usr/local/cuda-12.2/include:/usr/local/cuda-12.2:extras/CUPTI/lib64:/usr/local/cuda-11.8/lib64:/usr/local/cuda-11.8/include:/usr/local/cuda-11.8:extras/CUPTI/lib64'


### Aliases ###
alias clip 'xclip -selection clipboard'


### Abbreviation ###
abbr g 'git'
abbr gs 'git status'
abbr ga 'git add'
abbr gd 'git diff -w'
abbr gds 'git diff -w --staged'
abbr gb 'git branch'
abbr gp 'git push origin'
abbr gc 'git commit -m \''

abbr op 'sgpt --chat=0 \''
abbr op1 'sgpt --chat=1 \''
abbr op2 'sgpt --chat=2 \''
abbr op3 'sgpt --chat=3 \''
abbr op4 'sgpt --chat=4 \''

abbr cd 'z'
abbr n 'nvim'
abbr grep 'rg'
abbr cat 'bat'


### Auto start zellij ###
if status is-interactive
     # Configure auto-attach/exit to your likings (default is off).
     set ZELLIJ_AUTO_ATTACH true
     eval (zellij setup --generate-auto-start fish | string collect)
end


### Packages ###
zoxide init fish | source
#starship init fish | source
thefuck --alias | source

set -g fish_user_paths "/home/linuxbrew/.linuxbrew/bin" $fish_user_paths


set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/callume/.ghcup/bin # ghcup-env
