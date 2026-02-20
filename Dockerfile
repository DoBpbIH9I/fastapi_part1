FROM python:3.14

COPY ./requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY ./app /app
WORKDIR /app

ENTRYPOINT ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "80"]