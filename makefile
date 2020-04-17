all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo ""
	date >> README.md
	echo ""
	echo "Number of lines in the file guessinggame.sh:"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
