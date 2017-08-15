#!/bin/bash -e

echo ' 
      ###    ########   #######  ########  
     ## ##   ##     ## ##     ## ##     ## 
    ##   ##  ##     ## ##     ## ##     ## 
   ##     ## ##     ## ##     ## ########  
   ######### ##     ## ##     ## ##        
   ##     ## ##     ## ##     ## ##        
   ##     ## ########   #######  ##        
'

usage(){
   cat <<END_USAGE

Usage:
      ./stack_deploy.sh
      -u '<INITIAL_ADMIN_USER>'
	    [-p '<INITIAL_ADMIN_PASSWORD_PLAIN>']
	    [-i '<PROXY_IP>']
	    [-c '<COMPOSE_FILE>']
      [-s '<STACK_NAME>']

END_USAGE
}

while getopts "i:c:s:u:p:" opt; do
  case ${opt} in
    i)
      export PROXY_IP=${OPTARG}
      ;;
    c)
      export COMPOSE_FILE=${OPTARG}
      ;;
    s)
      export STACK_NAME=${OPTARG}
      ;;
    u)
      export INITIAL_ADMIN_USER=${OPTARG}
      ;;
    p)
      export INITIAL_ADMIN_PASSWORD_PLAIN=${OPTARG}
      ;;      
    *)
      echo "Invalid parameter(s) or option(s)."
      usage
      exit 1
      ;;
  esac
done

chmod +x ./adop

./adop stack deploy