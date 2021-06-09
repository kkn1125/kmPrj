<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<main id="body" class="container-fluid pt-5 d-flex flex-column justify-content-center align-items-center bg-secondary h-100vh">
	<div style="color: lightpink;" data-select="unselect"><i class="far fa-kiss-wink-heart fa-10x"></i></div>
    <div class="container p-5">
        <form class="col-sm-12 col-md-10 col-lg-8 col-xl-6 mx-auto" action="#" name="login">
            <div class="input-group">
                <input type="text" name="email" class="form-control" list="email">
                <datalist id="email">
                    <option value="chaplet01@gmail.com"></option>
                </datalist>
            </div>
            <div>
                <input type="password" name="password" class="form-control">
            </div>
            <div class="my-3">
                <input type="submit" value="로그인" class="btn btn-outline-light w-100">
            </div>
            <div class="form-check">
                <input type="checkbox" name="autoLogin" id="autoLogin" class="form-check-input">
                <label class="form-check-label" for="autoLogin">자동 로그인</label>
                <span data-bs-toggle="tooltip" data-bs-placement="bottom" title="
                PC버전 실행시 잠금모드로 자동로그인됩니다. 로그인 후 설정에서 잠금모드 없는 자동로그인으로 변경할 수 있습니다.
                "><i class="far fa-question-circle"></i></span>
            </div>
            <div class="container d-flex flex-column flex-lg-row justify-content-center align-items-center">
                <a href="#" class="nav-link text-dark d-md-block">카카오계정 찾기</a>
                <span class="px-2 nav-link text-muted d-none d-lg-inline">|</span>
                <a href="#" class="nav-link text-dark d-md-block">비밀번호 재설정</a>
            </div>
        </form>
    </div>
</main>