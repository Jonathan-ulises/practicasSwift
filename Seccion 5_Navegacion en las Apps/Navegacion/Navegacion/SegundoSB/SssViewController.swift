//
//  SssViewController.swift
//  Navegacion
//
//  Created by rruiz on 12/07/21.
//

import UIKit

class SssViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var parametro: UITextField!
    
    var recibirTexto: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultado.text = recibirTexto
    }
    

    @IBAction func regresar(_ sender: UIButton) {
        //Regresar con el navigation controller
        navigationController?.popViewController(animated: true)
    }
    
}
