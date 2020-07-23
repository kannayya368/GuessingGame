all : README.md

README.md :	
	echo "Welcome to Guessing Game of Files " >> README.md
	echo "`date`" >> README.md
	echo "`wc -l < ./guessinggame.sh`" >> README.md
