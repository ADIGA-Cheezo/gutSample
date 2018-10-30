//
//  TableViewCell.swift
//  gitraining
//
//  Created by Seif Ghotouk on 10/30/18.
//  Copyright © 2018 Seif Ghotouk. All rights reserved.
//

import UIKit

@objc protocol AddToCartDelegate: class {
    func addToCart()
    @objc optional func functionality2()
}

class TableViewCell: UITableViewCell, AddToCartDelegate {
    func addToCart() {
        
    }
    
    
    private var btn: UIButton!
    weak var delegate: AddToCartDelegate!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupButton()
        delegate = self
    }
    
    private func setupButton() {
        btn = UIButton()
        btn.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
        btn.setTitle("add to cart", for: .normal)
        contentView.addSubview(btn)
        setupConstraints()
    }
    
    private func setupConstraints() {
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            btn.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            btn.widthAnchor.constraint(equalToConstant: 100),
            btn.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    @objc func btnTapped() {
        delegate.addToCart()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
