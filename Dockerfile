# For running docker compose and working docker container
FROM python:3.12-slim
ENV PYTHONNUNBUFFERED=1   
WORKDIR /django
COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y libpq-dev gcc && pip install -r requirements.txt

# ENV PYTHONNUNBUFFERED=1 = We set it to non-empty value so that any python output is sent to the terminal without being buffered and any error log is sent to terminal called container logs



# For creating docker image and running the container, this is done first than upper one 

# FROM python:3.12-slim
# WORKDIR /app

# COPY requirements.txt requirements.txt


# RUN apt-get update && apt-get install -y libpq-dev gcc && pip install -r requirements.txt
# COPY . . 

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



