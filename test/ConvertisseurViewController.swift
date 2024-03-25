//
//  ConvertisseurViewController.swift
//  test
//
//  Created by vandeperre on 01/03/2023.
//

/*import UIKit

class ConvertisseurViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func displayTest() {
        print(textField.text)
    }

    
    
    
    @IBOutlet weak var lbl: UILabel!
    @IBAction func buttonPassData(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "") as! TableViewCellFavorite
        controller.text = textField.text
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
}

