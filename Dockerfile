from maven:3.6.1
COPY pom.xml ./pom.xml
COPY gradlew build.gradle settings.gradle ./
COPY gradle ./gradle
RUN mvn install \
    && ls -alh ~/.m2/repository/io/netty/netty-transport-native-epoll/4.1.37.Final
RUN ./gradlew shadowJar
