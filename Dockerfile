FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8085

ENTRYPOINT ["gunicorn", "-b", ":5000", "main:APP"]