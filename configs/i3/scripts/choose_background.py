#!/usr/bin/env python

# Author: Joshua Manela
# Descr:  Simple script that chooses a random background from a list of backgrounds.

import random
import subprocess

def main():

    # List of backgrounds.
    backgrounds = \
            ['/home/juicedatom/Pictures/background/sky.jpg',
            '/home/juicedatom/Pictures/background/space_planets.jpg',
            '/home/juicedatom/Pictures/background/moonthing.jpg']

    # Choose a random background.
    background  = random.choice(backgrounds)

    display_command = 'feh --bg-scale'

    # Show th4e background.
    command = '{} {}'.format(display_command, background)

    # Run the command.
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)

if __name__ == "__main__":
    main()

