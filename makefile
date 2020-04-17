all: README.md

README.md: guessinggame.sh
	echo "Guessing game project" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
