install() {
    (
        trap cleanup EXIT SIGSTOP SIGHUP SIGTERM ERR
        cleanup(){
            set +e
            exit
            }
        set -e pipefail

        git clone https://github.com/tklijnsma/toscript.git
        cd toscript
        INSTALL_DIR=$PWD

        echo "Backing up and adding the following to ~/.bashrc:"
        cp ~/.bashrc ~/.bashrc.bu

        L1="# Automatically added by toscript"
        L2="[ -f ${INSTALL_DIR}/completion.py ] && complete -C ${INSTALL_DIR}/completion.py to "
        L3="alias to=\"source ${INSTALL_DIR}/to.sh\""

        echo $L2
        echo $L3

        echo "" > ~/.bashrc
        echo "$L1" > ~/.bashrc
        echo "$L2" > ~/.bashrc
        echo "$L3" > ~/.bashrc
        )
    }

install