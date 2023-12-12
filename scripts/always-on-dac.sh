#!/bin/bash

# THIS SCRIPT IS USED TO ALWAYS PLAY AN INAUDIBLE SOUND
# THIS STOPS MY FIIO K3 DAC FROM TURNING OFF WHEN NO AUDIO IS PLAYING.

ffplay -f lavfi -i sine=frequency=0.01 -nodisp -volume 1 -hide_banner -loglevel error

