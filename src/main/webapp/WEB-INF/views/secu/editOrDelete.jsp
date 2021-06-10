<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <div class="container">
        <h2>회원 가입</h2>
        <p>회원 정보를 입력해주세요</p>
        <form>
            <div class="form-group">
                <label for="id">ID :</label>
                <input type="text" id="id" name="user_id" placeholder="ID">
                <input type="button" value="ID 중복 확인">
            </div>
            <div class="form-group">
                <label for="pw">비밀번호 : </label>
                <input type="password" id="pw" name="user_pw" placeholder="비밀번호">
            </div>
            <div class="form-group">
                <label for="user_email">이메일 : </label>
                <input type="email" id="user_email" name="user_email">
            </div>
            <div class="form-group">
                <label for="phone">전화 번호 : </label>
                <input type="text" id="phone" name="user_phone" placeholder="123-4567-8901형식으로 입력하세요">
            <form>
            <div class="form-group">
                <label for="carrier">carrier : </label>
                <input type="text" id="carrier" name="user_carrier">
            </div>
            <div class="form-group">
                <label for="bday">생일 : </label>
                <input type="text" id="bday" name="user_bday">
            </div>
            <div class="form-group custom-control custom-radio custom-control-inline">
                성별 : 
                <input type="radio" class="custom-control-input" id="male" name="user_gender">
                <label class="custom-control-label" for="male">남성</label>
                <input type="radio" class="custom-control-input" id="female" name="user_gender">
                <label class="custom-control-label" for="female">여성</label>
                <input type="radio" class="custom-control-input" id="prefer not to say" name="user_gender">
                <label class="custom-control-label" for="prefer not to say">밝히고 싶지 않음</label>
            </div>
            <div class="form-group">
                <label for="addr">주소 : </label>
                <input type="text" id="addr" name="user_addr">
                <input type="button" value="도로명 주소 검색">
            </div>
            <div class="form-group">
                <label for="zip">우편번호 : </label>
                <input type="text" id="zip" name="user_zip">
                <input type="button" value="우편번호 검색">
            </div>
            <div class="form-group">
                <label for="">프로필 사진 :</label>
                <input type="text" id="" name="">
            </div>
            <div class="form-group">
                <label for="comment">소개 : </label><br>
                <textarea id="comment" rows="5" name="user_comment">
            </div>
            <input type="submit" class="btn btn-success" value="회원 정보 수정">
            <input type="button" class="btn btn-warning" value="회원 탈퇴하기">
        </form>
    </div>