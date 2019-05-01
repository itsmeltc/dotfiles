#!/bin/bash
# Download yesterday's Mets game and convert to MP3

# Fetch yesterday's game; requires mlbplay to be preconfigured with mlb creds
mlbplay -d $(date -v-1d +%F) nym -s mets-$(date -v-1d +%F).ts

# Convert video to audio
ffmpeg -i mets-$(date -v-1d +%F).ts mets-$(date -v-1d +%F)-temp.mp3

# Strip silent commercial breaks
sox mets-$(date -v-1d +%F)-temp.mp3 mets-$(date -v-1d +%F).mp3 silence -l 1 0.3 1% -1 2.0 1%

# Remove video and temp MP3
rm mets-$(date -v-1d +%F).ts
rm mets-$(date -v-1d +%F)-temp.mp3
