#!/bin/bash

source "${PWD}/helper/logging.sh"

# $1: path copy from
# $2: path copy to
# $3: space to adjust to show
function copy_file(){
    SPACE="            "
    # is symbolic link exists? if it's no, ask you want to overwrite?
    if [ -L $2 ] ; then
        echo -e  "\n${WARNING}${2} exists as a symbolic link (${2})"
        read -p "${SPACE}Do you want to update ${2} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            ln -snfv $1 $2
            echo -e "${SUCCESS}Copied: ${2}\n"
            return
        else
            echo -e "${CANCEL}Canceled: ${2}\n"
            return
        fi
    fi

    # is file exists? if it's no, ask you want to overwrite?
    if [ -f $2 ] ; then
        echo -e  "\n${WARNING}${2} exists as a file (${2})"
        read -p "${SPACE}Do you want to update ${2} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            rm $2
            echo -e "${INFO}Removed: ${2}"
            ln -snfv $1 $2
            echo -e "${SUCCESS}Copied: ${2}\n"
            return
        else
            echo -e "${CANCEL}Canceled: ${2}\n"
            return
        fi
    fi
    
    ln -snfv $1 $2
    echo -e "${SUCCESS} : Copied: ${2}\n"
    
}

# $1: path copy from
# $2: path copy to
# $3: space to adjust to show
function copy_dir(){
    SPACE="            "
    # is symbolic link exists? if it's no, ask you want to overwrite?
    if [ -d $2 ] ; then
        echo -e "\n${WARNING}${1} exists as a symbolic link"
        read -p "${SPACE}Do you want to update ${2} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            ln -snfv $1 $2
            echo -e "${SUCCESS}Copied: ${2}\n"
            return
        else
            echo -e "${CANCEL}Canceled: ${2}\n"
            return
        fi
    fi
    
    ln -snfv $1 $2
    echo -e "${SUCCESS}Copied: ${2}\n"
    
}
