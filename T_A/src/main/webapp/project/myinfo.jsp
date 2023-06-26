<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="ctxPath"  value="${pageContext.request.contextPath }" />
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!--부트 아이콘 -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
   <style>
    div{
        font-family: 'Noto Sans KR', sans-serif;
    }
    ul, ol, li { list-style: none; }

    a {
        text-decoration: none;
        color: #111;
    }
   
</style>
 <div class="swiper-slide pop2 show" data-time-start="2023/02/27 00:00:00" data-time-end="2025/03/01 23:59:59" style="background: #000000 ;">
  <a href="#none" ><span style="color: #ffffff; "class="d-flex justify-content-center">신규회원 무료배송 + 1만원 쿠폰팩</span></a></div>
<div class="main">
    <div >
        <nav class=" navbar navbar-expand-lg bg-body-tertiary">
            <div class="alert">
            <img src="https://theforment.com/web/upload/images/logo_header_main.svg"  href="shoppingmall.html">
            </div>
            <div class="container-fluid">
              <a class="navbar-brand" href="#"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse row" id="navbarNav">
                <div class="col-8">
                <ul class="navbar-nav ">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     전제품보기
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">PRDUCT</a></li>
                      <li><a class="dropdown-item" href="#">전체</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">베스트</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">선물제안</a>
                  </li>
                 
                  <li class="nav-item">
                    <a class="nav-link active" href="#">정기배송</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="#">브랜드</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="#">cs센터</a>
                  </li>
                </ul>
              </div>
              <div class="col-3">
                   <ul class="navbar-nav login ">
                    <li class="nav-item">
                      <a class="nav-link " href="${ctxPath}/order/logout.do">LOGOUT</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="">MYINFO</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link " href="#">ORDER</a>
                    </li>
                    <li class="nav-item ">
                      <a class="nav-link " href="#">CART</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="#">MYPAGE</a>
                      </li>
                    <li class="nav-item">
                      <a class="nav-link m-1" href="#"><i class="bi bi-search"></i></a>
                    </li>
                   </ul>
                </div>
              </div>
            </div>
          </nav>
            </div>
        
            <div class="main">
                <div class="container">
                    <div class="m-3 p-3">
                    <h4>회원정보 수정</h4>
                </div>
                    <div class="d-flex  p-3 bg-light">
                    <img src="https://img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif">
                    <div class="d-flex align-content-center">
                    <span style="font-size: 15px;" class="d-flex text-center">저희 쇼핑몰을 이용해주셔서 감사합니다.<strong>${loginInfo}님은</strong> <strong>[웰컴]</strong>회원이십니다.</span>
                 </div>
                </div>
           
           
              <!-- 테이블-->
            <div class="row">
            <div class="info col-10 mt-3">
                 <span>회원 기본정보</span>
                </div>
            <div class="info col-2 mt-3 text-end">
           <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
           <span>필수 입력사항</span>
        </div>
    </div>
        <div class="container w-100">
            <form action="#" method="post" class="" >
                </div>
                <div class=" form">
                <table class="table table-bordered">
                    
                    <tbody>
                        <tr>
                        <th scope="row">
                            <span class="m-2 mt-auto">아이디</span>
                            <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                        </th>
                        
                        <td>
                            <input type="user_id" name="user_id" id="user_id" value="">
                            <span>(영문소문자/숫자,4~16자)</span>
                        </td>
                    </tr>
                    <tr>
                    <th scope="row">
                        <span class="m-2">비밀번호</span>
                        <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                    </th>
                    <td>
                        <input type="password" name="user_pwd" id="user_pwd" value="">
                        <span>(영문 대소문자/숫자/특수문자 중2가지 이상 조합,8자~16자)</span>
                    </td>
                </tr>

                <tr>
                <th scope="row">
                    <span class="m-2">비밀번호확인</span> 
                    <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                
                </th>
                <td>
                    <input type="password" name="user_pwd2" id="user_pwd2" value="">
                </td>
            </tr>

            <tr>
            <th scope="row">
                <span class="m-2">이름</span>
                <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
            </th>
            <td>
                <input type="user_name" name="user_name" id="user_name"value="">
            </td>

            <tr>
                <th scope="row">
                    <span class="m-2">주소</span>
                    <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                </th>
                <td>
                    <input type="adress" name="adress1" id="user_addr1"placeholder="readonly"label="주소">  <img src="https://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif"><br>  
                    <input type="adress"  class="mt-2"name="adress2" id="user_addr2" value="">    
                   기본주소<br>
                    <input type="adress" class="mt-2" name="adress3" id="user_addr3" value="">나머지주소(선택가능)
                </td>
        </tr>
        <tr>
            <th scope="row">
                <span class="m-2">휴대전화</span>
            <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
        </th>
        <td>
            <select id="mobile1" name="mobile1" fw-filter="isNumber" fw-label="휴대전화">
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>

            </select> -

            <input type="text" name="user_mobile2" id="user_mobile2" fw-filter="isNumber" maxlength="4" value type="text"> -
            <input type="text" name="user_mobile3" id="user_mobile3" fw-filter="isNumber" maxlength="4" value type="text" ><br>
            <input class="form-check-input" type="radio" name="radio1" id="radio1">수신함
         
            <input class="form-check-input" type="radio" name="radio2" id="radio2">수신안함
            

                <p style="font-size: 3%;">쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받을수 있습니다.</p>

        </td>
        </tr>
        <tr>
            <th scope="row">
                <span class="m-2">이메일</span>
                
            </th>
            <td>
                <input type="user_email" name="user_email" id="user_email"value=""><br>
                <div class="email_check">
                <input class="form-check-input" type="radio" name="radio1" id="radio3">수신함
            
                <input class="form-check-input" type="radio" name="radio2" id="radio4">수신안함
                

                    <p style="font-size: 3%;">쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받을수 있습니다.</p>
                </div>
            </td>
            </tr>
        </div>
               
                        <tr>
                        <th scope="row">
                            <span class="m-2 mt-auto">성별</span>
                            <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                        </th>
                        
                        <td>
                            <input class="form-check-input" type="radio" name="radio1" id="radio5">여자
            
                <input class="form-check-input" type="radio" name="radio2" id="radio6">남자
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <span class="m-2 mt-auto">생년월일</span>
                            <img src="https://img.echosting.cafe24.com/skin/base/common/ico_required.gif">
                        </th>
                        
                        <td>
                            <input type="date" name="user_br" id="user_br" value="">
                                    <span>(영문소문자/숫자,4~16자)</span>
                                </td>
                            </tr>
                      </tbody>
                   </table>
                  </div>
              </div>
              <div class="row">
              <div class="d-flex justify-content-center">
                <div class="col-3">
                <button type= "button" class="btn btn-outline-dark w-50" value="onClick">회원정보수정</button>
            </div>
                <div class="col-3">
            <button type= "button" class="btn btn-outline-secondary w-50" value="onClick">취소</button>
        </div>
        </div>   
    
        
                <!--주소-->
                <div class="and bg-light">
                    <div class="container ">
                    <div class="content ">
                        <div class=" p-5 ">
                            <img src="https://theforment.com/web/upload/images/logo_header_main.svg" alt="푸터로고">
                        <a href="#"><span class="m-3">회사소개</a></span>
                        <a href="#"><span class="m-3">서비스이용약관</a></span> 
                        <a href="#"><span class="m-3">개인정보처리방침</a></span>
                        <a href="#"><span class="m-3">전자금융거래약관 </a></span>

                      </div>
                  </div>
                  <div class="d-flex justify-content-between ">
                    <div class="container">
                        <p>
                            <strong>(주)FORMENT</strong>
                            <br>
                            부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)
                            <br>
                            대표이사 : 홍길동
                            <br>
                            사업자등록번호 : 220-81-83676 사업자정보확인
                            <br>
                            통신판매업신고 : 강남 10630호 Fax : 02-589-8842
                        </p>
                      </div>
                    
                      <div class="container">
                        <p>
                            <strong>고객센터</strong>
                            <br>
                            Tel : 1234-5678 (평일 09:00~18:00)
                            <br>
                            스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)
                            <br>
                            경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층
                            <br>
                            Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr
                            <br>
                        </p>
                      
                      </div>
                      </div>
                    </div>
                  </div>

    
</body>
</html>