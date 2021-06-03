//
//  SobreViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 02/06/21.
//

import UIKit

class SobreViewController: UIViewController {
    @IBOutlet weak var texto1: UITextView!
    @IBOutlet weak var texto2: UITextView!
    @IBOutlet weak var texto3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        texto1.isEditable = false
        texto2.isEditable = false
        texto3.isEditable = false
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
