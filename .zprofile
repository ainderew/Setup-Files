#DEV 1
alias ssh_dev="ssh -i ~/.ssh/tm-andrew james@206.189.168.89"

#DEV 2
alias ssh_dev2="ssh -i ~/.ssh/tm-andrew theoria@157.230.55.160"

#DEV 3
alias ssh_dev3="ssh -i ~/.ssh/tm-andrew theoria@143.198.77.239"

#STAGING
alias ssh_staging="ssh -i ~/.ssh/tm-andrew james@178.128.76.4"

#BETA
alias ssh_beta="ssh -i ~/.ssh/tm-andrew azureuser@172.210.34.204"

#Production ChatEasy Server
alias ssh_server_0="ssh -i ~/.ssh/tm-andrew -t azureuser@20.120.19.74"
alias ssh_server_1="ssh -i ~/.ssh/tm-andrew -t azureuser@13.68.187.112"
alias ssh_server_2="ssh -i ~/.ssh/tm-andrew -t azureuser@20.127.14.169"

#Production ChatEasy Client
alias ssh_client="ssh -i ~/.ssh/tm-andrew azureuser@20.228.229.234 -t 'cd /var/web/tm-chateasy-client; exec bash'"

#rabbitMQ
alias ssh_rabbitmq="ssh -i ~/.ssh/tm-andrew azureuser@20.85.219.225"

#WebHook
alias ssh_webhook="ssh -i ~/.ssh/tm-andrew tmdev@172.212.35.78"

#BB
alias ssh_bb="ssh -i ~/.ssh/bg-andrew root@128.199.145.173"

#CD To Common Paths
function c {
    if [ "$1" = "projects" ]; then
        cd ~/projects
    elif [ "$1" = "theoria" ]; then
        cd ~/theoria_repos/
    elif [ "$1" = "cs" ]; then
       cd ~/theoria_repos/tm-chateasy-server/ && nvim .
    elif [ "$1" = "cc" ]; then
        cd ~/theoria_repos/tm-chateasy-client/ && nvim .
    elif [[ "$1" = "bb" ]]; then
	code ~/projects/brainbloom
	code ~/projects/brainbloom-server
    else
        echo "Unknown directory"
    fi
}


#Chrome open
function oc(){
    if [ "$1" = "." ]; then
     open -a "Google Chrome" http://localhost:4100
    fi
}


function open_prod(){
 ssh -i ~/.ssh/tm-andrew -t azureuser@20.120.19.74 
}


# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
