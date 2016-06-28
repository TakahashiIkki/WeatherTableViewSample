//
//  CustomTableViewCell.swift
//  WetherTableViewSample
//
//  Created by 一騎高橋 on 2016/06/29.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myTitleLabel: UILabel!
    @IBOutlet weak var myDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(imageName: String, titleText: String, DescriptionText: String) {
        self.myImageView.image = UIImage(named: imageName)
        self.myTitleLabel.text = titleText
        self.myDescriptionLabel.text = DescriptionText
    }
}
