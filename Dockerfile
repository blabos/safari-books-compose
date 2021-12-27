FROM python:3.10.1-slim-bullseye

RUN true \
    && apt update -y \
    && apt install -y \
        git \
        calibre

RUN true \
    && git clone https://github.com/lorenzodifuccia/safaribooks.git \
    && cd /safaribooks \
    && pip3 install -r requirements.txt

WORKDIR /safaribooks

ARG gid=1000
ARG uid=1000
RUN true \
    && groupadd -g ${gid} app \
    && useradd -g app app \
    && chown -R app:app /safaribooks

COPY --chown=app:app get-book.sh .

USER app

ENTRYPOINT [ "/safaribooks/get-book.sh"]
