//
//  HomeViewController.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 03/04/22.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

//    var homeCollectionViewController = [HomeCollectionViewController]()
    var headerView = HeaderView()
    
    private lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
        homeTableView.translatesAutoresizingMaskIntoConstraints = false
        return homeTableView
    }()
    
    func constraintsHomeTable() {
        view.addSubview(homeTableView)
//        homeTableView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    }
    
//    override func loadView() {
//        super.loadView()
//        constraintsHomeTable()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem()
        view.addSubview(headerView)
        headerView.frame = view.bounds
//        view.addSubview(homeTableView)
        constraintsHomeTable()
//        homeTableView.dataSource = self
//        homeTableView.delegate = self
//        homeTableView.frame = view.bounds
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        headerView.frame = view.frame
//        homeTableView.frame = view.bounds
//        scrollView.addSubview(homeTableView)
//    }

    // MARK: - navigation bar
    

    
    @objc
    func buttonFAQ() {
        let ilhaGratis = IlhaGratuidadeCollectionViewController()
        let ilhaGratisVC = UINavigationController(rootViewController: ilhaGratis)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: )
//        self.navigationController?.navigationBar
//        navigationController?.pushViewController(ilhaGratis, animated: true)
//        self.navigationController?.pushViewController(ilhaGratisVC, animated: true)
        print("oi")
    }
    
    private func navigationItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "FAQImage"),
            style: .done,
            target: #selector(buttonFAQ),
            action: nil)
        navigationController?.navigationBar.scrollEdgeAppearance = .none
        navigationController?.navigationBar.isTranslucent = true
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
