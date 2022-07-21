//
//  ViewController.swift
//  Homework6-7
//
//  Created by WeiFangChou on 2022/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //slabel.text = "Hello World !"
        
        print("viewdidLoad")
    }
    
    
    @IBAction func textValueChanged(_ sender: UITextField) {
        
        if let text = sender.text{
            if(text.count > 10){
                let alertController = UIAlertController(title: "警告", message: "你的文字超過10個字了！", preferredStyle:.alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel)
                alertController.addAction(cancelAction)
                self.present(alertController, animated: true)
                sender.text?.removeLast()
            }else{
                label.text = "\(text)"
            }
            
        }
        
    }
    
    
    //點空白收起鍵盤

    @IBAction func swipeGesture(_ sender: Any) {
        self.view.endEditing(true)
    }
    
}

