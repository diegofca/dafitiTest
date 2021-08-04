//  ViewController.swift
//  DafitiTest
//
//  Created by Diego Fernando Cuesta on 3/08/21.

import UIKit

class ViewController: UIViewController {
    
    let AS = 14

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    // Funcion que valida si una lista de cartas(numeros) forman una escalera
    func isStraight(_ cards: [Int]) -> Bool {
        var isConsecutive: Bool = false
        var secuenceCards: [Int] = []
        cards.sorted().forEach { card in
            guard secuenceCards.count < 5 else { return }
            guard let lastCard = secuenceCards.last else {
                secuenceCards.append(card); return }
            
            isConsecutive = card == AS || lastCard == AS ? true : lastCard + 1 == card
            
            if !isConsecutive { secuenceCards.removeLast() }
            secuenceCards.append(card)
        }
        return secuenceCards.count >= 5 ? isConsecutive : false
    }


}

