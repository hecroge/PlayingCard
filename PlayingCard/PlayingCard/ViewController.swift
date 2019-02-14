//
//  ViewController.swift
//  PlayingCard
//
//  Created by Héctor Rogel on 14/02/2019.
//  Copyright © 2019 Héctor Rogel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card.description)")
            }
        }
    }


}

