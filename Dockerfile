FROM openjdk:17
COPY ./target /masterdemo
WORKDIR /masterdemo
CMD ["java", "-jar", "masterdemo-dockerimage.jar" ]