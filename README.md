# devops-hw12

### Application by docker-compose

Tomcat application with MySQL DB based on the test project:

[https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git](https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git)

##### Files

1. *docker-compose.yml* (provisioning)
2. *Dockerfile.builder* (war artifact building container)
3. *Dockerfile.webserver* (Tomcat container for an artifact ready)

##### Usage

1. Download repository
```bash
git clone https://github.com/LovingFox/devops-hw12.git
```
2. Set MySQL DB passwords
```bash
export ROOT_ACCESS_PASSWORD=<root password>
export DATABASE_PASSWORD=<database password>
```
3. Launch the application
```bash
docker-compose up -d
```
