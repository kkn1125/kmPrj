<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="body" class="container-fluid my-5">
    <div class="container px-5">
        <!-- topbar -->
        <div class="d-flex justify-content-between my-3">
            <span class="fs-3" data-select="unselect">친구</span>
            <span class="row row-cols-2 g-3 justify-content-end align-content-center w-50">
                <div class="d-flex justify-content-end g-3 position-relative">
                    <input class="d-inline-block form-control position-absolute rounded-pill" type="text" data-search="collapse">
                    <a href="#" id="search" class="px-2">
                        <i class="fas fa-search"></i>
                    </a>
                    <a href="#" class="px-2">
                        <i class="fas fa-user-plus"></i>
                    </a>
                </div>
            </span>
        </div>
        <!-- topbar -->

        <div id="for">
        <!-- Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-secondary" src="/resources/img/profile.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>곰돌이</b>
                    <!-- 상태글 -->
                    <span class="text-muted">Lorem ipsum dolor sit amet.</span>
                </div>
                <div class="p-2 row align-content-center">
                    <span class="border border-info rounded-pill py-1 px-3 fs-08">testqwe</span>
                </div>
            </div>
        </div>
        <!-- Card -->
        </div>
        
        <hr>
        <!-- multi -->
        <div class="text-muted fs-07 my-2 clearfix" data-select="unselect">
            내 멀티 프로필
            <span class="float-end">
                <a class="text-secondary py-1 mx-2">
                    <i id="arrow" class="fas fa-chevron-down fs-6 toggleArrow" data-for="#multi"></i>
                </a>
            </span>
        </div>

        <div id="multi">
        <!-- Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-light" src="/resources/img/plus.png" alt="profile" style="opacity:0.3">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>친구별로 다른 프로필을 설정해보세요!</b>
                </div>
            </div>
        </div>
        <!-- Card -->
        </div>

        <hr>
        <!-- birth -->
        <div class="text-muted fs-07 my-2 clearfix" data-select="unselect">
            생일인 녀석들
            <!-- <span class="badge bg-light text-muted">256</span> -->
            <span class="float-end">
                <a class="text-secondary py-1 mx-2">
                    <i id="arrow" class="fas fa-chevron-down fs-6 toggleArrow" data-for="#birth"></i>
                </a>
            </span>
        </div>

        <div id="birth">
        <!-- badge Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-light" src="/resources/img/cake.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="fs-08 d-flex align-items-center">
                    <!-- nickname -->
                    <b>친구의 생일을 확인해보세요!</b>&nbsp;<div class="badge bg-secondary">3</div>
                </div>
            </div>
        </div>
        <!-- badge Card -->
        </div>

        <hr>
        <!-- favorite -->
        <div class="text-muted fs-07 my-2 clearfix" data-select="unselect">
            즐겨찾기
            <!-- <span class="badge bg-light text-muted">256</span> -->
            <span class="float-end">
                <a class="text-secondary py-1 mx-2">
                    <i id="arrow" class="fas fa-chevron-down fs-6 toggleArrow" data-for="#favorite"></i>
                </a>
            </span>
        </div>

        <div id="favorite">
        <!-- Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-secondary" src="/resources/img/profile.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>곰돌이</b>
                    <!-- 상태글 -->
                    <span class="text-muted">Lorem ipsum dolor sit amet.</span>
                </div>
                <!-- <div class="p-2 row align-content-center">
                    <span class="border border-info rounded-pill py-1 px-3 fs-08">testqwe</span>
                </div> -->
            </div>
        </div>
        <!-- Card -->
        <!-- Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-secondary" src="/resources/img/profile.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>곰돌이</b>
                    <!-- 상태글 -->
                    <!-- <span class="text-muted">Lorem ipsum dolor sit amet.</span> -->
                </div>
                <div class="p-2 row align-content-center">
                    <span class="border border-info rounded-pill py-1 px-3 fs-08">testqwe</span>
                </div>
            </div>
        </div>
        <!-- Card -->
        </div>

        <hr>
        <!-- favorite -->
        <div class="text-muted fs-07 my-2 clearfix" data-select="unselect">
            채널
            <!-- <span class="badge bg-light text-muted">256</span> -->
            <span class="float-end">
                <a class="text-secondary py-1 mx-2">
                    <i id="arrow" class="fas fa-chevron-down fs-6 toggleArrow" data-for="#channel"></i>
                </a>
            </span>
        </div>
        <div id="channel">
        <!-- badge Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-light" src="/resources/img/plus.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="fs-08 d-flex align-items-center">
                    <!-- nickname -->
                    <b>민지 채널</b>&nbsp;<div class="badge bg-secondary">3</div>
                </div>
            </div>
        </div>
        <!-- badge Card -->
        <!-- badge Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="card">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-light" src="/resources/img/plus.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="fs-08 d-flex align-items-center">
                    <!-- nickname -->
                    <b>경남 채널</b>&nbsp;<div class="badge bg-secondary">3</div>
                </div>
            </div>
        </div>
        <!-- badge Card -->
        </div>

        <hr>
        <!-- friends -->
        <div class="text-muted fs-07 my-2 clearfix" data-select="unselect">친구
            <span class="badge bg-light text-muted">256</span>
            <span class="float-end">
                <a class="text-secondary py-1 mx-2">
                    <i id="arrow" class="fas fa-chevron-down fs-6 toggleArrow" data-for="#list"></i>
                </a>
            </span>
        </div>
        <!-- friends -->

        <!-- card list -->
        <div id="list"></div>
        <!-- card list -->

    </div>
</main>