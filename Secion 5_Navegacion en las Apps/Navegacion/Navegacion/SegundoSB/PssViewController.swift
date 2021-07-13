//
//  PssViewController.swift
//  Navegacion
//
//  Created by rruiz on 12/07/21.
//

import UIKit

class PssViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func enviar(_ sender: UIButton) {
        //Direcciona hacia un segue
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    /*
     Prepara las varbles del view del segundo segue para poder
     hacer uso de ellas desde esta clase
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            let destino = segue.destination as! SssViewController
            destino.recibirTexto = texto.text
        }
    }
    
    @IBAction func recibirParametro(segue: UIStoryboardSegue) {
        //Recibir parametro con un segue
        if let recibir = segue.source as? SssViewController {
            texto.text = recibir.parametro.text
        }
            
    }
}
