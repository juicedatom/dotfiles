#!/bin/bash

# Misc. scripts for i3 usage.

function lock ()
{
  scrot /tmp/locker.png
  i3lock -i /tmp/locker.png
}

