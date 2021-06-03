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
        
        //estilos
        view.backgroundColor = .white
        
        //Botao jogar - arredondar e sombra
        botaoJogar.layer.cornerRadius = 20
        botaoJogar.layer.shadowColor = UIColor.black.cgColor
        botaoJogar.layer.shadowOpacity = 0.4 //opacidade
        botaoJogar.layer.shadowOffset = .init(width: 0, height: 4) //deslocamento
        botaoJogar.layer.shadowRadius = 4 //espalhar sombra
        
        //Botao sobre - arredondar e sombra
        botaoSobre.layer.cornerRadius = 20
        botaoSobre.layer.shadowColor = UIColor.black.cgColor
        botaoSobre.layer.shadowOpacity = 0.4 //opacidade
        botaoSobre.layer.shadowOffset = .init(width: 0, height: 4) //deslocamento
        botaoSobre.layer.shadowRadius = 4 //espalhar sombra
        
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
