#base image, ask develper which python version is needed.
FROM python:3.9

#working dir for the app
WORKDIR /app

#Copy the code from the system

COPY app.py .

#installing required library
RUN pip install Flask

#all yellow command until ths point are intermediaterry layers and are used to build the container.

#we run thos follwoing command when the full process of creating the container is completed and this final command which we run using CMD is ran externally.
#Run the applicaton

CMD ["python","app.py"]
