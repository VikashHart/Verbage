//
//  CommentCell.swift
//  Verbage
//
//  Created by C4Q on 5/2/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    // Insert UI Objects here.
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: "Comment Cell")
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = UIColor.white
        setupViews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func setupViews() {
        
    }
    
    // All Constraints Go Here.
    
//    private func /*Insert Func Name here*/() {
//    addSubview()
//    NSLayoutConstraint.activate([
//    ])
//    }
}

