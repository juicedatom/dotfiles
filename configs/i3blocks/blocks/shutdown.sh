#!/bin/bash

i3-nagbar -f 'pango:Awesome 24px' -t warning \
  -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' \
  -b 'Yes, exit i3' 'i3-msg exit' > /dev/null 2>&1

echo 
