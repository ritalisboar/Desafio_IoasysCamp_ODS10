//
//  HomeViewController.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    private lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
        return homeTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem()
        homeTableView.dataSource = self
        homeTableView.delegate = self
        view.addSubview(homeTableView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeTableView.frame = view.bounds
    }

    // MARK: - navigation bar
    
    private func navigationItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "FAQImage"),
            style: .done,
            target: self,
            action: nil)
        navigationController?.navigationBar.tintColor = UIColor(named: "DarkBlue")
        navigationController?.navigationBar.scrollEdgeAppearance = .none
        navigationController?.navigationBar.isTranslucent = true
    }
    
    @objc
    func buttonFAQ() {
        let home = HomeCollectionViewController()
        navigationController?.pushViewController(home, animated: true)
    }
}

// MARK: - extensions

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 27
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: HomeTableView.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
}
