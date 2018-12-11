#!/bin/bash

pacman -Qqen > ~/.packages/pacman-native.txt
pacman -Qqem > ~/.packages/pacman-foreign.txt

