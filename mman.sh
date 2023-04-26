#!/usr/bin/bash


directory_of_mman=$HOME/bin/dirmman
directory_of_personal_scripts=$HOME/bin


cm(){
	cd "${directory_of_mman}/allmman/$1"

}

cx(){
	cd "${directory_of_personal_scripts}/$1"
}

mman() {

	case $1 in
		-cm) cd ${directory_of_mman}/allmman/$2;;  # Go to manual directory
		-cx) cd ${directory_of_personal_scripts}/$2;; # Go to script directory


		-m) cat ${directory_of_mman}/allmman/"$2";;
		-mm) vi ${directory_of_mman}/allmman/"$2";;
		-x) cat ${directory_of_personal_scripts}/"$2";;
		-xx) vi ${directory_of_personal_scripts}/"$2";;
		-l) ls --color=yes ${directory_of_mman}/allmman/"$2";;  #display the list of personal manual  	
		-lm) ls --color=yes ${directory_of_mman}/allmman/"$2";;
		-lx) ls --color=yes ${directory_of_personal_scripts}/"$2";;  #display the list of personal scripts
		-p) echo ${directory_of_mman}/allmman/"$2";;       #show mman's folder path
		-pm) echo ${directory_of_mman}/allmman/"$2";;
		-px) echo ${directory_of_personal_scripts}/"$2";;
		*) cat ${directory_of_mman}/allmman/$1;;	
	
	esac

}
