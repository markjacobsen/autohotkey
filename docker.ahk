;--------------------------------------------
; https://markjacobsen.net
;
; Note: 
; :O: is for text expansion/replacement
; :X: is what causes a function to run
;
; Ref:
; https://docs.docker.com/engine/reference/commandline/docker/
;--------------------------------------------

:O:#dk-opts::
SendInput {#}Container: dkls, dklsa, dkstopped, dkrm, dkrma, dkbash, dkrestart, dkrestarta, dkstopa, dkprune, dklogtail, dkstats{enter}
SendInput {#}Images: dkimg, dkimgls, dkimgprune, dkimgclean, dkimgpull, dkimgpulla{enter}
SendInput {#}Volumes: dkvol, dkvolprune{enter}
SendInput {#}Compose: dkcrecreate, dkcstart, dkcstop, dkcrestart{enter}
return

:O:!dkls::sudo docker ps
:O:!dklsa::sudo docker ps -a
:O:!dkstopped::sudo docker ps --filter "status=exited"
:O:!dkps::sudo docker ps
:O:!dklist::sudo docker ps
:O:!dkrm::sudo docker rm [container]
:O:!dkrma::sudo docker rm $(sudo docker ps -a -q)
:O:!dkbash::sudo docker exec -it [container] /bin/bash
:O:!dkrestart::sudo docker restart [container]
:O:!dkrestarta::sudo docker restart $(sudo docker ps -q)
:O:!dkstopa::sudo docker stop $(sudo docker ps -q)
:O:!dkprune::sudo docker system prune
:O:!dklogtail::sudo docker logs --tail 50 --follow --timestamps [container]
:O:!dkstats::sudo docker stats

;---Image commands---
:O:!dkimg::sudo docker images
:O:!dkimgls::sudo docker images --format "{{}{{}.Repository{}}{}}:{{}{{}.Tag{}}{}}" | grep -v '<none>'
:O:!dkimgprune::sudo docker image prune -af
:O:!dkimgclean::sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)
:O:!dkimgpull::sudo docker pull [image]
:O:!dkimgpulla::for image in $(sudo docker images --format "{{}{{}.Repository{}}{}}:{{}{{}.Tag{}}{}}" | grep -v '<none>'); do sudo docker pull $image; done;

;---Volume commands---
:O:!dkvol::sudo docker volume ls
:O:!dkvolprune::sudo docker volume prune

;---Docker Compose commands (must be in dir w docker-compose.yml file)---
:O:!dkcrecreate::sudo docker-compose up --force-recreate --build -d
:O:!dkcstart::sudo docker-compose up -d
:O:!dkcstop::sudo docker-compose down
:O:!dkcrestart::sudo docker-compose restart