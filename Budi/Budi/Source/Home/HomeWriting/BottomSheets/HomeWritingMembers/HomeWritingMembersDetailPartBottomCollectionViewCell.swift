//
//  HomeWritingMembersDetailPartBottomCollectionViewCell.swift
//  Budi
//
//  Created by leeesangheee on 2021/12/15.
//

import UIKit

final class HomeWritingMembersDetailPartBottomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var label: UILabel!
    
    var isPartSelected: Bool = false {
        didSet {
            isPartSelected ? configureSelectedUI() : configureDeselectedUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureUI(_ position: String) {
        label.text = position
    }
    
    func configureSelectedUI() {
        containerView.backgroundColor = .primarySub
        containerView.borderColor = .primary
        label.textColor = .primary
    }
    
    func configureDeselectedUI() {
        containerView.backgroundColor = .white
        containerView.borderColor = .border
        label.textColor = .textHigh
    }
}
