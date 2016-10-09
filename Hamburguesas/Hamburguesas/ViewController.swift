//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Felipe Baena on 07/10/16.
//  Copyright © 2016 Felipe Baena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    let paises = ColeccionDePaises()
   
    @IBOutlet weak var hamburguesa: UILabel!
     let hamburguesas = ColeccionDeHamburguesa()
  
    @IBOutlet weak var QuieroHamburguesa: UIButton!
    
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func QuieroUnaHamburguesa(sender: AnyObject){
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
    
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

