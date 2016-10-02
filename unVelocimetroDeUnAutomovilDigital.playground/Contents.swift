/*
    - Crea un playground que contenga los elementos para representar un velocímetro de un automóvil.
    - Juan Felipe Díaz Baena
    - 2 de octube de 2016

*/

import UIKit

enum Velocidades : Int{         //Declarando la enumeración "Velocidades" tipo Int
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120    //Declamos cada case segun los parametros solicitados
    
    init (velocidadInicial : Velocidades){      //Inicializador que recibe velocidad
        self = velocidadInicial
    }
    
    func velocidadEnCadena() -> String{         //Declarando funcion con retorno
        switch self{
        case.Apagado:
            return "Apagado"
        case.VelocidadBaja:
            return "Velocidad Baja"
        case.VelocidadMedia:
            return "Velocidad Media"
        case.VelocidadAlta:
            return "Velocidad Alta"
        }
    }
}

class Auto{                         //Declarando clase "Auto"
    var velocidad : Velocidades     //Variable velocidad con enumeracion "Velocidades"
    
    init(){                         //Inicializando creando instancia de velocidades y velocidad en apagado
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)     //Funcion que cambia la velocidad segun sea el caso
    {
        let velocidadActual = self.velocidad
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        
        return (velocidadActual.rawValue, velocidadActual.velocidadEnCadena())
    }
}

var auto : Auto = Auto()            //Instancia de la clase llamada "auto"

auto.velocidad

for index in 1...20{                //Iterando usando "for" las veces solicitadas
    var tupla = auto.cambioDeVelocidad()
    
    print("\(index). \(tupla.0), \(tupla.1)")
}
