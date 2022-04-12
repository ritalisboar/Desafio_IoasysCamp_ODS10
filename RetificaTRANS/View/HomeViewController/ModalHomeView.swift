//
//  ModalHomeView.swift
//  RetificaTRANS
//
//  Created by Ricardo Camillo Avakian on 03/04/22.
//

import UIKit

class ModalHomeView: UIView {
    
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
    
    private lazy var imageValorModal: UIImageView = {
        let image = UIImage(named: "dollar-sign")
        let imageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var valorEstimadoModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Roboto-Regular", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.57
        label.text = "Valor estimado"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var valorEmReaisModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Mulish-ExtraBold", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        label.text = "R$ 20,00"
        label.translatesAutoresizingMaskIntoConstraints = false
        
       return label
    }()
    
    private lazy var imageTempoModal: UIImageView = {
        let image = UIImage(named: "clock")
        let imageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    private lazy var tempoEstimadoModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Roboto-Regular", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.57
        label.text = "Tempo estimado"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var prazoNumericoModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Mulish-ExtraBold", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        label.text = "30 dias"
        label.translatesAutoresizingMaskIntoConstraints = false
        
       return label
    }()
    
    
    private lazy var descriptionModal: UILabel = {
        let label = UILabel()
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
    
    private lazy var saibaMaisModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.144, green: 0.387, blue: 0.5, alpha: 1)
        label.font = UIFont(name: "Mulish-SemiBold", size: 14)
        label.attributedText = NSMutableAttributedString(string: "Saiba mais", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.kern: 0.84])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var lineModal: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 335, height: 0)
        label.backgroundColor = .white
        var stroke = UIView()
        stroke.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = label.center
        label.addSubview(stroke)
        label.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.812, green: 0.792, blue: 0.894, alpha: 1).cgColor
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private lazy var estadoDocumentoModal: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Mulish-ExtraBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        label.text = "Estado do documento"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // button com class de UIButton
    
    private lazy var pendenteButtonModal: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 38)
        button.layer.backgroundColor = UIColor(red: 0.817, green: 0.201, blue: 0.389, alpha: 1).cgColor
        button.layer.cornerRadius = 82
        button.setTitle("Pendente", for: .normal)
        button.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Mulish-Bold", size: 13)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    // button com class de UIButton
    private lazy var solicitadoButtonModal: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 38)
        button.layer.backgroundColor = UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1).cgColor
        button.layer.cornerRadius = 82
        button.setTitle("Solicitado", for: .normal)
        button.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Mulish-Bold", size: 13)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        button.translatesAutoresizingMaskIntoConstraints = false
                
        return button
    }()
    
    // button con Class UIButton
    private lazy var recebidoButtonModal: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 38)
        button.layer.backgroundColor = UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1).cgColor
        button.layer.cornerRadius = 82
        button.setTitle("Recebido", for: .normal)
        button.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Mulish-Bold", size: 13)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.47
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        constraintTitle()
        constraintImageValorModal()
        constraintValorEstimado()
        constraintValorEmReaisModal()
        constraintImageTempoModal()
        constraintTempoEstimado()
        constrainstPrazoNumericoModal()
        constraintDescription()
        constraintSaibaMaisModal()
        constraintLineModal()
        constraintEstadoDocumentoModal()
        constraintPendenteButtonModal()
        constraintSolicitadoButtonModal()
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(titleModal)
        addSubview(imageValorModal)
        addSubview(valorEstimadoModal)
        addSubview(valorEmReaisModal)
        addSubview(imageTempoModal)
        addSubview(tempoEstimadoModal)
        addSubview(prazoNumericoModal)
        addSubview(descriptionModal)
        addSubview(saibaMaisModal)
        addSubview(lineModal)
        addSubview(estadoDocumentoModal)
        addSubview(pendenteButtonModal)
        addSubview(solicitadoButtonModal)
        addSubview(recebidoButtonModal)
    }
    
    private func constraintTitle() {
        let constraint = [
            titleModal.widthAnchor.constraint(equalToConstant: 260),
            titleModal.heightAnchor.constraint(equalToConstant: 25),
            titleModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 58),
            titleModal.topAnchor.constraint(equalTo: topAnchor, constant: 423)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintImageValorModal() {
        let constraint = [
            imageValorModal.widthAnchor.constraint(equalToConstant: 40),
            imageValorModal.heightAnchor.constraint(equalToConstant: 40),
            imageValorModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageValorModal.topAnchor.constraint(equalTo: topAnchor, constant: 464)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    private func constraintValorEstimado() {
        let constraint = [
            valorEstimadoModal.widthAnchor.constraint(equalToConstant: 91),
            valorEstimadoModal.heightAnchor.constraint(equalToConstant: 22),
            valorEstimadoModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            valorEstimadoModal.topAnchor.constraint(equalTo: titleModal.topAnchor, constant: 440)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintValorEmReaisModal() {
        let constraint = [
            valorEmReaisModal.widthAnchor.constraint(equalToConstant: 94),
            valorEmReaisModal.heightAnchor.constraint(equalToConstant: 37),
            valorEmReaisModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            valorEmReaisModal.topAnchor.constraint(equalTo: topAnchor, constant: 473)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintImageTempoModal() {
        let constraint = [
            imageTempoModal.widthAnchor.constraint(equalToConstant: 40),
            imageTempoModal.heightAnchor.constraint(equalToConstant: 40),
            imageTempoModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 198),
            imageTempoModal.topAnchor.constraint(equalTo: topAnchor, constant: 464)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constraintTempoEstimado() {
        let constraint = [
            tempoEstimadoModal.widthAnchor.constraint(equalToConstant: 102),
            tempoEstimadoModal.heightAnchor.constraint(equalToConstant: 22),
            tempoEstimadoModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 253),
            tempoEstimadoModal.topAnchor.constraint(equalTo: topAnchor, constant: 458)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constrainstPrazoNumericoModal() {
        let constraint = [
            prazoNumericoModal.widthAnchor.constraint(equalToConstant: 94),
            prazoNumericoModal.heightAnchor.constraint(equalToConstant: 37),
            prazoNumericoModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            prazoNumericoModal.topAnchor.constraint(equalTo: topAnchor, constant: 473)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintDescription() {
        let constraint = [
            descriptionModal.topAnchor.constraint(equalTo: titleModal.bottomAnchor, constant: 7),
            descriptionModal.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        constraint.forEach{ (item) in
            item.isActive = true
        }
    }
    
    private func constraintSaibaMaisModal() {
        let constraint = [
            saibaMaisModal.widthAnchor.constraint(equalToConstant: 81),
            saibaMaisModal.heightAnchor.constraint(equalToConstant: 18),
            saibaMaisModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            saibaMaisModal.topAnchor.constraint(equalTo: topAnchor, constant: 648)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constraintLineModal() {
        let constraint = [
            lineModal.widthAnchor.constraint(equalToConstant: 335),
            lineModal.heightAnchor.constraint(equalToConstant: 0),
            lineModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lineModal.topAnchor.constraint(equalTo: topAnchor, constant: 686)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constraintEstadoDocumentoModal() {
        let constraint = [
            estadoDocumentoModal.widthAnchor.constraint(equalToConstant: 140),
            estadoDocumentoModal.heightAnchor.constraint(equalToConstant: 22),
            estadoDocumentoModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            estadoDocumentoModal.topAnchor.constraint(equalTo: topAnchor, constant: 706)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constraintPendenteButtonModal() {
        let constraint = [
            pendenteButtonModal.widthAnchor.constraint(equalToConstant: 64),
            pendenteButtonModal.heightAnchor.constraint(equalToConstant: 24),
            pendenteButtonModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            pendenteButtonModal.topAnchor.constraint(equalTo: topAnchor, constant: 7)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
        
    }
    
    private func constraintSolicitadoButtonModal() {
        let constraint = [
            solicitadoButtonModal.widthAnchor.constraint(equalToConstant: 106),
            solicitadoButtonModal.heightAnchor.constraint(equalToConstant: 38),
            solicitadoButtonModal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 135),
            solicitadoButtonModal.topAnchor.constraint(equalTo: topAnchor, constant: 733)
        ]
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}
