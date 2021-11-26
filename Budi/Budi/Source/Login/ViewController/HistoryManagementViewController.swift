//
//  HistoryManagementViewController.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/24.
//

import UIKit
import CombineCocoa
import Combine
class HistoryManagementViewController: UIViewController {
    weak var coordinator: LoginCoordinator?
    private let viewModel = HistoryManagementViewModel()

    private var cancellables = Set<AnyCancellable>()

    @IBOutlet weak var blackLineView: UIView!
    @IBOutlet weak var progressView: ProgressView!
    @IBOutlet weak var projectListView: HistoryTypeView!
    @IBOutlet weak var portfolioView: HistoryTypeView!
    @IBOutlet weak var nextButton: UIButton!

    @IBOutlet weak var addWorkHistoryButton: UIButton!
    @IBOutlet weak var addProjectListButton: UIButton!
    @IBOutlet weak var addPortfolioButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addBackButton()
        configureLayout()
        setBindButton()
        nextButton.isEnabled = false
    }

    private func setBindButton() {
        addWorkHistoryButton.tapPublisher
            .receive(on: DispatchQueue.main)
            .sink {
                self.coordinator?.showHistoryWriteViewController(1)
            }
            .store(in: &cancellables)

        addProjectListButton.tapPublisher
            .receive(on: DispatchQueue.main)
            .sink {
                self.coordinator?.showHistoryWriteViewController(2)
            }
            .store(in: &cancellables)
    }

    private func configureLayout() {
        progressView.changeColor(index: 3)
        projectListView.configureTextLabel("프로젝트 이력")
        portfolioView.configureTextLabel("포트폴리오")
    }
}
