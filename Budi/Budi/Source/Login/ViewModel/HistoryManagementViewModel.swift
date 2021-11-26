//
//  HistoryManagementViewModel.swift
//  Budi
//
//  Created by 인병윤 on 2021/11/26.
//

import UIKit
import Combine
import CombineCocoa

final class HistoryManagementViewModel: ViewModel {

    var cancellables = Set<AnyCancellable>()

    struct Action {
        var tag = PassthroughSubject<Int, Never>()
    }

    struct State {
        var selectIndex = CurrentValueSubject<Int, Never>(1)
    }

    let action = Action()
    let state = State()

    init() {
        configure()
    }

    private func configure() {
        action.tag
            .sink { tag in
                self.state.selectIndex.send(tag)
            }
            .store(in: &cancellables)
    }
}
