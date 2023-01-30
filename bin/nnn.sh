# /bin/bash
source ./bin/logging.sh

echo "${INFO}set up nnn"
git clone git@github.com:jarun/nnn.git
sudo make -C ${PWD}/nnn O_NERD=1
NNN_PATH=$(which nnn)
sudo cp ${PWD}/nnn/nnn $NNN_PATH
rm -rf ${PWD}/nnn