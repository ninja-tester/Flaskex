FROM ubuntu:latest

RUN apt update
COPY requirements.txt /app/requirements.txt
WORKDIR /app

RUN apt install -y python3-pip
RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]