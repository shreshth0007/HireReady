FROM python:3.13.5-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Run Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.enableCORS=false"]