//
//  ViewController.swift
//  TesteIdeia
//
//  Created by Luca Hummel on 01/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var simbolos: [String] = ["airplane.circle", "film", "book.circle", "checkmark.circle", "camera.circle", "cloud", "earpods", "gear", "link.circle", "text.alignleft", "volume.slash", "highlighter", "pencil", "doc", "bookmark", "text.book.closed", "folder", "command", "restart", "sleep", "wake", "network", "timelapse", "eject", "memories", "target", "location", "bell", "mappin", "return", "trash", "paperplane", "note", "square.and.pencil", "tray", "flag", "magnifyingglass", "plus.magnifyingglass", "scribble", "calendar", "timer", "sunrise", "sunset", "mic", "mic.slash", "record.circle", "lock.fill", "lock.open.fill", "flashlight.off.fill", "flashlight.on.fill", "keyboard", "photo", "video", "phone", "antenna.radiowaves.left.and.right", "alarm"]
    
    var respostas: [String] = ["Modo avião", "Filme", "Ler", "Certo", "Tirar Foto", "Nuvem", "Earpods", "Ajustes", "Link", "Alinhar a esquerda", "Sem som", "Marca-texto", "Lápis", "Arquivo", "Salvar", "Livro de texto", "Pasta", "Command", "Reiniciar", "Adormecer", "Despertar", "Network", "Timelapse", "Ejetar", "Memórias", "Alvo", "Localização", "Notificação", "Mapeamento", "Voltar", "Deletar", "Enviar", "Nota", "Escrever", "Caixa de entrada", "Sinalizar", "Buscar", "Zoom", "Rabiscar", "Calendário", "Cronômetro", "Nascer do sol", "Pôr do sol", "Microfone", "Mudo", "Gravar", "Bloqueado", "Desbloqueado", "Lanterna desligada", "Lanterna ligada", "Teclado", "Foto", "Vídeo", "Chamada", "Rede móvel", "Alarme"]
    var contador = 0
    var pontuacao = 0
    var posicaoResposta = 0
    var permitidoMudar = false
    var permitidoResponder = true
    var resposta = ""
    var ponteiro = 0

    
    // elementos do storyboard
    @IBOutlet weak var primeiraAlt: UIButton!
    @IBOutlet weak var segundaAlt: UIButton!
    @IBOutlet weak var terceiraAlt: UIButton!
    @IBOutlet weak var quartaAlt: UIButton!
    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var mudarQuestao: UIButton!
    @IBOutlet weak var feedback: UILabel!
    @IBOutlet weak var goPontos: UIButton!
    
    var botoes: [UIButton] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // estilos
        view.backgroundColor = .white
        feedback.textColor = .black
        
        primeiraAlt.layer.cornerRadius = 20
        
        segundaAlt.layer.cornerRadius = 20
        
        terceiraAlt.layer.cornerRadius = 20
        
        quartaAlt.layer.cornerRadius = 20
        
        mudarQuestao.layer.cornerRadius = 5
        mudarQuestao.layer.shadowColor = UIColor.black.cgColor
        mudarQuestao.layer.shadowOpacity = 0.4 //opacidade
        mudarQuestao.layer.shadowOffset = .init(width: 0, height: 4) //deslocamento
        mudarQuestao.layer.shadowRadius = 4 //espalhar sombra
        
        goPontos.layer.cornerRadius = 5
        goPontos.layer.shadowColor = UIColor.black.cgColor
        goPontos.layer.shadowOpacity = 0.4 //opacidade
        goPontos.layer.shadowOffset = .init(width: 0, height: 4) //deslocamento
        goPontos.layer.shadowRadius = 4 //espalhar sombra
        
        ponteiro = simbolos.count
        botoes = [primeiraAlt, segundaAlt, terceiraAlt, quartaAlt]
        mudarQuestao.isHidden = true
        goPontos.isHidden = true
        updateQuestion()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //Reiniciar o jogo sem o usuario ver
        contador = 0
        pontuacao = 0
        ponteiro = simbolos.count
        posicaoResposta = 0
        permitidoMudar = false
        permitidoResponder = true
        resposta = ""
        feedback.text = ""
        mudarQuestao.isHidden = true
        goPontos.isHidden = true
        updateQuestion()
    }

    @IBAction func changeImage(_ sender: UIButton) {
        if permitidoResponder == true {
            sender.layer.borderWidth = 2
            permitidoMudar = true
            if sender.tag == 1 {
                pontuacao += 1
                feedback.text = "✅ Resposta Correta"
            } else {
                feedback.text = "❌ Resposta errada\nAlternativa correta: \(resposta)"
            }
            for i in 0..<botoes.count{
                if botoes[i].tag == 1 {
                    botoes[i].backgroundColor = UIColor(red: 0.47, green: 0.87, blue: 0.47, alpha: 1.00)
                    botoes[i].layer.borderColor = UIColor.green.cgColor
                } else {
                    botoes[i].backgroundColor = UIColor(red: 1.00, green: 0.41, blue: 0.38, alpha: 1.00)
                    botoes[i].layer.borderColor = UIColor.red.cgColor
                }
            }
        }
        if contador == 10{
            goPontos.isHidden = false
        } else {
            mudarQuestao.isHidden = false
        }
        permitidoResponder = false
    }
    
    @IBAction func clickNextQuestion(_ sender: Any) {
        if permitidoMudar == true{
            updateQuestion()
            permitidoMudar = false
            permitidoResponder = true
            mudarQuestao.isHidden = true
        }
    }
    
    // funcao para mudas as perguntas
    func updateQuestion(){
        var sorteados: [Int] = []
        if contador < 10 { //contador para ter apenas 10 perguntas
            feedback.text = "Questão \(contador + 1)"
            posicaoResposta = Int.random(in: 0..<simbolos.count)
            while posicaoResposta >= ponteiro {
                posicaoResposta = Int.random(in: 0..<simbolos.count)
            }
            resposta = respostas[posicaoResposta]
            imagem.image = UIImage(systemName: simbolos[posicaoResposta])
            botoes.shuffle()
            for s in 0..<botoes.count {
                botoes[s].layer.borderWidth = 0
                botoes[s].backgroundColor = UIColor(red: 0.44, green: 0.71, blue: 1.00, alpha: 1.00)
                if s == 0 {
                    botoes[s].tag = 1
                    botoes[s].setTitle(respostas[posicaoResposta], for: .normal)
                    removerAddFinal(position: posicaoResposta)
                    ponteiro -= 1
                } else {
                    botoes[s].tag = 0
                    var numeroSorteado = Int.random(in: 0..<simbolos.count)
                    while sorteados.contains(numeroSorteado) || numeroSorteado >= ponteiro{
                        numeroSorteado = Int.random(in: 0..<simbolos.count)
                    }
                    sorteados.append(numeroSorteado)
                    botoes[s].setTitle(respostas[numeroSorteado], for: .normal)
                }
            }
            contador += 1
        }
    }
    
    //Funcao para remover e adicionar o elemento no final do vetor para o ponteiro saber a partir de onde nao é pra ler
    func removerAddFinal(position: Int){
        let elementImage = simbolos[position]
        let elementAnswer = respostas[position]
        simbolos.remove(at: position)
        respostas.remove(at: position)
        simbolos.append(elementImage)
        respostas.append(elementAnswer)
    }
    
    //funcao que envia a pontuacao para a outra viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "transicaoGamePont" {
            let pontosViewController = segue.destination as? PontosViewController
                pontosViewController?.pontuacao=pontuacao
        }
    }
}

