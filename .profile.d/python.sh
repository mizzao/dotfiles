
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/mao/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/mao/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/mao/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/mao/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# Conda does all sorts of crazy shit that doesn't work on WSL. Just do the simple thing.
export PATH="/home/mao/miniconda3/bin:$PATH"
