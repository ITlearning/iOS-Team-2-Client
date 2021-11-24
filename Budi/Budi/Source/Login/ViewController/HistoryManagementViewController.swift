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

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }

    private func configureLayout() {
        progressView.changeColor(index: 3)
    }
}
