test:
	if ! [ -d .env ]; \
	then \
		python2.7 -mvirtualenv .env; \
	fi;
	.env/bin/pip2.7 install -r requirements.txt
	time (.env/bin/coverage run test.py; .env/bin/coverage report)

all: | test
