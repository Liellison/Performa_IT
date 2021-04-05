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
        minhaEncVC.title = "Minhas Encomendas"
        minhaEncVC.tabBarItem.image = UIImage(named: "MinhaEncomendaIcon")
        enviarEncVC.title = "Enviar Encomendas"
        enviarEncVC.tabBarItem.image = UIImage(named: "EnviarEncomendaIcon")
        centroVC.title = "Centro de Distribuição"
        centroVC.tabBarItem.image = UIImage(named: "CentroDeDistribuicaoIcon")

        
        // assing
        self.setViewControllers([minhaEncVC, enviarEncVC, centroVC], animated: false)

        
        self.tabBar.tintColor = .black
    }


}

