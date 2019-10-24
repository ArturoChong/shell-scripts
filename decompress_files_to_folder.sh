DOWNLOADS_PATH="/home/$(whoami)/Downloads"
function process_files {
    for i in *.zip; do unzip "$i" -d "${i%%.zip}"; rm "$i"; done 
    for i in *.rar; do unrar e "$i" "${i%%.rar}"; rm "$i"; done 
}

function delete_torrents {
    if [[ $(pwd) == $DOWNLOADS_PATH 
          && $(ls -A | grep torrent) ]]
    then
        rm *.torrent
    fi
}

function setup {
    sudo pacman -Syy unzip unrar
}

function move_to_downloads {
    mv 'decompress_files_to_folder.sh' ~/Downloads
}

move_to_downloads
delete_torrents
process_files
