//
//  TabBarViewController.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 04/04/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // instances of view controllers
        let documentsListPage = DocumentsListPageViewController()
        let artigosPage = DocumentsListPageViewController()
        let perfilPage = DocumentsListPageViewController()
        
        // titles of view controllers
        documentsListPage.title = "Início"
        artigosPage.title = "Artigos"
        perfilPage.title = "Perfil"
        
        // assing view controllers to tab bar
        self.setViewControllers([documentsListPage, artigosPage, perfilPage], animated: true)
        
        guard let items = self.tabBar.items else { return }
        let images = ["house", "book", "person"]
        for x in 0...2 {
            items[x].image = UIImage(systemName: images[x])
            
            UITabBar.appearance().backgroundColor = UIColor(red: 0.942, green: 0.942, blue: 0.942, alpha: 1)
            UITabBar.appearance().barTintColor = .systemBackground
//            UITabBar.appearance().frame = .init(x: 0, y: 0, width: 428, height: 122.12)
            tabBar.tintColor = .label
        }
    }
}
