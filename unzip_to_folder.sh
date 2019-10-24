DOWNLOADS_PATH="/home/achlorine/Downloads"
function process_files {
    for i in *.zip; do unzip "$i" -d "${i%%.zip}"; rm "$i"; done 
    for i in *.rar; do unrar "$i" -d "${i%%.rar}"; rm "$i"; done 
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

delete_torrents
process_files
