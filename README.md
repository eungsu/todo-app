# todo-app
- model2 개발 실습용 프로젝트다.

## 주요 기능
- 로그인
- 로그아웃
- 신규 할일 등록
- 할일 목록 조회
- 할일 상세정보 조회
- 할일 삭제
- 할일 수정
- 할일 완료처리

## 테이블 스키마와 샘플 데이터
```sql
  CREATE TABLE MODEL2_TODO_CATEGORIES (
    TODO_CATEGORY_ID CHAR(6) PRIMARY KEY,
    TODO_CATEGORY_NAME VARCHAR2(100) NOT NULL
  );
  
  CREATE TABLE MODEL2_TODO_USERS (
    USER_ID VARCHAR2(100) PRIMARY KEY,
    USER_EMAIL VARCHAR2(255) NOT NULL UNIQUE,
    USER_PASSWORD VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(100) NOT NULL,
    USER_TEL VARCHAR2(20) NOT NULL
  );
  
  CREATE TABLE MODEL2_TODOS (
    TODO_NO NUMBER(5) PRIMARY KEY,  -- 할일 번호
    TODO_CATEGORY_ID CHAR(6) NOT NULL REFERENCES MODEL2_TODO_CATEGORIES(TODO_CATEGORY_ID), -- 카테고리
    TODO_TITLE VARCHAR2(255) NOT NULL, -- 할일 제목
    TODO_DUE_DATE DATE NOT NULL, -- 처리 예정일
    TODO_DESCRIPTION VARCHAR2(2000) NOT NULL, -- 할일 내용
    TODO_RESULT VARCHAR2(2000), -- 처리결과
    TODO_COMPLETED CHAR(1) DEFAULT 'N', -- 처리완료 여부
    TODO_COMPLETED_DATE DATE, -- 처리완료일
    TODO_UPDATED_DATE DATE, -- 최종 수정일
    TODO_CREATED_DATE DATE DEFAULT SYSDATE, -- 등록일
    TODO_USER_ID VARCHAR2(100) NOT NULL REFERENCES MODEL2_TODO_USERS (USER_ID) -- 등록자 아이디
  );
  
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_01', '사용자 인터뷰');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_02', '요구사항 분석');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_03', '화면 설계');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_04', '화면 구현');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_05', '데이터베이스 모델링');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_06', '데이터베이스 구현');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_07', '아키텍처 설계');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_08', '인터페이스 설계');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_09', '공통모듈 구현');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_10', '서버구현');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_11', '단위테스트 및 통합테스트');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_12', '빌드 및 배포');
  INSERT INTO MODEL2_TODO_CATEGORIES VALUES('CAT_13', '운영 및 유지보수');
  
  COMMIT;
```
