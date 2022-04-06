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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
