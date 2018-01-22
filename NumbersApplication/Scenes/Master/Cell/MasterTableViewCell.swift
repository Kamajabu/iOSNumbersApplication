//
//  MasterTableViewCell.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright © 2018 Kamajabu. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        if (isSelected) {
            self.backgroundColor = .red
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if(selected) {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = UIColor.blue.withAlphaComponent(0)
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.backgroundColor = .blue
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor.blue.withAlphaComponent(0)
    }

    func setCellImage(cellImage: String) {
        self.cellImage.sd_setImage(with: URL(string: cellImage))
    }

    func setTitleLabel(title: String) {
        self.titleLabel.text = title
    }
}
