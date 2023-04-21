# docker build -t mymnist .
# docker run -it mymnist

# with outfile
# docker run -it mymnist 2>&1 | tee caraline-docker-run.out


FROM python:3.10-slim-bullseye

# Set up a working folder and install the pre-reqs
WORKDIR /app

# add everything from here to app
ADD main.py /app/
ADD requirements.txt /app/

RUN pip install -r requirements.txt

CMD [ "python", "main.py", "--dry-run", "--epochs", "1"]