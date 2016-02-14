#!/bin/bash
# Shadock move your podcast mp3 from iTunes in your périphéric

if $1 == walkman then
  rm /Volumes/WALKMAN/MUSIC/podcast_shadock/*
  find $HOME/Music/iTunes/"iTunes Media"/Podcasts/ -name "*.mp3" -exec cp '{}' /Volumes/WALKMAN/MUSIC/podcast_shadock/ \;
else if $1 == test then
    rm $HOME/test/*
    find $HOME/Music/iTunes/"iTunes Media"/Podcasts/ -name "*.mp3" -exec cp '{}' $HOME/test/ \;
fi
