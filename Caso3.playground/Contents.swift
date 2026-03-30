let metroLima: [String: [String]] = [
    "Linea 1": [
        "Villa El Salvador", "Parque Industrial", "Pumacahua",
        "Villa María", "María Auxiliadora", "San Juan",
        "Atocongo", "Jorge Chávez", "Ayacucho", "Cabitos",
        "Angamos", "San Borja Sur", "La Cultura",
        "Nicolás Arriola", "Gamarra", "Miguel Grau",
        "El Ángel", "Presbítero Maestro", "Caja de Agua",
        "Pirámide del Sol", "Los Jardines", "Los Postes",
        "San Carlos", "San Martín", "Santa Rosa", "Bayóvar"
    ],
    
    "Linea 2": [
        "Ate", "Óvalo Santa Anita", "Evitamiento",
        "Colectora Industrial", "Hermilio Valdizán",
        "Mercado Santa Anita"
    ]
]
func estacionesDeLinea(_ linea: String) {
    if let estaciones = metroLima[linea] {
        print("Estaciones de \(linea):")
        for est in estaciones {
            print("-", est)
        }
    } else {
        print("Línea no encontrada")
    }
}
estacionesDeLinea("Linea 1")
func lineasDeEstacion(_ estacion: String) {
    var resultado: [String] = []
    
    for (linea, estaciones) in metroLima {
        if estaciones.contains(estacion) {
            resultado.append(linea)
        }
    }
    
    print("La estación \(estacion) pertenece a:", resultado)
}
lineasDeEstacion("Gamarra")
func perteneceEstacion(linea: String, estacion: String) {
    if let estaciones = metroLima[linea] {
        if estaciones.contains(estacion) {
            print("Sí pertenece")
        } else {
            print("No pertenece")
        }
    }
}
perteneceEstacion(linea: "Linea 1", estacion: "Gamarra")
func cantidadEstaciones(_ linea: String) {
    if let estaciones = metroLima[linea] {
        print("Cantidad de estaciones:", estaciones.count)
    }
}
cantidadEstaciones("Linea 1")
let estacionesSet = Set(metroLima["Linea 1"] ?? [])
print("¿Existe 'Gamarra'?:", estacionesSet.contains("Gamarra"))
