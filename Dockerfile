FROM python:3.10.0

COPY requirements.txt .

RUN 

RUN pip install -r requirements.txt && \
    rm requirements.txt

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]