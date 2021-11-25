//
//  HistoryTypeView.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/25.
//

import UIKit
import Combine
import CombineCocoa
class HistoryTypeView: UIView {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var historyTextLabel: UILabel!
    private var cancellables = Set<AnyCancellable>()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        setButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
        setButton()
    }

    private func initialize() {
        guard let view = Bundle.main.loadNibNamed("HistoryTypeView", owner: self, options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        addSubview(view)
    }

    func configureTextLabel(_ text: String) {
        historyTextLabel.text = text
    }

    func setButton() {
        plusButton.tapPublisher
            .receive(on: DispatchQueue.main)
            .sink { _ in
                print("눌림")
            }
            .store(in: &cancellables)
    }

}
