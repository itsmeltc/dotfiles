if [ "$(uname)" == "Linux" ]; then
        if [ -t 1 ]; then
                cd ~
                exec zsh
        fi
fi
