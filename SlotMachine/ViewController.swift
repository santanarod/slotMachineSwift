//
//  ViewController.swift
//  SlotMachine
//
//  Created by Aluno on 05/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slots: [UIImageView]!
    var itemSorteado = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sortear(_ sender: UIButton) {
        for slot in slots {
            let numberRandom = Int.random(in: 1...9)
            slot.image = UIImage(named: "slot\(numberRandom)")
            itemSorteado.append(numberRandom)
        }
        
        if Set(itemSorteado).count == 1 {
            showAlert()
        }

        itemSorteado.removeAll()
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Acertou!!!", message: "Parabéns, você foi comtemplado com um brinde", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}

