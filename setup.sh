CURRENTDIR=(pwd)
sudo apt install screen
sh setgitconfig.sh
cd
sh install-prysm.sh
cd $CURRENTDIR
sh install install-neth.sh
