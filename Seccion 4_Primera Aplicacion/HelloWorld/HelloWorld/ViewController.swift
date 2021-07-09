//
//  ViewController.swift
//  HelloWorld
//
//  Created by rruiz on 08/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("La vista ha sido cargada")
    }

    @IBAction func btnClick(_ sender: UIButton) {
        
        self.txtTexto.resignFirstResponder()
        
        
        //-----ALERTAS------//
        //Componente de alerta con el titulo, mensaje y estilo
        let alerta = UIAlertController(title: "Bienvenido", message: txtTexto.text, preferredStyle: .alert)
        
        //Boton y eventos del mismo de la alerta
        let accionAlerta = UIAlertAction(title: "OK", style: .default) { (_) in
            print("Click en el boton")
        }
        
        //Agrega la accion a la alerta
        alerta.addAction(accionAlerta)
        
        //Muestra la alerta en pantalla (equicalente s .show() de android)
        present(alerta, animated: true, completion: nil)
        //------------------//
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

