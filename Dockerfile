# Dockerfile 
FROM python:3.9-slim-buster


# Establece el directorio de trabajo del contenedor
#WORKDIR /app
WORKDIR /app/dockerizando


# Clona el repositorio
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# URL  de TU REPOSITORIO DE GITHUB
RUN git clone https://github.com/a365207/dockerizando .

# Directorio donde está el archivo Python clonado
WORKDIR /app/dockerizando


CMD ["python", "aplicacion.py"]




