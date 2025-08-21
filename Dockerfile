# __define-ocg__ Python app container
FROM python:3.9-slim

WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app/ /app/
EXPOSE 5010

CMD ["python", "app.py"]
