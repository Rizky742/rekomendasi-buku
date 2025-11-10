# Gunakan base image Python
FROM python:3.10-slim

# Set working directory di container
WORKDIR /app

# Salin file requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port untuk Jupyter Notebook
EXPOSE 8889

# Jalankan Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8889", "--no-browser"]
