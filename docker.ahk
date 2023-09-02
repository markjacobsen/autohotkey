;--------------------------------------------
; https://markjacobsen.net
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;--------------------------------------------

:O:#docker-opts::{#}options: dockerlist , dockerrecreate , dockerprune , dockerbash , dockerstart, dockerstop , dockerrestart
:O:!dockerlist::sudo docker ps
:O:!dockerrecreate::sudo docker-compose up --force-recreate --build -d
:O:!dockerprune::sudo docker image prune -f
:O:!dockerbash::sudo docker exec -it [container] /bin/bash
:O:!dockerstart::sudo docker-compose up -d
:O:!dockerstop::sudo docker-compose down
:O:!dockerrestart::sudo docker-compose restart