/*
Programa que evalue un rango de números en base a 4 reglas de impresión:

- Generar un rango de 0 a 100, incluye el número 100 en el rango.
- Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
- Al evaluar cada número debes aplicar las siguientes reglas:

**Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”

**Si el número es par, imprime: # el número + “par!!!”

**Si el número es impar, imprime: # el número + “impar!!!”

**Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
*/

import UIKit

for numero in 0...100 {
    
    
    if numero % 5 == 0 {
        
        print ("\(numero) Bingo!!!")}
    
    if numero % 2 == 0 {
        
        print ("\(numero) Par!!!")}
        
    else {
        
        print ("\(numero) Impar!!!")}
    
    if numero >= 30 && numero <= 40 {
        
        print ("\(numero) Viva Swift!!!")}
}

//Juan Felipe Díaz Baena
