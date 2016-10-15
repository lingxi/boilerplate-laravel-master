#!/usr/bin/env bash

rm -rf template

git clone https://github.com/laravel/laravel

mv laravel template

cd template

cp .env.example .env
cp .env.example .env.testing.example

cp ../shipit.sh shipit.sh
cp ../gitlab.ci.yml gitlab.ci.sh
cp ../composer.json composer.json

echo "test.php" >> .gitignore

touch test.php

echo "Complete!!!"
