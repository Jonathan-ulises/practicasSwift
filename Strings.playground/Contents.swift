//MULTILINEA
let texto = """
Mi nombre es
Jonathan uLISES
Hola muNDO
"""

print(texto)

//CARACTER
let caracter : Character = "%"

//EMOJI
var emoji = "Hola 👽 Jonahan"

print(emoji)

//APPEND
emoji.append(caracter)
print(emoji)

//VACIO
let vacio = ""
if vacio.isEmpty {
    print("Esta vacio")
} else {
    print("Esta lleno")
}

//CONTAR CARACTERES
let contar = "hola mundo"
print(contar.count)

//PREFIX
print(texto.prefix(9))
