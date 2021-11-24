//
//  SpacingDarkLineView.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/06.
//

import UIKit

class SpacingDarkLineView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        self.alpha = 0.04
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor.black
        self.alpha = 0.04
    }
}
