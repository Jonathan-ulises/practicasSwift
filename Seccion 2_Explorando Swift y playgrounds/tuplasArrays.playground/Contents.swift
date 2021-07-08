// ARRAYS
var nombres = ["Jonathan", "Hector", "Emilio", "Araceli"]

print(nombres)
print(nombres[2])
print(nombres[2].count)
print(nombres.count)

nombres.append("Santiago")
print(nombres)

nombres.remove(at: 1)
print(nombres)


//TUPLAS
let peliculas = ("terminator", "titanic", "alien")
print(peliculas.1)

let directorio = ("Javier", 555444, 1234.513, true)
print(directorio.2)

let (nombre, telefono, precio, bool) = directorio
print(nombre)
