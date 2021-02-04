#!/bin/sh -xe

apk add --no-cache git maven

git clone https://github.com/CoRfr/leshan-bsserver-rotkey

cd leshan-bsserver-rotkey

mvn clean install

mvn dependency:purge-local-repository

