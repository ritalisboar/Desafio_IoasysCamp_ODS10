//
//  TableView.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 15/04/22.
//

import UIKit

class TableView: UIScrollView {

    lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
//        homeTableVew.frame = .init(x: 0, y: 0, width: 100, height: 135)
        return homeTableView
    }()

}

// MARK: - extensions

extension TableView: UITableViewDataSource, UITableViewDelegate {
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
