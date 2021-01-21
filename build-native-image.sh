#!/bin/bash

./gradlew nativeImage
cp build/native-image/management .
