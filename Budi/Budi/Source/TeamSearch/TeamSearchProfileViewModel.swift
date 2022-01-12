//
//  TeamSearchProfileViewModel.swift
//  Budi
//
//  Created by 최동규 on 2022/01/12.
//

import Combine
import Moya

final class TeamSearchProfileViewModel: ViewModel {
    struct Action {
        let fetch = PassthroughSubject<Void, Never>()
        let refresh = PassthroughSubject<Void, Never>()
    }

    struct State {
        let sections = CurrentValueSubject<[TeamSearchPositionSection], Never>([])
    }

    private var cancellables = Set<AnyCancellable>()
    private let provider = MoyaProvider<MemberTarget>()

    let action = Action()
    let state = State()

    init() {
//        action.fetch
//            .sink(receiveValue: { [weak self] _ in
//                guard let self = self else { return }
//                Publishers.CombineLatest3(self.provider
//                                            .requestPublisher(.memberList(postion: .developer, page: 0, size: 4))
//                                            .map(APIResponse<PageContainer<[SearchTeamMember]>>.self)
//                                            .map(\.data.content), self.provider
//                                            .requestPublisher(.memberList(postion: .designer, page: 0, size: 4))
//                                            .map(APIResponse<PageContainer<[SearchTeamMember]>>.self)
//                                            .map(\.data.content), self.provider
//                                            .requestPublisher(.memberList(postion: .productManager, page: 0, size: 4))
//                                            .map(APIResponse<PageContainer<[SearchTeamMember]>>.self)
//                                            .map(\.data.content))
//                    .sink(receiveCompletion: { [weak self] completion in
//                        guard case let .failure(error) = completion else { return }
//                        self?.state.sections.send([])
//                        print(error)
//                    }, receiveValue: { [weak self] (developerMembers, designerMembers, productMembers) in
//                        guard let self = self else { return }
//                        self.state.sections.send([.init(position: .developer, items: developerMembers), .init(position: .designer, items: designerMembers), .init(position: .productManager, items: productMembers)])
//                    }).store(in: &self.cancellables)
//            })
//            .store(in: &cancellables)
//
//        action.fetch.send(())
//
//        action.refresh
//            .sink(receiveValue: { [weak self] _ in
//                self?.action.fetch.send(())
//            })
//            .store(in: &cancellables)
    }
}
