SOURCE_DIR="${HOME}/dotfiles/dotfiles/."

cp --recursive --symbolic-link --force ${SOURCE_DIR} ${HOME}

# This is the equivalent to the command above but for MacOS
# cp -R -P -f ${SOURCE_DIR} ${HOME}

