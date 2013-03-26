#!/bin/sh
OPENCV_JAR="/usr/local/Cellar/opencv/2.4.4a/share/OpenCV/java/opencv-244.jar"
JAVA_FILE="helpers/org/opencv/LdLibraryLoader.java"
javac -cp ${OPENCV_JAR} ${JAVA_FILE}

