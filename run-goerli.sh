screen -dmS neth
screen -S neth -X stuff 'sh run-neth.sh\n'
screen -dmS prysm
creen -S prysm -X stuff 'sh run-prysm.sh\n'
