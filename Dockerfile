From python:3.11-slim

WORKDIR /app

COPY requirements.txt .
run npm intall --no-cache-dir -r requirements.txt

COPY ..

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
