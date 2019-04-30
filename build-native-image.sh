./gradlew assemble
native-image --no-server --no-fallback --class-path build/libs/management-*.jar --initialize-at-build-time=io.micrometer.core
