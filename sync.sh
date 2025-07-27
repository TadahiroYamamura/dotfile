#!/usr/bin/env bash

function nvim () {
	rsync -a --delete $HOME/.config/nvim/ ${0%/*}/nvim/
}

function fnc_exists () {
	declare -F "$1" > /dev/null 2>&1
	return $?
}

if [ "$#" = 0 ]; then
	echo "sync.sh"
	echo "========================="
	echo "sync dotfiles."
	echo
	echo "[Usage]"
	echo "sync.sh target [target...]"
	echo
	echo "[Available targets]"
	echo "- nvim"
else
	for name in "$@"; do
		if fnc_exists $name; then
			$name
		fi
	done
fi
