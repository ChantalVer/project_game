all: README.md

README.md:
	echo "Name of the project is: guessinggame.sh" >> README.md
	echo "Date of today is `date`" >> README.md
	echo "Amount of lines in the guessinggame.sh is: `wc -l guessinggame.sh`" >> README.md