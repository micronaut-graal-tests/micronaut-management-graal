FROM oracle/graalvm-ce:1.0.0-rc11 as graalvm
COPY . /home/app/management
WORKDIR /home/app/management
RUN ./build-native-image.sh

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/management .
ENTRYPOINT ["./management"]
