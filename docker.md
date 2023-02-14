[DOCKER]
docker images
docker rm
docker rmi
docker pull image
docker run jenkins/jenkins
docker build . -t ubuntu-sleeper

docker rmi $(docker images -aq)

docker run -p 8080:8080 -v /docker/jenkins:/var/jenkins_home -u root jenkins/jenkins
docker run -p 38282:8080 --name blue-app -e "APP_COLOR=blue" kodekloud/simple-webapp