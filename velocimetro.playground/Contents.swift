// ------------------------------------------------------------------------------------------------
// ------------------------------------- Práctica Velocímetro -------------------------------------
// ------------------------------------------------------------------------------------------------

import UIKit

//Declaramos el enumerado Velocidades con las especificaciones deseadas
enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120;
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial;
    }
}

//Declaramos la clase Auto con las especificaciones deseadas y con su función necesaria en el enunciado
class Auto
{
    var velocidad: Velocidades;
    
    init()
    {
        self.velocidad = .Apagado;
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String)
    {
        var leyenda : String
        let estadoActual = self.velocidad.rawValue;
        
        switch self.velocidad
        {
            case .Apagado:          leyenda = "Apagado";
                                    self.velocidad = .VelocidadBaja;
            case .VelocidadBaja:    leyenda = "Velocidad baja";
                                    self.velocidad = .VelocidadMedia;
            case .VelocidadMedia:   leyenda = "Velocidad media";
                                    self.velocidad = .VelocidadAlta;
            case .VelocidadAlta:    leyenda = "Velocidad alta";
                                    self.velocidad = .VelocidadMedia;
        }
        
        return (actual: estadoActual, velocidadEnCadena: leyenda);
    }
}

//Declaramos el objeto y realizamos la impresión en pantalla
var auto = Auto();
var tupla : (actual: Int, velocidadEnCadena: String)

for var i in 1...20
{
    tupla = auto.cambioDeVelocidad();
    print("\(tupla.actual), \(tupla.velocidadEnCadena)");
}
