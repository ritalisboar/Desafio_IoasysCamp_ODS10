//
//  ModalHomeViewController.swift
//  RetificaTRANS
//
//  Created by Ricardo Camillo Avakian on 03/04/22.
//

import UIKit

final class ModalHomeViewController: UIViewController {
    
    
    
    private lazy var titleModal: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 324, height: 21)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.025, green: 0.025, blue: 0.025, alpha: 0.85)
        label.font = UIFont(name: "Roboto-SemiBold", size: 18)
        label.textAlignment = .center
        label.attributedText = NSMutableAttributedString(string: "Certidão de nascimento atualizada", attributes: [NSAttributedString.Key.kern: 1.08])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var valorEstimadoModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Roboto-Regular", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.57
        label.text = "Valor estimado"
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var descriptionModal: UILabel = {
        var label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        label.font = UIFont(name: "Roboto-Regular", size: 13)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.57
        label.textAlignment = .center
        label.text = "A segunda via da certidão de nascimento pode ser solicitada nos Cartórios Civis. Dê preferência para o Cartório no qual está o seu registro, pois valor diminui um pouco (já que não é preciso cobrir as taxas de transporte dos documentos entre os Cartórios)."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        addSubviews()
        constraintTitle()
        constraintValorEstimado()
        constraintDescription()
        
    }
    
    private func addSubviews() {
        view.addSubview(titleModal)
        view.addSubview(descriptionModal)
        view.addSubview(valorEstimadoModal)
    }
    
    private func constraintTitle() {
        let constraint = [
            titleModal.widthAnchor.constraint(equalToConstant: 260),
            titleModal.heightAnchor.constraint(equalToConstant: 25),
            titleModal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 58),
            titleModal.topAnchor.constraint(equalTo: view.topAnchor, constant: 423)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintValorEstimado() {
        let constraint = [
            valorEstimadoModal.widthAnchor.constraint(equalToConstant: 91),
            valorEstimadoModal.heightAnchor.constraint(equalToConstant: 22),
            valorEstimadoModal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75),
            valorEstimadoModal.topAnchor.constraint(equalTo: titleModal.topAnchor, constant: 440)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    
    private func constraintDescription() {
        let constraint = [
            descriptionModal.topAnchor.constraint(equalTo: titleModal.bottomAnchor, constant: 7),
            descriptionModal.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
}
