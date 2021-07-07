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
