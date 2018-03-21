#!/bin/bash

files_array=$(ls -A ../files)

for file in ${files_array}
do
    if [ -f ${HOME}/${file} ]
    then
        echo "Creating backup: ${HOME}/${file}.copy"
        mv ${HOME}/${file} ${HOME}/${file}.copy
    fi
    echo "symlinking: ${file}"
    file_dir=$(readlink -f ../files)
    ln -s ${file_dir}/${file} ${HOME}/${file}
done

echo '' >> ~/.bashrc 
echo '# Loading personal bashrc' >> ~/.bashrc 
echo 'source ~/.my_bashrc' >> ~/.bashrc 
echo '# Loading bash aliases' >> ~/.bashrc 
echo 'source ~/.bash_aliases' >> ~/.bashrc 

echo "Cloning vundle repository from github"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "done!"
