////
////  HomeCollectionViewController.swift
////  RetificaTRANS
////
////  Created by Rita Lisboa on 09/04/22.
////
//
//import UIKit
//
//class HomeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
//    
//    let cellId = "cellId"
//    let headerView = "headerView"
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem()
//        layoutCustomization()
//        setupCollectionView()
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
//    }
//
//    // MARK: - layoutCustomization
//    
//    fileprivate func layoutCustomization() {
//        if let layout = collectionViewLayout as?
//            UICollectionViewFlowLayout {
//            layout.minimumLineSpacing = 0.5
//        }
//    }
//    
//    // MARK: - setupCollectionView
//    
//    fileprivate func setupCollectionView() {
//        collectionView.backgroundColor = .white
//        collectionView.contentInsetAdjustmentBehavior = .never
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerView)
//    }
//    
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        1
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerView, for: indexPath)
//        return header
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return .init(width: view.frame.width, height: 507)
//    }
//    
//    init() {
//        let layout = UICollectionViewFlowLayout()
//        super.init(collectionViewLayout: layout)
//    }
//    
//    static func createLayout() -> UICollectionViewDelegateFlowLayout {
//            return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
//                
//                if sectionNumber == 0 {
//                    let item1 = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
//                    item1.contentInsets.bottom = 10
//                    
//                    let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)), subitems: [item1])
//                    
//                    let section = NSCollectionLayoutSection(group: group)
//                    return section
//    //                section.or
//                } else {
//                    let item1 = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .absolute(50), heightDimension: .absolute(50)))
//                    
//                    item1.contentInsets.bottom = 10
//                    
//                    let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200)), subitems: [item1])
//                    
//                    let section = NSCollectionLayoutSection(group: group)
//                    return section
//                }
//            }
//            as! UICollectionViewDelegateFlowLayout
//        }
//  
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 0
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        cell.backgroundColor = .white
//        cell.accessibilityPath?.lineJoinStyle = .bevel
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let padding = 40
//        return .init(width: Int(view.frame.width) - padding, height: 50)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
//    // MARK: - navigation bar
//    
//    private func navigationItem() {
//        navigationItem.rightBarButtonItem = UIBarButtonItem(
//            image: UIImage(named: "FAQImage"),
//            style: .done,
//            target: self,
//            action: nil)
//        navigationController?.navigationBar.tintColor = UIColor(named: "DarkBlue")
//        navigationController?.navigationBar.scrollEdgeAppearance = .none
//        navigationController?.navigationBar.isTranslucent = true
//    }
//    
//    @objc
//    func buttonFAQ() {
//        let home = HomeCollectionViewController()
//        navigationController?.pushViewController(home, animated: true)
//    }
//    
//}
//
//    
//
