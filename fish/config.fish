set -g fish_greeting # Set Fish greeting to empty

#starship init fish | source

export LD_LIBRARY_PATH='/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda-12.2/lib64:/usr/local/cuda-12.2/include:/usr/local/cuda-12.2:extras/CUPTI/lib64:/usr/local/cuda-11.8/lib64:/usr/local/cuda-11.8/include:/usr/local/cuda-11.8:extras/CUPTI/lib64'

alias clip 'xclip -selection clipboard'

set -gx COLORTERM truecolor  # For helix editor

alias g='git'


### Auto start zellij ###
# if status is-interactive
#     # Configure auto-attach/exit to your likings (default is off).
#     # set ZELLIJ_AUTO_ATTACH true
#     # set ZELLIJ_AUTO_EXIT true
#     eval (zellij setup --generate-auto-start fish | string collect)
# end
if not set -q ZELLIJ
    if test "$ZELLIJ_AUTO_ATTACH" = "true"
        zellij attach -c
    else
        zellij
    end

    if test "$ZELLIJ_AUTO_EXIT" = "true"
        kill $fish_pid
    end
end
source secret_env_vars.fish
