# 📘 SwiftUI iOS Programming (개정증보판 기반 학습 레포)

이 저장소는 『SwiftUI 기반의 iOS 프로그래밍 (개정증보판)』을 기반으로 SwiftUI 학습을 진행한 내용을 정리한 레포지토리입니다. 각 챕터는 개별 브랜치로 분리되어 있으며, 브랜치명은 `chapter/{번호}-{주제}`로 통일되어 있습니다.

## 📚 Chapters

| 챕터 | 주제 | 브랜치 |
|------|------|--------|
| 16 | SwiftUI 개요 | `chapter/16-swiftui-intro` |
| 17 | SwiftUI 모드로 Xcode 이용하기 | `chapter/17-xcode-mode` |
| 18 | SwiftUI 아키텍처 | `chapter/18-architecture` |
| 19 | 기본 SwiftUI 프로젝트 분석 | `chapter/19-project-analysis` |
| 20 | 커스텀 뷰 생성 | `chapter/20-custom-view` |
| 21 | 스택과 프레임 | `chapter/21-stack-frame` |
| 22 | 상태 관리 | `chapter/22-state-observable-env` |
| 23 | 예제 튜토리얼 | `chapter/23-tutorial` |
| 24 | 구조화된 동시성 | `chapter/24-concurrency-overview` |
| 25 | 액터 소개 | `chapter/25-actor` |
| 26 | 생명 주기 이벤트 | `chapter/26-lifecycle` |
| ... | ... | ... |
| 64 | 앱 제출 | `chapter/64-appstore-submit` |


> 전체 학습 브랜치는 `main`에서 분기됩니다.


## 📝 커밋 컨벤션

| 타입 | 설명 |
|------|------|
| feat | 새로운 기능/챕터 구현 |
| fix | 버그 수정 |
| docs | 문서 관련 수정 |
| refactor | 리팩토링 |
| chore | 설정, 환경 구성 등 |
| test | 테스트 코드 작성 |

**예시**

feat: CH16 VStack, HStack 구현 #16

docs: README에 브랜치 전략 추가

fix: 뷰 간 거리 오류 수정

---

## 🔀 PR 템플릿

```md
## 📚 작업한 챕터
CHXX - 챕터 제목

## ✨ 주요 작업 내용
- 구현한 기능 또는 학습 포인트 정리
- 어려웠던 점/리마인드 내용

## 🔍 체크리스트
- [x] 빌드 성공
- [x] PR 템플릿 사용
- [ ] 관련 이슈 연결 여부 확인

## 📎 관련 이슈
Closes #XX

## 이슈 템플릿 (작성예시)

## 🧾 챕터명
CHXX - 챕터 제목

## ❓ 학습 내용 요약
- 어떤 내용을 학습했고, 어떤 실습을 진행할 것인지 작성

## 📌 작업 예정 내용
- [ ] 화면 구성
- [ ] 로직 구현
- [ ] 뷰 테스트