//
//  ViewController.swift
//  Calculadora
//
//  Created by rruiz on 16/07/21.
//

import UIKit

class ViewController: UIViewController {

    //Constrain inferior del boton limpiar, sostiene
    //todos los elementos
    @IBOutlet weak var bottomConstrain: NSLayoutConstraint!
    
    //Label de la vista
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var descuento: UILabel!
    
    //TextView de la vista
    @IBOutlet weak var cantidadTxt: UITextField!
    @IBOutlet weak var porcentajeTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Cambia la medida del constrain bottom detectando la
        //dimencon de la pantalla.
        dimencionPantalla()
        
        /*
         Observadores para detectar el comportamiento del teclado, si esta en pantalla, esta oculto o si cambia de estado.
         */
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    /*
         Metodo para detectar las dimensiones de varios iPhone, esto puede ser util para configuraciones
         personalizadas por cada tipo de iPhone (esto detectando la dimension de la pantalla)
         */
        func dimencionPantalla() {
            if UIDevice().userInterfaceIdiom == .phone {
                switch UIScreen.main.nativeBounds.height {
                case 1334:
                    print("IPHONE SE (Segunda generacion)")
                case 1920:
                    print("IPHONE PLUS")
                case 2436:
                    print("IPHONE X XS")
                    self.bottomConstrain.constant = 300
                case 1792:
                    print("IPHONE XR")
                case 2688:
                    print("IPHONE XS MAX")
                case 2532:
                    print("IPHONE 12")
                    self.bottomConstrain.constant = 300
                default:
                    print("Cualquier otro tamaño")
                }
            }
        }
    
    /**
        Metodo elevar la vista si el teclado se esta mostrando en pantalla
     */
    @objc func teclado(notificacion: Notification) {
        guard let tecladoUp = (notificacion.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return  }
        
        if notificacion.name == UIResponder.keyboardWillShowNotification{
            if UIScreen.main.nativeBounds.height == 1334 {
                self.view.frame.origin.y = (-tecladoUp.height)
            }
        } else {
            self.view.frame.origin.y = 0
        }
    }
    
    //Reinicia el estado de la vista, este se usa para esconder el teclado cuando se da click en
    //alguna parte del fondo de la pantalla)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    /*
     Metodo del boton para calcular el descuento
     */
    @IBAction func calcular(_ sender: UIButton) {
        if cantidadTxt.text != "" && porcentajeTxt.text != "" {
            self.view.endEditing(true) //Esconde el teclado
            
            /*
             Variables seguras para evitar errores de variables nulas u otros errores
             */
            guard let numero = cantidadTxt.text else { return }
            guard let porc = porcentajeTxt.text else { return }
            
            //Varibles para realizar el calculo del descuento
            //NSS hace referencia a una clase para manipular cadenas
            //Estas cadenas se castean a float
            let cant = (numero as NSString).floatValue
            let porcieto = (porc as NSString).floatValue
            
            //Calculo del descuento
            let desc = cant * porcieto / 100
            
            //Total de la cantidad menos el descuento deseado
            let totalFinal = cant-desc
            
            //Se imprime el total en el label total
            //Se imprime el total en el label de descuento
            total.text = "$\(totalFinal)"
            descuento.text = "$\(desc)"
        } else {
            /*
             Si el usuario no ingreso ningun valor al momento de dar click al boton de calcular, este mostrara una
             alerta para avizar que debe de ingresar valores.
             */
            let alert = UIAlertController(title: "alerta", message: "Escribe cantidad y porcentaje", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(accion)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    /*
     Metodo del boton para limpiar los TextField y los labels
     */
    @IBAction func limpiar(_ sender: UIButton) {
        self.view.endEditing(true) //Esconde el teclado
        
        //Reinicia label del total
        //Reinicia label del descuento
        total.text = "$0.00"
        descuento.text = "$0.00"
        
        //Limpia el TextField de la cantidad
        //Linpia el TextField del porcentaje
        cantidadTxt.text = ""
        porcentajeTxt.text = ""
    }
}

