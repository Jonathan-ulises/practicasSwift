
//RAM STRINGS
let mensaje = #"La computadora es muy "potente" segun el vendedor"#
print(mensaje)
let hola = "hola como estas"
let mensaje2 = #"\#(hola) Jonathan, el desarrollador movil"#
print(mensaje2)

//isMultiple
let num = 3
if num.isMultiple(of: 2) {
    print("Es multple")
} else{
    print("No es multple")
}

//compatMapValues
let edades = ["pedro": "20", "luis": "treinta", "carolina": "25"]
let edadesFiltro = edades.compactMapValues {Int($0)}
print(edadesFiltro)

let corredores = ["Luis": 60, "Roberto": 50, "Maria": 45, "Mario": nil]
let corredoresFiltro = corredores.compactMapValues {$0}
print(corredoresFiltro)
