//
//  Datos.swift
//  Hamburguesas
//
//  Created by Felipe Baena on 07/10/16.
//  Copyright © 2016 Felipe Baena. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises = ["Alemania 🇩🇪", "Estados Unidos 🇺🇸", "Canada 🇨🇦", "México 🇲🇽", "Australia 🇦🇺", "Chile 🇨🇱", "Argentina 🇦🇷", "Brasil 🇧🇷", "Francia 🇫🇷", "Italia 🇮🇹", "Japón 🇯🇵", "Países Bajos 🇳🇱", "España 🇪🇸", "Turquía 🇹🇷", "Gran Bretaña 🇬🇧", "Uruguay 🇺🇾", "Venezuela 🇻🇪", "Costa Rica 🇨🇷", "Ecuador 🇪🇨", "Cuba 🇨🇺"]


    func obtenPais()->String{
        let posicion = Int(arc4random()) % paises.count
        return paises [posicion]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesa = ["Famous Star con Queso","Western Bacon con Queso", "Portobello Mushroom", "Big Carl", "Super Star con Queso", "Doble Western Bacon con Queso", "ThickBurger Original", "ThickBurger Guacamole Bacon", "ThickBurger Jalapeño", "ThickBurger Western Bacon", "ThickBurger Low Carb", "ThickBurger Portobello", "Angus BBQ Bourbon", "Whopper BBQ", "Rodeo Burger", "Cangre Burger", "Big King", "X-Treme", "TenderGrill", "Crispy Chicken con Queso", "King de Pollo"]


func obtenHamburguesa() ->String{
        let posicion = Int (arc4random()) % hamburguesa.count
        return hamburguesa [posicion]
    }
}