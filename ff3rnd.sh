#!/bin/sh
# If there is no rom available, grab it from archive.org
# or whatever location you have.

if [ ! -f ./Final\ Fantasy\ III\ \(USA\).zip ]
then
wget https://archive.org/download/no-intro-nintendo-super-nintendo-entertainment-system-20170529/No-Intro%20-%20Nintendo%20-%20Super%20Nintendo%20Entertainment%20System%20%282017-05-29%29.zip/Final%20Fantasy%20III%20%28USA%29.zip 2>&1| \
    dialog --progressbox 20 80
fi

# Pre-emptive cleanup I guess?
rm -f ./*.sfc

# Unpack a clean rom and run the randomizer.
unzip Final\ Fantasy\ III\ \(USA\).zip
python ./randomizer.py

# Cleanup time again!
rm -f /home/pi/RetroPie/roms/snes/#\ FF3\ Randomized.sfc \
    ./Final\ Fantasy\ III\ \(USA\).sfc

# Tell them what's up.
clear
less *.txt
rm -f *.txt
mv ./*.sfc /home/pi/RetroPie/roms/snes/#\ FF3\ Randomized.sfc
echo "Run the randomized rom from EmulationStation's snes section.\nIf you wish to make another, it will overwrite this one."
