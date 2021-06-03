//
//  MenuViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 02/06/21.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var botaoJogar: UIButton!
    @IBOutlet weak var botaoSobre: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        botaoJogar.layer.cornerRadius = 20
        botaoSobre.layer.cornerRadius = 20
        navigationController?.navigationBar.barTintColor = .white
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
