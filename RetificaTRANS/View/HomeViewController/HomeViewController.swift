//
//  HomeViewController.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    private var customHomeView: NavigationView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        buildViewDocumentsList()
    }
    
    private func buildViewDocumentsList() {
        view = NavigationView()
        customHomeView = view as? NavigationView
    }

    
    @objc
    func buttonAction() {
        let homeVC = UIViewController()
        let homeViewController = UINavigationController(rootViewController: homeVC)
//        present(homeViewController, animated: true)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: HomeView())
//        navigationController?.pushViewController(homeViewController, animated: true)
//        self.navigationController?.pushViewController(homeViewController, animated: true)
        print("chegou")
    }

    // MARK: - NavigationViewController

    @MainActor class UINavigationBar: UIView {
        
    }

 
    
}
