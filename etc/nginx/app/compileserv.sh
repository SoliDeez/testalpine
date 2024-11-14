#!/bin/sh

javac HttpServer.java | jar cfe HttpServer.jar HttpServer HttpServer.class | java -jar HttpServer.jar