//CLASES

class Persona {
    //atributos
    var nombre: String
    var edad: Int
    
    //constructor
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    //metodos
    func hola() -> String{
        return "Hola desde la clase"
    }
}

let hector = Persona(nombre: "Hector", edad: 21)
print(hector.nombre)

let emilio = Persona(nombre: "Emilio", edad: 22)
print(emilio.edad)

print(hector.hola())
