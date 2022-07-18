#!/usr/bin/bash

mkdir ~/dummy
pkill -f autoname_workspaces ; ~/.config/i3/autoname_workspaces.py --norenumber_workspaces
