# init a base image (Alpine is small Linux distro)
FROM python:3.6.1-alpine
# define the present working directory
#ENV FLASK_HOME=/opt/FLASK
WORKDIR /FLASK-REALWORLD-EXAMPLE-APP
# copy the contents into the working dir
ADD . /FLASK-REALWORLD-EXAMPLE-APP
# run pip to install the dependencies of the flask app
RUN pip install -r requirements.txt

VOLUME . /FLASK-REALWORLD-EXAMPLE-APP
# Http port
EXPOSE 5000
# define the command to start the container
CMD ["python","app.py"]
