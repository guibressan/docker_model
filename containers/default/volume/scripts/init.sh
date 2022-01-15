#!/usr/bin/env sh

#You can put some message here
    printf "\nHello! You're running docker_model created by Gui Bressan\n"
    sleep 1

if [ -e /app/data/verifications/not_first_run ]; then
    # Not running the ambient for the first time
    printf "\nAmbient Already Setted Up\n"
    sleep 1

    # Printing an environment variable setted on the yml file
    printf "\n$DOCKER_MODEL_ENV_TEST\n"

    ## You can call other scripts here

    printf "\nAll Done!\n"
    sleep 1
    #"tail -f " keeps this container alive. 
    tail -f /dev/null  
############################################################################################################################################################
else #######################################################################################################################################################
############################################################################################################################################################
    # Running the ambient for the first time
    printf "\nAmbient not setted up yet, setting up\n"
    sleep 1

    # Printing an environment variable setted on the yml file
    printf "\n$DOCKER_MODEL_ENV_TEST\n"

    ## You can call other scripts here

    touch /app/data/verifications/not_first_run

    printf "\nAll Done!\n"
    sleep 1
    #"tail -f " keeps this container alive. 
    tail -f /dev/null  
fi



