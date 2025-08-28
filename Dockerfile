# __define-ocg__ Python app container
FROM python:3.9-slim

WORKDIR /app

# Upgrade pip first
RUN pip install --no-cache-dir --upgrade pip

COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ /app/
EXPOSE 5010

CMD ["python", "app.py"]
