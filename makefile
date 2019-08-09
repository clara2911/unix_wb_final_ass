all: README.txt

README.txt:
	touch README.txt
	echo "# Guessing game" > README.txt
	echo "## By Clara Tump" >> README.txt	
	echo "Hello $(date) hello" >> README.txt
	num_lines=$(wc -l guessinggame.sh | awk '{ print $1 }')
	echo $num_lines >> README.txt


clean:
	rm README.txt
