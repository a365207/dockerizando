# Dockerfile (Opción 1: Clonando el repo)
FROM python:3.9-slim-buster


# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app/dockerizando

#WORKDIR /app


# Instala Git dentro del contenedor para poder clonar el repositorio
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# ¡IMPORTANTE!: Reemplaza la URL con la de TU REPOSITORIO DE GITHUB
RUN git clone https://github.com/a365207/dockerizando .

# CAMBIO AQUÍ: Navegamos al directorio donde está el archivo Python clonado
WORKDIR /app/dockerizando

CMD ["python", "aplicacion.py"]




