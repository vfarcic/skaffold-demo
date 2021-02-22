SHELL := /bin/bash

init:
	mkdir -p themes && cd themes && git submodule add https://github.com/MarcusVirg/forty
	git submodule init
	git submodule update
	cp content/img/banner.jpg themes/forty/static/img/.

build:
	hugo

dev:
	hugo server

