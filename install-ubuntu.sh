#!/bin/bash

function update(){
	sudo apt update
}

function upgrade(){
	sudo apt updrade
}

function base(){
	sudo apt install build-essential ranger kitty nginx light pavucontrol grim slurp sysstat clipman
}

function sway(){
	sudo apt install sway waybar wlogout swaylock
}


update
upgrade
base
sway

