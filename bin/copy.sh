# $1: path copy from (without filename)
# $2: path copy to
# $3: file name you will copy
function copy_file(){
    # is symbolic link exists? if it's no, ask you want to overwrite?
    if [ -L $2/$3 ] ; then
        echo -e "\n${WARNING} : ${3} exists as a symbolic link (${2}/${3})"
        read -p "Do you want to update ${3} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            ln -snfv $1/$3 $2/$3
            echo -e "${SUCCESS} : Copied: ${2}/${3}\n"
            return
        else
            echo -e "${CANCEL} : Canceled: ${2}/${3}\n"
            return
        fi
    fi

    # is file exists? if it's no, ask you want to overwrite?
    if [ -f $2/$3 ] ; then
        echo -e "\n${WARNING} : ${3} exists as a file (${2}/${3})"
        read -p "        Do you want to update ${3} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            rm $2/$3
            echo -e "${INFO} : Removed: ${2}/${3}"
            ln -snfv $1/$3 $2/$3
            echo -e "${SUCCESS} : Copied: ${2}/${3}\n"
            return
        else
            echo -e "${CANCEL} : Canceled: ${2}/${3}\n"
            return
        fi
    fi
    
    ln -snfv $1/$3 $2/$3
    echo -e "${SUCCESS} : Copied: ${2}/${3}\n"
    
}
