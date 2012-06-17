# Makefile for Apt-linker browser extension
#
#
# Fernando Carmona Varo
#

NAME="apt-linker"
VERSION="1.2.2"

TMP="./tmp"


all: ${NAME}_chromium.zip


${NAME}_chromium.zip:
	mkdir -p ${TMP}
	cp -r src/* img/* chromium/* ${TMP}
	# for f in $(find ${TMP} -name *.js)
	# do
	#    sed "s/%VERSION%/$VERSION/g" "$f" > sed.out && mv sed.out "$f"
	# done
	zip -r "${NAME}_chromium.zip" ${TMP}
	rm -r ${TMP}


# *.json:
# 	sed "s/%VERSION%/$VERSION/g" "${@}" > "tmp/${@}"

# *.png:
# 	convert img/icon.svg -resize 16x16 ${@}
