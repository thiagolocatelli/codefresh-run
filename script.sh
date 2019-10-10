#!/bin/sh

export BUILD_TYPE=$([[ ( -z "$BUILD_TYPE" ) && ( -f pom.xml ) ]] && echo JAVA_MAVEN || echo $BUILD_TYPE)

export BUILD_TYPE=$([[ ( -z "$BUILD_TYPE" ) && ( -f build.gradle ) ]] && echo JAVA_GRADLE || echo $BUILD_TYPE)

echo Build type':' $BUILD_TYPE


