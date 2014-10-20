build-node:
	sudo docker build -t ardumont/nodejs+jslint - < Dockerfile-nodejs

run-jslint:
	sudo docker run -it ardumont/nodejs+jslint jslint --version
