FROM scratch
WORKDIR /app
COPY requirement.txt .
# Install any dependencies
#RUN pip install --no-cache-dir -r requirement.txt

# Copy the Python script
COPY jsontocsv.py .

CMD ["python", "jsontocsv.py"]
