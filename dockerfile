# use an official py runtime as parent image
FROM python:3.12-slim

# set working directory in container
WORKDIR /app

# copy current directory contents into container at /app
COPY . /app

# install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 available to world outside this container
EXPOSE 5000

# def env variable
ENV FLASK_APP=app.py

# run the flask app
CMD [ "flask","run","--host=0.0.0.0" ]