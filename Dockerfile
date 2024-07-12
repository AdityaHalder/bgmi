FROM ubuntu:22.04
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir telebot
RUN chmod +x *
CMD python3 run_bot.py
