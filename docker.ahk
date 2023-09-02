;--------------------------------------------
; https://markjacobsen.net
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;--------------------------------------------

:O:#docker-opts::{#}options: dockerls , dockerimg , dockerimgpull , dockerrm , dockerprune , dockerbash{enter}{#}   dockercrecreate , dockercstart, dockercstop , dockercrestart{enter}

:O:!dockerls::sudo docker ps
:O:!dockerlsa::sudo docker ps -a
:O:!dockerstopped::sudo docker ps --filter "status=exited"
:O:!dockerps::sudo docker ps
:O:!dockerlist::sudo docker ps
:O:!dockerimg::sudo docker images
:O:!dockerimgclean::sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)
:O:!dockerimgpull::sudo docker pull [image]
:O:!dockerrm::sudo docker rm [container]
:O:!dockerprune::sudo docker image prune -f
:O:!dockerbash::sudo docker exec -it [container] /bin/bash

:O:!dockercrecreate::sudo docker-compose up --force-recreate --build -d
:O:!dockercstart::sudo docker-compose up -d
:O:!dockercstop::sudo docker-compose down
:O:!dockercrestart::sudo docker-compose restart