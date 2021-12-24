## TEST ##
mvn compile com.google.cloud.tools:jib-maven-plugin:3.1.4:build \                                                [12:08:30]
-DsendCredentialsOverHttp=true -Dimage=192.168.121.203:5000/kb-dev:v1 -Djib.allowInsecureRegistries=true \
-Djib.from.image=192.168.121.203:5000/adoptopenjdk:11
