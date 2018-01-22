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
        // Initialization code

        if (isSelected) {
            print("\(titleLabel.text ?? "") _ is selected")
            self.backgroundColor = .red
        }
    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if(selected) {
            print("\(titleLabel.text ?? "") selected")
            self.backgroundColor = .red

        } else {
            print("\(titleLabel.text ?? "") not selected")
            self.backgroundColor = UIColor.blue.withAlphaComponent(0)

        }

        // Configure the view for the selected state
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("touch began")

        self.backgroundColor = .blue

        //        self.setSelected(true, animated: true)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("touch ended")

        self.backgroundColor = UIColor.blue.withAlphaComponent(0)


    }

    func setCellImage(cellImage: String) {
        self.cellImage.sd_setImage(with: URL(string: cellImage))


    }

    func setTitleLabel(title: String) {
        self.titleLabel.text = title
    }

}
