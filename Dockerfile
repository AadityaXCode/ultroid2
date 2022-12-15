FROM  python:latest

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apt-get update && apt upgrade -y && apt install ffmpeg mediainfo neofetch -y

COPY . .

RUN chmod u+x chandni

CMD ["./chandni"]