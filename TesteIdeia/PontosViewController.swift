//
//  PontosViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 02/06/21.
//

import UIKit

class PontosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
        
    }
    
    func backTwo() {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 3], animated: true)
    }
    

    @IBAction func goBackMenu(_ sender: Any) {
        backTwo()
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
