// IF
let edad = 34
let sexo = "f"

if edad == 18 {
    print("Si es mayor de edad")
}else if edad >= 21 {
    print("Es mayor a 21")
    if sexo == "m" {
        print("Hace servicio Militar")
    }else{
        print("No hace servicio militar")
    }
}else{
    print("Es menor de edad")
}

//SWITCH
let x = 7

switch x {
case 1:
    print("El valor es 1")
case 2:
    print("El valor es 2")
case 3:
    print("El valor es 3")
case 4 ... 10: //Rango de 4 a 10
    print("El valor es de 4 a 10")
default:
    print("No es ninguno de los valores")
}

let dia  = "sabado"

switch dia {
case "juevez" :
    print("Es hora de estudiar Swift")
    
case "lunes", "martes", "miercoles","viernes":
    print("Es hora de trabajar")
    
case "domingo":
    print("Es hora del descanso")
    
default:
    print("Es hora de estudiar Android")
}

//FOR
for i in 1...5 {
    print("Repeticion \(i)")
}

let miSrt = "ABCDEFGHIJK"
for letras in miSrt {
    print(letras)
}

let nombres = ["Jonathan", "Hector", "Emilio", "Araceli"]
for nombre in nombres {
    print(nombre)
}
