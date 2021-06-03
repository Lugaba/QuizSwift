//
//  PontosViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 02/06/21.
//

import UIKit

class PontosViewController: UIViewController {
    var pontuacao: Int = 0
    @IBOutlet weak var labelPontos: UILabel!
    @IBOutlet weak var botaoJogar: UIButton!
    @IBOutlet weak var botaoSair: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //estilos
        view.backgroundColor = .white
        botaoJogar.layer.cornerRadius = 20
        botaoSair.layer.cornerRadius = 20
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
        labelPontos.text = "\(pontuacao)/10"
    }
    
    func backTwo() {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 3], animated: true)
    }
    

    @IBAction func reiniciar(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
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
