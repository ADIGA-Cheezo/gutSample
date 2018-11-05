//
//  testTableViewCell.swift
//  gitraining
//
//  Created by Seif Ghotouk on 11/5/18.
//  Copyright © 2018 Seif Ghotouk. All rights reserved.
//

import UIKit



class testTableViewCell: UITableViewCell, AddToCartDelegate {
    func addToCart() {
        
    }
    
    private var label : UILabel!
    weak var delegate: AddToCartDelegate!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        delegate = self
        
    }
    
    private func setupLabel(){
        label = UILabel()
        label.text = "test label should be located in center of view"
        contentView.addSubview(label)
        setupConstraints()
    }
    
    private func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.widthAnchor.constraint(lessThanOrEqualToConstant: 200.0),
            label.heightAnchor.constraint(lessThanOrEqualToConstant: 50.0)
            ])
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
