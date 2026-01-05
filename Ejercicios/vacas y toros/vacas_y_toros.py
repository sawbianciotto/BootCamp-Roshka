import random
def contar_caracteres(cadena1):
    contador = []
    for caracter in cadena1:
        if caracter not in contador:
            contador.append(caracter)
    return len(contador)

def generar_numero_azar():
    flag = 0
    while flag == 0:
        numero_azar = random.randint(1000, 9999)
        if contar_caracteres(str(numero_azar)) == 4:
            flag = 1
    return numero_azar

def calcular_vacas_y_toros(numero, numero_azar):
    vacas = 0
    toros = 0
    for i in range(4):
        if numero[i] == numero_azar[i]:
            toros += 1
        elif numero[i] in numero_azar:
            vacas += 1
    return vacas, toros

numero_azar = generar_numero_azar()
numero_azar = str(numero_azar)
#print(numero_azar)

while True:
    numero = input("Introduce un número de 4 cifras: ")
    if len(numero) != 4 or not numero.isdigit():
        print("\nEl numero debe de tener 4 digitos.")
        continue
    if contar_caracteres(numero) < 4:
        print("\nEl numero no puede tener cifras repetidas.")
        continue
    numero = str(numero)
    vacas, toros = calcular_vacas_y_toros(numero, numero_azar)
    if toros == 4:
        print(f"¡Felicidades! Has adivinado el número. El número secreto era: {numero_azar}")
        break
    else:
        print(f"vacas: {vacas}, toros: {toros}")
        print("Inténtalo de nuevo.\n")




        
    
