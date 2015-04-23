#!/usr/bin/env bash
# Enkouyami's Bash Minecraft Installer
# Copyright (C) 2012  Ely Lizaire

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

PPWD=$(pwd)
WD="${PWD##*/}"

counter=1
#-----------#
#   Dots    #
#-----------#
# This simply prints three Dots. It waits .1 seconds between each dot.
Dots() {
while [ $counter -le 3 ]
do
echo -n "."
sleep .1
((counter++))
done
let counter=1
echo ""
} # END Dots

# Making sure this terminal will have the current working directory as default
cd "$PWD"

echo -n "Making sure this folder has all the prerequisite subdirectories"
Dots
if [ ! -e ./temp ]
then
  mkdir ./temp
else
  echo "It was found"
fi

if [ ! -e ./old ]
then
  mkdir ./old
else
  echo "It was found"
fi

if [ ! -e ./new ]
then
  mkdir ./new
else
  echo "It was found"
fi
