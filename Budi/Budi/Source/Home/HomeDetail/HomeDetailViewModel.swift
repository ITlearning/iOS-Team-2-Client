//
//  HomeDetailViewModel.swift
//  Budi
//
//  Created by leeesangheee on 2021/11/25.
//

import Combine
import Foundation
import Moya

final class HomeDetailViewModel: ViewModel {

    struct Action {
        let fetch = PassthroughSubject<Void, Never>()
        let refresh = PassthroughSubject<Void, Never>()
    }

    struct State {
        let post = CurrentValueSubject<Post?, Never>(nil)
        let teamMembers = CurrentValueSubject<[TeamMember], Never>([])
        let recruitingStatuses = CurrentValueSubject<[RecruitingStatus], Never>([])
    }

    let action = Action()
    let state = State()
    private var cancellables = Set<AnyCancellable>()
    private let provider = MoyaProvider<BudiTarget>()

    init() {
        action.fetch
            .sink(receiveValue: { [weak self] _ in
                guard let self = self else { return }

                self.provider
                    .requestPublisher(.post(id: 11))
                    .map(APIResponse<Post>.self)
                    .map(\.data)
                    .sink(receiveCompletion: { _ in
                    }, receiveValue: { [weak self] post in
                        self?.state.post.send(post)
                    })
                    .store(in: &self.cancellables)
                
                self.provider
                    .requestPublisher(.teamMembers(id: 11))
                    .map(APIResponse<TeamMemberContainer>.self)
                    .map(\.data)
                    .sink(receiveCompletion: { _ in
                    }, receiveValue: { [weak self] container in
                        self?.state.teamMembers.send(container.teamMembers)
                    })
                    .store(in: &self.cancellables)
                
                self.provider
                    .requestPublisher(.recruitingStatuses(id: 11))
                    .map(APIResponse<RecruitingStatusContainer>.self)
                    .map(\.data)
                    .sink(receiveCompletion: { _ in
                    }, receiveValue: { [weak self] container in
                        self?.state.recruitingStatuses.send(container.recruitingStatuses)
                    })
                    .store(in: &self.cancellables)
            }).store(in: &cancellables)

        action.refresh
            .sink { [weak self] _ in
                self?.action.fetch.send(())
            }.store(in: &cancellables)

        action.fetch.send(())
    }
}
