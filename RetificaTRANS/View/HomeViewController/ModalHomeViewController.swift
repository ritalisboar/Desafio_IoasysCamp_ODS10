//
//  ModalHomeViewController.swift
//  RetificaTRANS
//
//  Created by Ricardo Camillo Avakian on 03/04/22.
//

import UIKit

final class ModalHomeViewController: UIViewController {
    
    private var customView: ModalHomeView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
    }
    
    private func buildView() {
        view = ModalHomeView()
        customView = view as? ModalHomeView
    }
}
