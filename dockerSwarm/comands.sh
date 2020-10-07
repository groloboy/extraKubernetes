sudo docker swarm init --advertise-addr 192.168.100.4

#en los workers
#sudo docker swarm join --token SWMTKN-1-13n9dk3q3xfav49sgasa67w8twlpuzoxp0zxnsq5spi9939qxm-2sd1eb056ndselpbqpef9tg3k 192.168.100.4:2377

sudo docker service create --name registry --publish 5000:5000 --mode global registry:2
sudo docker service ls
sudo docker service ps
sudo docker service ps registry
curl http://localhost:5000/v2/
sudo docker service scale registry=5
sudo docker service ls

#para que el nodo manager quede solo como administrador de nodos y no se creen contenedores
docker node update --availability drain servidor
#los servicios creados se distribuyen a los otros nodos
docker node ls


cd stackdemo

sudo docker-compose up -d
sudo docker-compose ps
curl http://localhost:8000
sudo docker-compose down --volumes
sudo docker-compose push

sudo docker stack deploy --compose-file docker-compose.yml stackdemo
sudo docker stack services stackdemo
curl http://localhost:8000
docker stack rm stackdemo