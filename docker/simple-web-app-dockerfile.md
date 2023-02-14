docker build . -t my-simple-webapp


root@c57d89b8df05:/opt# history
    1  ls
    2  apt update
    3  apt upgrade
   10  apt install -y python3
   12  apt install -y python3-pip
   13  pip install flask
   15  vi app.py
   16  apt install vim
   17  vim app.py
   18  FLASK_APP=app.py flask run --host=0.0.0.0
   19  history


FROM ubuntu
RUN apt update && apt upgrade
RUN apt install -y python3 python3-pip
RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0