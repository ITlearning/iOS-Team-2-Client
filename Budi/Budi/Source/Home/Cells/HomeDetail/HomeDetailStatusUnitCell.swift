//
//  HomeDetailStatusUnitCell.swift
//  Budi
//
//  Created by leeesangheee on 2021/12/06.
//

import UIKit

final class HomeDetailStatusUnitCell: UICollectionViewCell {
    
    @IBOutlet weak var positionNameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(_ recruitingStatusResponse: RecruitingStatusResponse) {
        positionNameLabel.text = recruitingStatusResponse.positionName
        countLabel.text = recruitingStatusResponse.status
    }
}
