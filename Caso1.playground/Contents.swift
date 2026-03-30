import Foundation
var paises = [
    "Brasil", "México", "Argentina", "Colombia", "Chile",
    "Perú", "Ecuador", "Bolivia", "Uruguay", "Paraguay"
]
var gdp2025: [Double] = [2200, 1800, 650, 400, 350, 300, 120, 45, 80, 45]
var gdpDict = Dictionary(uniqueKeysWithValues: zip(paises, gdp2025))
let paisesSet = Set(paises)
if let indexBolivia = paises.firstIndex(of: "Bolivia") {
    print("GDP de Bolivia 2025:", gdp2025[indexBolivia], "billones")
}
if let indexPeru = paises.firstIndex(of: "Perú") {
    gdp2025[indexPeru] = 320
}
print("GDP de Perú (2026):", gdpDict["Perú"] ?? 0)
if let indexPeru = paises.firstIndex(of: "Perú") {
    gdp2025[indexPeru] = 300
}
gdpDict["Perú"] = 300
print("GDP de Perú (2025):", gdpDict["Perú"] ?? 0)
let suma = gdp2025.reduce(0, +)
let promedio = suma / Double(gdp2025.count)
print("Promedio GDP:", promedio)
let promedioReduce = gdp2025.reduce(0.0) { $0 + $1 } / Double(gdp2025.count)
print("Promedio con reduce:", promedioReduce)
if let maxGDP = gdp2025.max() {
    print("GDP más alto:", maxGDP)
}
let paisesFiltrados = zip(paises, gdp2025)
    .filter { $0.1 > 300 }
print("Países con GDP mayor a 300:")
for (pais, gdp) in paisesFiltrados {
    print(pais, "-", gdp)
}
let paisesOrdenados = zip(paises, gdp2025)
    .sorted { $0.1 > $1.1 }
print("Países ordenados por GDP:")
for (pais, gdp) in paisesOrdenados {
    print(pais, "-", gdp)
}

