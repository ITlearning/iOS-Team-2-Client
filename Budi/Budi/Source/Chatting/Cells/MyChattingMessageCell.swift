//
//  MyChattingMessageCell.swift
//  Budi
//
//  Created by leeesangheee on 2021/11/04.
//

import UIKit

class MyChattingMessageCell: UICollectionViewCell {
    
    @IBOutlet private weak var messageLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureUI(_ message: ChatMessage) {
        messageLabel.text = message.text
        timeLabel.text = message.time
    }
}
