#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add install lombok"
wget https://projectlombok.org/downloads/lombok.jar
mkdir -p /usr/local/lib/lombok
mv lombok.jar /usr/local/lib/lombok

# Lombok installation script

# Set the path to the Lombok jar file
LOMBOK_JAR=/usr/local/lib/lombok/lombok.jar

# Check if Java is installed
if ! command -v java &> /dev/null
then
    echo "Java is not installed. Please install Java first."
    exit
fi

# Check if the Lombok jar file exists
if [ ! -f $LOMBOK_JAR ]
then
    echo "The Lombok jar file does not exist. Please download the Lombok jar file and try again."
    exit
fi

# Install Lombok
java -jar $LOMBOK_JAR install

