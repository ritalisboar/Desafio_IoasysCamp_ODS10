//
//  DocumentsListPageViewController.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

class DocumentsListPageViewController: UIViewController {

    private var customHomeView: DocumentsListPageView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        buildViewDocumentsList()
    }
    
    private func buildViewDocumentsList() {
        view = DocumentsListPageView()
        customHomeView = view as? DocumentsListPageView
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
