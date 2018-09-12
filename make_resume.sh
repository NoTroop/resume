#!/bin/sh

groff -mandoc -T html marcus.1 > resume.html
sed -i '/<style type\="text\/css">/a body { max-width: 650px }' resume.html
