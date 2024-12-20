FROM openjdk:14-jdk-oraclelinux7
VOLUME /tmp
ADD votingService.jar /opt/app/oracle/votingService.jar
ADD wallet /opt/app/oracle/wallet
WORKDIR /opt/app/oracle
ENV PATH="${PATH}:${JAVA_HOME}/bin"
ENTRYPOINT [ "java", "-jar", "/opt/app/oracle/votingService.jar"]

