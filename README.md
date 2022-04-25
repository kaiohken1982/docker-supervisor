# Creazione immagine con servizio Supervisor

Immagine per la gestione di Supervisor

## Per il build dell'immagine

docker build -f supervisor.Dockerfile -t docker-locale/supervisor .

## Per lanciare il container

docker run -id -p 9011:9001 docker-locale/supervisor bash

## Abilitare interfaccia web alla porta 9001

vim /etc/supervisor/supervisord.conf

e aggiungere 

[inet_http_server]
port=9001
username = myuser
password = mypass

Riavviare il servizio "service supervisor restart"

## Configurare deamons

Esempio di mailer service

Vedi files/mailer.service.conf

Copiarlo in /etc/supervisor/conf.d/ e lanciare i seguenti comandi

Reread config
supervisorctl reread

Update config
supervisorctl update

