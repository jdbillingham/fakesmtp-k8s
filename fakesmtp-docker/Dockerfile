FROM openjdk:8-jdk
RUN mkdir -p /opt && wget -q http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip && unzip fakeSMTP-latest.zip -d /opt && rm fakeSMTP-latest.zip
RUN mv /opt/fakeSMTP*.jar /opt/fakeSMTP.jar
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils telnet net-tools bash # tools
CMD java -jar /opt/fakeSMTP.jar --start-server --background --output-dir /tmp --port 25
