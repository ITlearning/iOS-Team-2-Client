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
    private(set) var viewModel = HistoryManagementViewModel()
    weak var coordinator: LoginCoordinator?
    private var cancellables = Set<AnyCancellable>()
    @IBOutlet weak var firstTypingView: HistorySingleWriteView!
    @IBOutlet weak var datePickerView: HistoryDateWriteView!
    @IBOutlet weak var secondTypingView: HistorySingleWriteView!

    private let doneButton: UIButton = {
        let button = UIButton()
        button.setTitle("저장", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)

        return button
    }()

    override func viewWillAppear(_ animated: Bool) {
        viewModel.state.selectIndex
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { tag in
                if tag == 2 {
                    self.firstTypingView.configureText(title: "프로젝트명", placeHolder: "프로젝트 이름을 입력하세요")
                    self.secondTypingView.configureText(title: "직무/역할", placeHolder: "참여한 역할을 입력하세요")
                    self.datePickerView.checkButtonRemove()
                }
            })
            .store(in: &cancellables)
    }

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
                print(self.firstTypingView.singleTextField.text ?? "")
                print(self.secondTypingView.singleTextField.text ?? "")
                self.navigationController?.popViewController(animated: true)
            }
            .store(in: &cancellables)
    }

    private func configureLayout() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: doneButton)
    }

}
