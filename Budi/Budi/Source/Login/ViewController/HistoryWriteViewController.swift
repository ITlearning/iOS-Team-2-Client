//
//  HistoryWriteViewController.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/25.
//

import UIKit
import CombineCocoa
import Combine
class HistoryWriteViewController: UIViewController {

    weak var coordinator: LoginCoordinator?
    private var cancellables = Set<AnyCancellable>()
    @IBOutlet weak var partNameTypingView: HistorySingleWriteView!
    @IBOutlet weak var companyNameTypingView: HistorySingleWriteView!

    private let doneButton: UIButton = {
        let button = UIButton()
        button.setTitle("저장", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addBackButton()
        configureLayout()
        setButtonAction()
    }

    private func setButtonAction() {
        doneButton.tapPublisher
            .receive(on: DispatchQueue.main)
            .sink {
                print(self.companyNameTypingView.singleTextField.text ?? "")
                print(self.partNameTypingView.singleTextField.text ?? "")
                self.navigationController?.popViewController(animated: true)
            }
            .store(in: &cancellables)
    }

    private func configureLayout() {
        partNameTypingView.configureText(title: "부서명/직책", placeHolder: "부서명/직책을 입력하세요")

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: doneButton)

    }

}
