### General ###
set -g fish_greeting # Set Fish greeting to empty
source ~/.config/fish/secret_env_vars.fish  # hides secret keys in config
set -gx COLORTERM truecolor  # For helix editor


### CUDA ###
export LD_LIBRARY_PATH='/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda-12.2/lib64:/usr/local/cuda-12.2/include:/usr/local/cuda-12.2:extras/CUPTI/lib64:/usr/local/cuda-11.8/lib64:/usr/local/cuda-11.8/include:/usr/local/cuda-11.8:extras/CUPTI/lib64'


### Aliases ###
alias g 'git'
alias clip 'xclip -selection clipboard'
alias cat 'bat'
alias op0 'op --chat=0'
alias op1 'op --chat=1'
alias op2 'op --chat=2'
alias op3 'op --chat=3'
alias op4 'op --chat=4'


### Auto start zellij ###
if status is-interactive
     # Configure auto-attach/exit to your likings (default is off).
     set ZELLIJ_AUTO_ATTACH true
     eval (zellij setup --generate-auto-start fish | string collect)
end


### Packages ###
zoxide init fish | source
#starship init fish | source
#
