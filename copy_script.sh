#!/usr/bin/bash

if [ -n "$(ls -A ~/Pictures/ScreenShots)" ]; then
  rm -rf ~/Pictures/ScreenShots/* 
  scrot ~/Pictures/ScreenShots/%Y-%m-%d-%T-screenshot.png -u 
  cp ~/Pictures/ScreenShots/* ~/Notes
  echo "\![]($(ls ~/Pictures/ScreenShots))" | awk '{ print substr( $0 , 2) }' | xclip -selection clipboard 
else
  scrot ~/Pictures/ScreenShots/%Y-%m-%d-%T-screenshot.png -u 
  cp ~/Pictures/ScreenShots/* ~/Notes
  echo "\![]($(ls ~/Pictures/ScreenShots))" | awk '{ print substr( $0 , 2) }' | xclip -selection clipboard 

fi
  

