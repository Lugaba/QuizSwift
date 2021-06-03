//
//  TutorialViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 03/06/21.
//

import UIKit

class TutorialViewController: UIViewController {
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.layer.cornerRadius = 10
        titulo.layer.masksToBounds = true
        
        texto.isEditable = false
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
