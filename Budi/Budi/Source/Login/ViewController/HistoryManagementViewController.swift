//
//  HistoryManagementViewController.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/24.
//

import UIKit

class HistoryManagementViewController: UIViewController {
    weak var coordinator: LoginCoordinator?

    @IBOutlet weak var blackLineView: UIView!
    @IBOutlet weak var progressView: ProgressView!
    @IBOutlet weak var projectListView: HistoryTypeView!
    @IBOutlet weak var portfolioView: HistoryTypeView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addBackButton()
        configureLayout()
    }

    private func configureLayout() {
        progressView.changeColor(index: 3)
        projectListView.configureTextLabel("프로젝트 이력")
        portfolioView.configureTextLabel("포트폴리오")
    }
}
