#!/usr/bin/env bash

function nvim () {
	cp -r $HOME/.config/nvim/* ${0%/*}/nvim/
}

nvim
