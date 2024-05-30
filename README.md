team5_v2sbm3c_git
1) Project Subject
MySQL 기반 모델링을 토대로 Spring Boot 기반 동작하는 OpenApI를 활용한 영화 추천 및 굿즈 판매 Website를 제작한다.

2) Main Function
● 테이블은 총 16개로 '회원관리', '굿즈', '입고,출고,재', '회원', '장바구니', '카테고리','결제내역','상품클릭','고객센터','1:1 문의 댓글 ','주소목록','영화댓글','자주찾는질문','공지사항'이 존재한다.

● '굿즈' 테이블은 굿즈 상품과 관련된 데이터 생성 시능을제공. 카테고리 테이블의 하위테이브로 참조관계를 가진다.  

● '회원' 테이블은 회원가입 및 로그인 기능을 제공하며 이름, 아이디, 패스워드, 이메일, 주소 등의 데이터를 입력할 수있다.

● 테이블 간의 참조관계 및 제약조건 설정을 통해 무결성을 유지시켰다.

● index 화면과 각각의 View는 외부 템플릿,BootStrap과 css를 활용해 UI의 접근성을 상승시켰다.

● '굿즈'와 '회원' 등록 및 수정 삭제 시 Spring Controller와 Ajax 통신, jQuery를 사용해 메모리 사용을 절감하였다.

● '회원' 레코드 등록 시 id 및 이메일 등에 대한 유효성 검사를 위해 Ajax 통신과 jQuery가 사용됐다.

3) Technology
O/S : Windows 10

Language : JAVA (JDK1.8.0_281)

DBMS : MySql

Web Application Server : 

Framework : Spring Boot 2.4.3, Mybatis 3.4.1, BootStrap 3.4.1, jQuery

Technology : JDBC, HTML5, CSS, EL, Javascript, JSON, JSP, Ajax

Tools : STS 4.6.0, Amateras UML, Amateras ERD, SQLdeveloper
