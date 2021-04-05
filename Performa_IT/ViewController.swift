//
//  ViewController.swift
//  Performa_IT
//
//  Created by Liellison Menezes on 23/03/21.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup view controllers
        let minhaEncVC = MinhasEncomendasVC()
        let enviarEncVC = EnviarEncomendaVC()
        let centroVC = CentroDeDistribuicaoVC()
        
        // Setup title
        minhaEncVC.title = LocalLocalizedString("MyEnc", comment: "")
        minhaEncVC.tabBarItem.image = UIImage(named: "MinhaEncomendaIcon")
        enviarEncVC.title = LocalLocalizedString("SendEnc", comment: "")
        enviarEncVC.tabBarItem.image = UIImage(named: "EnviarEncomendaIcon")
        centroVC.title = LocalLocalizedString("Centro", comment: "")
        centroVC.tabBarItem.image = UIImage(named: "CentroDeDistribuicaoIcon")

        
        // assing
        self.setViewControllers([minhaEncVC, enviarEncVC, centroVC], animated: false)

        
        self.tabBar.tintColor = .black
    }


}

