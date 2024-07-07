.PHONY: all
SHELL = /usr/bin/zsh

all:
	rm -rf aeros-calamares-config pkg src
	EUID=1 makepkg -rs
