//
//  FirstViewController.swift
//  UsodeControlesChoque
//
//  Created by MAC45 on 13/10/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtResult: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var txtNum1: UITextField!
    
    //variables
    var num1:Double = Double()
    var num2:Double = Double()
    var result:Double = Double()
    
    
    
    //funcion de limpieza
    func clean() {
        self.txtNum1.text = "0"
        self.txtNum2.text = "0"
        self.txtResult.text = "0"
    }
    
    //funcion de alerta
    
    func showAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let clean = UIAlertAction(title: "Clean", style: .default, handler: {(action) in
            self.clean()
        })
        
        let cancelar = UIAlertAction(title: "Cancel", style: .cancel, handler:{(action) in
            
        })
        alert.addAction(clean)
        alert.addAction(cancelar)
        present(alert,animated: true, completion: nil)
        }
    
    @objc func ocultarTeclado() {
        view.endEditing(true)
    }
    
    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNum1.text!) != nil && Double(txtNum2.text!) != nil {
            num1 = Double(txtNum1.text!)!
            num2 = Double(txtNum2.text!)!
            result = num1 + num2
            txtResult.text = String(result)
        }else{
            showAlert(title: "Error", msg: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    @IBAction func btnRestar(_ sender: Any) {
        if Double(txtNum1.text!) != nil && Double(txtNum2.text!) != nil {
            num1 = Double(txtNum1.text!)!
            num2 = Double(txtNum2.text!)!
            result = num1 - num2
            txtResult.text = String(result)
        }else{
            showAlert(title: "Error", msg: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(txtNum1.text!) != nil && Double(txtNum2.text!) != nil {
            num1 = Double(txtNum1.text!)!
            num2 = Double(txtNum2.text!)!
            result = num1 / num2
            txtResult.text = String(result)
        }else{
            showAlert(title: "Erorr", msg: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        if Double(txtNum1.text!) != nil && Double(txtNum2.text!) != nil {
            num1 = Double(txtNum1.text!)!
            num2 = Double(txtNum2.text!)!
            result = num1 * num2
            txtResult.text = String(result)
        }else{
            showAlert(title: "Error", msg: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func btnClean(_ sender: Any) {
        clean()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ocultarTeclado))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    }
    
