FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy root-level files to /app in container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
