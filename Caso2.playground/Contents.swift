import Cocoa

let incasImperio: Set<String> = [
    "Manco Cápac",
    "Sinchi Roca",
    "Lloque Yupanqui",
    "Mayta Cápac",
    "Cápac Yupanqui",
    "Inca Roca",
    "Yahuar Huácac",
    "Huiracocha",
    "Pachacútec Inca Yupanqui",
    "Amaru Inca Yupanqui",
    "Túpac Inca Yupanqui",
    "Huayna Cápac",
    "Huáscar",
    "Atahualpa"
]

// Diccionario para guardar la duración de reinado
let reinados: [String: Int] = [
    "Manco Cápac": 28,
    "Sinchi Roca": 19,
    "Lloque Yupanqui": 49,
    "Mayta Cápac": 30,
    "Cápac Yupanqui": 45,
    "Inca Roca": 27,
    "Yahuar Huácac": 22,
    "Huiracocha": 50,
    "Pachacútec Inca Yupanqui": 57,
    "Amaru Inca Yupanqui": 1,
    "Túpac Inca Yupanqui": 10,
    "Huayna Cápac": 37,
    "Huáscar": 7,
    "Atahualpa": 8
]

// Otro conjunto de comparación: cronología histórica
let cronologia: Set<String> = [
    "Manco Cápac",
    "Sinchi Roca",
    "Lloque Yupanqui",
    "Mayta Cápac",
    "Cápac Yupanqui",
    "Inca Roca",
    "Yahuar Huácac",
    "Huiracocha",
    "Pachacútec Inca Yupanqui",
    "Huayna Cápac",
    "Huáscar",
    "Atahualpa"
]

// 1. Verificar si un Inca está registrado en la cronología

let incaBuscado = "Amaru Inca Yupanqui"

print("1. Verificación de registro")
if cronologia.contains(incaBuscado) {
    print("\(incaBuscado) sí está registrado en la cronología.")
} else {
    print("\(incaBuscado) no está registrado en la cronología.")
}

// 2. Unir todos los nombres sin duplicados
let otrosIncas: Set<String> = [
    "Amaru Inca Yupanqui",
    "Túpac Inca Yupanqui",
    "Manco Cápac",
    "Viracocha Inca"
]

let unionIncas = incasImperio.union(otrosIncas)

print("\n2. Unión de nombres sin duplicados")
for inca in unionIncas.sorted() {
    print("- \(inca)")
}

// 3. Incas cuyo nombre contiene YUPANQUI
let incasYupanqui = incasImperio.filter { $0.uppercased().contains("YUPANQUI") }

print("\n3. Incas cuyo nombre contiene YUPANQUI")
for inca in incasYupanqui.sorted() {
    if let años = reinados[inca] {
        print("- \(inca) : \(años) años de reinado")
    } else {
        print("- \(inca)")
    }
}

// 4. Incas que están en ambos conjuntos
let incasCoincidentes = incasImperio.intersection(cronologia)

print("\n4. Incas presentes tanto en el registro como en la cronología")
for inca in incasCoincidentes.sorted() {
    print("- \(inca)")
}

// 5. Incas que están en el registro pero no en la cronología
let noRegistradosEnCronologia = incasImperio.subtracting(cronologia)

print("\n5. Incas del registro que no aparecen en la cronología")
for inca in noRegistradosEnCronologia.sorted() {
    print("- \(inca)")
}

// 6. Mostrar el total de incas registrados
print("\n6. Total de incas en el conjunto principal: \(incasImperio.count)")
print("Total de incas en la unión: \(unionIncas.count)")
