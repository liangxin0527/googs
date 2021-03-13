FROM openjdk:8-jre

MAINTAINER xugongkai "KK989827@163.com"

ADD ./bbk-mss-web/target/bestbigkk-material-support-system.jar /app/bestbigkk-material-support-system.jar

VOLUME /tmp

ENV TZ=Asia/Shanghai
ENV spring.profiles.active=prov
ENV JAVA_OPTS="\
-Xmx120m \
-XX:+UnlockExperimentalVMOptions \
-XX:+UseCGroupMemoryLimitForHeap \
-Dcom.sun.management.jmxremote.rmi.port=39996 \
-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.port=39996 \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.local.only=false \
-Djava.rmi.server.hostname=47.94.129.175 "

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 21584 39996

ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app/bestbigkk-material-support-system.jar
