//
//  SegundoViewController.swift
//  Navegacion
//
//  Created by rruiz on 12/07/21.
//

import UIKit

class SegundoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        //Accion dismiss para eliminar el view de la aplicacion
        //Este permite tener una animacion y un evento al momento de
        //ejecutarse
        self.dismiss(animated: true, completion: nil)
    }
    
}
