/*:
 # 스위프트 데이터란 ?
 
 SwiftData는 FrameWork다. 로컬 데이터 저장공간에 CRUD 기능을 구현할 수 있다.
 
 # 로컬 데이터 저장이란 ?
 
 데이터를 사용자 기기 iphone의 내부 저장소(메모리)에 해당하는 저장공간에 직접 저장하는 것입니다.
 이와 반대 사례는 <-> 외부 서버 사용사례.
 
 ## CoreData + SQLite
 앱의 샌드박스 내 Document 디렉터리
 
 ## 샌드박스란 ?
 
 ios앱의 자기만의 독립된 감옥(감금공간) 안에서만 동작하도록 만든 보안공간
 다른 앱의 파일이나 시스템 파일에 접근 못하게 가둬놓은 울타리
 
 ios 앱 -> 디렉토리 구조가 아이폰안에 생성
 SwiftData는 Documents 폴더에 SQLite 파일을 저장함.
 내 앱만 접근가능.
 
 ## 스키마 생성 (개발자 모델) 모델의 필드를 기본 저장소에 효율적으로 매핑
 
 SwiftData로 관리되는 객체는 추가작업X, 필요할 때 데이터베이스에서 가져와서 자동저장 ModelContext API를 사용해서 모두제어
 
 CoreData말고 DataStore 프로토콜 사용해서 고유한 영속성 레이어를 구현
 SwiftData API을 JSON 파일부터 가능
 
 
 라이브데이터 제공 ,@Query 제공 / Cloud Kit 동기화
 
 ## ModelContext란 ?
 
 DB 건드릴때 작업공간.
 */
