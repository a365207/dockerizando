import datetime

def aplicacion():
    print("¡Hola!")
    nombre = input("¿Cuál es tu nombre?  ")

    while True:
        try:
            edad = int(input(f"¿Cuántos años tienes?  "))
            if edad <= 0:
                print("Edad (numero) no valida.")
            else:
                break
        except ValueError:
            print("Edad invalida. ingresa una edad valida.")

    A_curso = datetime.datetime.now().year
    A_ingresado = A_curso - edad

    print(f"{nombre}, naciste en el año {A_ingresado}")
    print("Saludos.")

aplicacion()