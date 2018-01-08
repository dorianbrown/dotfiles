#!/usr/bin/env bash

files_array=$(ls -A files)

for file in ${files_array}
do
    if [ -f ${HOME}/${file} ]
    then
        echo "Creating backup: ${HOME}/${file}.copy"
        mv ${HOME}/${file} ${HOME}/${file}.copy
    fi
    echo "symlinking: ${file}"
    ln -s ${HOME}/workspace/dotfiles/e7240/files/${file} ${HOME}/${file}
done
echo "done!"
