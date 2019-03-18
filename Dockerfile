FROM oracle/graalvm-ce:1.0.0-rc13 as graalvm
COPY . /home/app/management
WORKDIR /home/app/management
RUN native-image --no-server --class-path build/libs/management-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/management .
ENTRYPOINT ["./management"]
