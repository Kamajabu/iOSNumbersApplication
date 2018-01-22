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
            setSelectedStyle()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if(selected) {
            setSelectedStyle()
        } else {
             setDefaultStyle()
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        setTouchedStyle()
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
         setDefaultStyle()
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        setDefaultStyle()
    }

    func setCellImage(cellImage: String) {
        self.cellImage.sd_setImage(with: URL(string: cellImage))
    }

    func setTitleLabel(title: String) {
        self.titleLabel.text = title
    }

    func setSelectedStyle() {
        self.backgroundColor = .red
        self.titleLabel.textColor = .white
    }

    func setTouchedStyle() {
        self.backgroundColor = .blue
        self.titleLabel.textColor = .white
    }

    func setDefaultStyle() {
        self.backgroundColor = UIColor.blue.withAlphaComponent(0)
        self.titleLabel.textColor = .black
    }
}
