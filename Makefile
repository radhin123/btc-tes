
termux:
	pkg update; pkg upgrade
	pkg install ncurses-utils nodejs-lts
	pkg install less

ubuntu:
	sudo apt-get install tput
	sudo apt-get install nodejs

windows:
	npm install
	node index.js
setup:
	bash setup.sh
