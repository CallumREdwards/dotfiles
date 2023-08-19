set -g fish_greeting # Set Fish greeting to empty

#starship init fish | source

export LD_LIBRARY_PATH='/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda-12.2/lib64:/usr/local/cuda-12.2/include:/usr/local/cuda-12.2:extras/CUPTI/lib64:/usr/local/cuda-11.8/lib64:/usr/local/cuda-11.8/include:/usr/local/cuda-11.8:extras/CUPTI/lib64'

alias clip 'xclip -selection clipboard'

set -gx COLORTERM truecolor  # For helix editor
