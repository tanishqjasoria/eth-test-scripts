CURRENTDIR=(pwd)
sudo apt install screen
sh setgitconfig.sh
sh install-prysm.sh
cd $CURRENTDIR
sh install-neth.sh
