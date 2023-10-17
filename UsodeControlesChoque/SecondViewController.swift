//
//  SecondViewController.swift
//  UsodeControlesChoque
//
//  Created by MAC45 on 13/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var controlSegmento: UISegmentedControl!
    
    @IBAction func elegirSegmento(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            let nro1 = Double(txtNumero1.text!)!
            let nro2 = Double(txtNumero2.text!)!
            let opcion = controlSegmento.selectedSegmentIndex
            switch opcion {
            case 0:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "+")
            case 1:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "-")
            case 2:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "*")
            case 3:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "/")
            default:
                lblRespuesta.text = "Error"
            }
        }else {
            lblRespuesta.text = "Error"
        }
    }
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    @IBOutlet weak var lblRespuesta: UILabel!
    
    func Operacion(n1:Double, n2:Double, op:String) -> String {
        switch op {
        case "+":
            return String(n1 + n2)
        case "-":
            return String(n1 - n2)
        case "*":
            return String(n1 * n2)
        case "/":
            return String(n1 / n2)

        default:
            return "Error"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
