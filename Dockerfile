FROM python:3.9-bullseye

RUN apt-get update -qq && apt-get install -y ffmpeg

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD [ "python", "-m", "bot" ]
