
ARG mod=production

FROM python:3.11

RUN pip3 install flask



WORKDIR /app




COPY ./src /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=$mod

EXPOSE 5000

ENTRYPOINT [ "flask" ]


CMD [ "run" ]