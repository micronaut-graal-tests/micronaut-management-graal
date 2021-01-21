./gradlew assemble
native-image --no-fallback --class-path build/libs/management-*-all.jar
