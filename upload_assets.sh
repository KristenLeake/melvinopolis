#!/bin/bash

cd public/assets
s3cmd rm --recursive s3://melvinopolis-assets/assets/
find * -type f | parallel -j16 -I {} s3cmd put --recursive {} s3://melvinopolis-assets/assets/{}
cd ../..

