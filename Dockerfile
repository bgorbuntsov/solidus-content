FROM python:3.9-slim-buster

WORKDIR /root/app/solidus/content

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "./server.py" ]

