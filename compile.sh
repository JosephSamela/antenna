#!/bin/bash

pages=`ls pages/*.html | xargs -n 1 basename`

rm -r ./site
mkdir site

cp fonts/* ./site/
cp media/* ./site/
cp *.css ./site/


for i in $pages
    do
        echo "Compiling ... $i"
        cat head.html > ./site/$i
        cat ./pages/$i >> ./site/$i
        cat foot.html >> ./site/$i
done

