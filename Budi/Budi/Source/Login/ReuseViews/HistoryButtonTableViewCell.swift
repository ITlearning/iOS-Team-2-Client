//
//  HistoryButtonTableViewCell.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/29.
//

import UIKit
import Combine

final class HistoryButtonTableViewCell: UITableViewCell {

    var cancellables = Set<AnyCancellable>()

    override func prepareForReuse() {
        super.prepareForReuse()
        cancellables.removeAll()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
