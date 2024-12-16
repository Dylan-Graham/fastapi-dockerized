FROM python:3.10.6

WORKDIR /app

# Install dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Copy project
COPY . .

#application port
EXPOSE 80

CMD ["uvicorn", "main:app", "--host" ,"0.0.0.0", "--port", "80"]