## ADOP - Docker Stack within Swarm
![Swarm](https://raw.githubusercontent.com/mominkhan/adop-docker-stack/master/img/swarm.png)

## Pre-Requisites

To run ADOP as a docker stack within swarm cluster you would need:
* Docker - version 17 or higher
* Docker swarm - manager and worker nodes with labels associated with them to reflect the desired placement constraints for the tools in the platform.

## Instructions

These instructions will spin up the DevOps platform as a docker stack in a given n-machine based docker swarm. The tools get deployed across multiple nodes based on the labels associated with the nodes.  

1. Clone this repository on the manager node in the given docker swarm and then in the terminal window:
    - [Optional] Setup environment variables if you want to override the default values else skip this step.
        ```
        export PROXY_IP=<IP_OF_PUBLIC_HOST>
        export INITIAL_ADMIN_USER=<INITIAL_ADMIN_USER>
        export INITIAL_ADMIN_PASSWORD_PLAIN=<INITIAL_ADMIN_PASSWORD_PLAIN>
        ```
    - Run:

        ```./adop stack deploy ```

1. If all goes well you will see the following output and you can view the DevOps Platform in your browser
    ```
    ##########################################################

    SUCCESS, your new ADOP stack is ready!    

    Navigate to http://11.22.33.44 in your browser to use your new DevOps Platform!
    Login using the following credentials:
      Username: YOUR_USERNAME
      Password: YOUR_PASSWORD
    ##########################################################
    ```
1. Log in using the username and password you specified earlier:
    ```
    <INITIAL_ADMIN_USER> / <INITIAL_ADMIN_PASSWORD>
    ```


