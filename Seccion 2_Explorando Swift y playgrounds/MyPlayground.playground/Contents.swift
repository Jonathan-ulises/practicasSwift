//VARIABLES

var var1 : String = "Jonathan" //Forma completa
var var2 = "nombre"
var var3 = ""
var3 = "Ulises"
var3 = "Sanchez"
print(var3)

var numero : Int = 23
var numero2 = 23
var doble : Double = 21.873123231
var flotante : Float = 23.13
var boolean : Bool = true
var boolean2 = false

//CONSTANTES
let PI = 3.1416
let HOLA : String = "hola"
print(PI)

//OPCIONALES
/*
 Estas variables pueden tener un valor o no, son OPCIONALES
 */
var edad : Int? = nil //null -> nil
edad = 23
//print(edad ?? "No tiene edad") //Valor por defecto
//print(edad!)  //Siempre tendra un valor
//print(edad as Any)  //Hace el casteo a la variable opcional

//optional binding
if let age = edad {
    print(age)
} else {
    print("No tiene valor")
}


//CASTING
let num = "2"
let num2 = 3
let res = Int(num) ?? 0 + num2

print(res)

let numDouble : Double = 123.3412314142
let numFloat : Float = 23.3141

let res2 = Float(numDouble) + numFloat
print(res2)

//CONCATENACIONES
let helloWord = "Hola, como estas"
let nombre = " Jonathan"
let apellido = "Sanchez"
let apallidoMat = "Parra"

print(helloWord + nombre + " " + apellido)
print("Hola, como estas", apellido)
print("Hola, como estas \(apallidoMat)")
