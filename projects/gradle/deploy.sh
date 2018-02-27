#!/bin/bash

echo "deploying to Cloudsmith"

cd "projects/gradle/src"

pwd
ls

gradle uploadArchives
