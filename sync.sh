#!/usr/bin/env bash

function sync () {
	if command -v rsync >/dev/null 2>&1; then
		rsync -a --delete "$1" "$2"
	else
		rm -rf "$2"
		cp -r "$1" "$2"
	fi
}

function nvim () {
	sync $HOME/.config/nvim/ ${0%/*}/nvim/
}

function claude () {
	sync $HOME/.claude/CLAUDE.md ${0%/*}/claude/CLAUDE.md
	sync $HOME/.claude/settings.json ${0%/*}/claude/settings.json
	sync $HOME/.claude/commands/ ${0%/*}/claude/commands/
	sync $HOME/.claude/plugins/ ${0%/*}/claude/plugins/
	sync $HOME/.claude/skills/ ${0%/*}/claude/skills/

	echo "settings.jsonに機密情報が含まれていないかチェックしてください"
	cat ${0%/*}/claude/settings.json
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
	echo "- claude"
else
	for name in "$@"; do
		if fnc_exists $name; then
			$name
		fi
	done
fi
