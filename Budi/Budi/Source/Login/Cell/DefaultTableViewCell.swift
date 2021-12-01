//
//  DefaultTableViewCell.swift
//  Budi
//
//  Created by 인병윤 on 2021/12/01.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {

    static let cellId = "DefaultTableViewCell"

    @IBOutlet weak var addButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
