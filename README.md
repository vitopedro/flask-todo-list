# Description

Todo list example in flask using mysql as database and docker as a development environment.

The application was build using this [video](https://www.youtube.com/watch?v=Z1RJmh_OqeA&t=327s) as basis, and applying changes to use mysql and docker

# Pre requisites

To lauch the application only docker and docjer compose is required

- [install on linux](https://docs.docker.com/compose/install/)
- [install on windows](https://docs.docker.com/docker-for-windows/install/)

To develop, python and pip should be installed, the project uses python version 3.9, and i cant guarantee that other versions are compatible

- [install on linux](https://docs.python-guide.org/starting/install3/linux/)
- [install on windows](https://www.python.org/downloads/windows/)

# Lauch environment

```
https://github.com/vitopedro/flask-todo-list
docker-compose up
```

two containers will be lauched:

- **mariadb** contains a simple mysql database with the databse `todo` already created. It uses the image [bitnami/mariadb](https://hub.docker.com/r/bitnami/mariadb)

- **app** is the application docker, this container will wait until the db is ready to receive connections, then will run migrations (creating the table todo) and start a server. Uses image [ubuntu](https://hub.docker.com/_/ubuntu)

The application is served in http://localhost:5000/