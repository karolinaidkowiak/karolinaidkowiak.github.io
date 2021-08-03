#! /bin/bash

grunt clean && \
grunt && \
git add . && \
git commit -a -m "Build for deploy on `date`" && \
git push && \
ssh -p '59184' 'lukaszi@cyber-folks.pl' 'cd ~/repo/terapeuta && git pull'
