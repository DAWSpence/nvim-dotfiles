finstructions(){
  echo "Basic nvim setup script, subject to change"
  echo
  echo "Usage: setup.sh [-hrrrRa]"
  echo
  echo "-r    Cleans the nvim config (XDG_CONFIG_HOME) directory"
  echo "-rr   Deletes the cache files"
  echo "-R    Deletes the cache files and the nvim config directory"
  echo "-a    Copies the files over to the nvim config (XDG_CONFIG_HOME), cleans the cache and config directory"
  echo "-h    Display the help"
  echo
}



clean_config(){
    echo '====CLEANING CONFIG DIRECTORY FILES===='
    echo
    rm -rfv $XDG_CONFIG_HOME/nvim/* $XDG_CONFIG_HOME/nvim/.*
}

clean_data_dirs(){
    echo '====CLEANING CONFIG AND CACHE DIRECTORY FILES===='
    echo
    rm -rfv  $XDG_DATA_HOME/nvim/* $XDG_STATE_HOME/nvim/* $XDG_CACHE_HOME/nvim/* 
}


setup(){
    echo '====SETTING UP NEOVIM===='
    echo
    cp -rvu ./neovim-config/* $XDG_CONFIG_HOME/nvim
    echo
    echo "The config directory is
          $XDG_CONFIG_HOME
    "
}



if [ $# -eq 0 ]; then
  echo
  finstructions
fi



case $@ in 

  '-h')
      finstructions
      ;;

  '-r')
      clean_config
      ;;

  '-rr')
      clean_data_dirs
      ;;

  '-R')
      clean_config
      clean_data_dirs
      ;;

  '-a')
      clean_config
      clean_data_dirs
      setup
      ;;

    *)
      echo
      echo -n "Invalid arugment"
      echo
      finstructions
      ;;
esac


