# docker build -t test .
# docker run -p 8001:8001 -it test


FROM python:3.9-slim-buster

# Set up a working folder and install the pre-reqs
WORKDIR /app

# add everything from here to app
ADD main.py /app/
ADD requirements.txt /app/

RUN pip install -r requirements.txt

CMD [ "python", "main.py", "--dry-run", "--epochs", "1"]