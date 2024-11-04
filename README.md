# BUDi

![Untitled](https://github.com/ITlearning/iOS-Team-2-Client/assets/11778058/a22ee0c8-6475-4a50-afbd-d81a9a001608)

# 📌 Topic

- **대학생 연합 동아리 'YAPP' 프로젝트**
- 기획자, 개발자, 디자이너들을 위한 팀 빌딩 플랫폼 앱
- **단순한 팀빌딩이 아닌, 실력 향상을 중점으로 구성된 앱**
- **프로젝트 후, 상호평가를 통해 레벨업을 할 수 있는 시스템**

# 🤔 Summary

세상에는 많은 팀 빌딩 플랫폼이 존재하지만, 여러가지 문제가 존재합니다. 가령 **팀원들간의 소통 불가**로 프로젝트가 진행되지 않았다거나, **팀원들의 능력치를 확인할 수 있는 방법이 없기 때문**에 팀을 꾸릴 때에 고민이 들기도 합니다. 또한 **팀원들의 신원보증** 또한 되지 않아 어떤 일이 일어날지 모릅니다. 따라서 이러한 문제들을 해결해 보고자 BUDi 를 만들어보았습니다.

# 🌟 Key Function

- 회원가입 시 **네이버 계정 로그인**을 통해 **간편가입**을 할 수 있음
- 능력치를 **새싹, 묘목, 나무, 숲으로 레벨화**를 시켜 각 기준에 도달했을 시 **레벨업을 시켜주는 시스템을 적용**
- 프로젝트 **이력 및 팀원 평가 결과**로 팀원의 **신원보증이 가능**
- 기술 스택을 **해시태그**로 표시하여 **직관적으로 스택을 확인**할 수 있음

# 🛠 Tech Stack
`Swift`, `Kingfisher`, `Firebase`, `Alamofire`, `Moya` , `SwiftLint` , `SnapKit` , `Combine` , `CombineCocoa`

# ⚙️ Architecture

- `MVVM`

# 🧑🏻‍💻 Team

- 기획자 1명
- 디자이너 1명
- 백엔드 2명
- iOS 앱 개발자 3명

# ✋🏻 Part

- **iOS 앱 로그인**
- **팀원 찾기**

# 📝 Learned

- `Combine` 을 사용하다보니, `MVVM` 패턴과 `Subscribe` 의 개념을 공부해볼 수 있었음
- 화면 전환 코드를 모을 수 있는 `Coordinator` 를 사용해보며, **화면 전환을 효율적**으로 할 수 있다는 것을 알게 되었음
- Naver API를 사용했을 때, Alamofire를 사용하고 시뮬레이터를 돌릴 수 없는 문제가 생김. 따라서 **Combine의 Publisher 중 하나인** `dataTaskPublisher` 를 사용하여 Parsing 을 해볼 수 있었음.
- API Parsing의 **데이터 규격을 `Generic` 으로 정의해 받으면서**, `Generic` 을 사용해볼 수 있었음
- `SwiftLint` 를 사용해보며, **코드 컨벤션의 중요성**에 대해 알게 되었음

# 📷 Screenshot
![무제 5 001](https://github.com/ITlearning/iOS-Team-2-Client/assets/11778058/e624d40d-ba8f-4c16-82bc-1d8475522349)


