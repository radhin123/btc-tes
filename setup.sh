#!/usr/bin/env bash

IFS=""
# control arrow key
atas="A"
bawah="B"
kiri="C"
kanan="D"

#cursor
Sc="\e8"
Rc="\e7"
cn="\e[12?l \e[?25h"
invis="\e[25?l"


tput reset
sys::keluar(){
	printf "$cn"; exit $?
}

sys::SigInt(){
	printf "$cn"; exit $?
}

buat::loading(){
	declare text="$@"

	# frame loading nya
	declare frame=(
		"\e[0m>........."
		".\e[0m>........"
		"..\e[0m>......."
		"...\e[0m>......"
		"....\e[0m>....."
		".....\e[0m>...."
		"......\e[0m>..."
		".......\e[0m>.."
		"........\e[0m>."
		".........\e[0m>"
	)


	# jumlah putaran frame
	let rotate=5
	let start=0

	# loop rotasi
	while ((start < rotate)); do
		let start++
		for jalan in ${frame[@]}; do
			tput sc
			printf "\r\e[1;31m${jalan} ${text}"
			sleep 0.1
			tput rc
		done
	done
}

# utama
main(){
	clear
	declare bantuan="

	Opsi:
		 K -> Start
		 I -> Install bahan bahan
		 C -> Kredit Script
		 Q -> Exit
"
	printf "$invis"
	printf "\e[10H"
	printf "${bantuan}"
	echo
	declare escape_char=$(
		printf "\u1b"
	);

	# ambil 1 karakter dan perulangan
	while read -rsn1 mode; do
		if [[ "$mode" == "$escape_char" ]]; then
			read -rsn4 -t 0.001 mode # fungsi membaca 2 karakter chars lanjutan
		fi

		# validator
		case $mode in
					 "[A"|"[a") char="↑" ;;
					 "[B"|"[b") char="↓" ;;
					 "[C"|"[c") char="→" ;;
					 "[D"|"[d") char="←" ;;
					 "") char="*" ;;
					 "K"|"k") char="k" ;;
					 "I"|"i") char="i" ;;
					 "C"|"c") char="c" ;;
					 "Q"|"q") char="q" ;;
					 *) char="1"; msg="$mode" ;;
		esac

		declare kredit=$(
			echo "

			Kredit Hellminer

			Author -> Rifa'i
			
			Contributors:
				-> Bayu12345677
				-> ...
				-> ...
"
		)
		declare depencies=("apt-get install ncurses-utils" "apt-get install tput" "npm install")
		if [[ "$char" == "k" ]]; then echo; echo;buat::loading "Memulai";clear; node index.js;break; printf "$cn"
		elif [[ "$char" == "i" ]]; then printf "$cn";clear;echo -e "\e[93m>\e[97m Menginstall\e[0m";for paket in ${depencies[@]}; do eval "$paket"; done; main
		elif [[ "$char" == "c" ]]; then printf "$cn";echo "$kredit"|less
		elif [[ "$char" == "q" ]]; then printf "$cn\u1b";clear; exit
		else
			printf "\r\e[91m>\e[97m Key \e[93m${msg}\e[97m Not Found\e[0m"
		fi
	done
};

trap "sys::SigInt" INT SIGINT
trap "sys::keluar" EXIT

(main)
