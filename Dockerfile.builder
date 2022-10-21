FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && \
    apk add git
ENV REPO_DIR=repo \
    REPO=https://github.com/shephertz/App42PaaS-Java-MySQL-Sample \
    CONF_FILE=WebContent/Config.properties
RUN git clone $REPO /$REPO_DIR
WORKDIR /$REPO_DIR
COPY <<EOF $CONF_FILE
app42.paas.db.username = "$USER"
app42.paas.db.port = "3306"
app42.paas.db.password = "$PASSWORD"
app42.paas.db.ip = "$HOST"
app42.paas.db.name = "$DATABASE"
EOF
CMD bash
#RUN mvn clean package
#CMD rm -rf /webapps/ROOT* && \
#    cp target/*.war /webapps/ROOT.war
