<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="body" class="container-fluid my-5">
    <div class="container px-5">
        <!-- topbar -->
        <div class="d-flex justify-content-between my-3">
            <span class="position-relative fs-3 d-inline-flex justify-content-start align-items-center clearfix" data-select="unselect">
                채팅
                <span class="float-end">
                    <a href="#" class="text-secondary py-1 mx-2 d-flex align-items-center" style="text-decoration: none;">
                        <i id="arrow" class="fas fa-chevron-up fs-6 toggleArrow" data-method="reverse" data-for="#popup"></i>
                    </a>
                </span>
                <div id="popup" class="fs-6 position-absolute top-100 start-0 p-2 bg-white list-group-flush shadow border" style="z-index:5; width: 12rem; transform: scale(0.8) translate(-15%,-15%); display: none;">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">최신 메시지 순</li>
                        <li class="list-group-item">안 읽은 메시지 순</li>
                        <li class="list-group-item">즐겨찾기 순</li>
                    </ul>
                    <div class="card-footer">
                        모두 읽음 처리
                    </div>
                </div>
            </span>
            <span class="row row-cols-3 g-3 justify-content-end align-content-center">
                <div class="d-flex justify-content-end g-3 position-relative">
                    <input class="d-inline-block form-control position-absolute rounded-pill" type="text" data-search="collapse" style="right: 70px;" required="">
                <a href="#" id="search" class="px-2"><i class="fas fa-search"></i></a>
                <a href="#" class="px-2"><i class="far fa-comments"></i></a>
                <a href="#" class="px-2"><i class="fas fa-comment-medical"></i></a>
                </div>
            </span>
        </div>
        <!-- topbar -->

        <div id="for">
        <!-- Card -->
        <div class="d-flex flex-row g-2 shadow-sm rounded-3 p-3 my-2 border border-light" data-select="unselect" data-type="room">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-secondary" src="../resources/img/profile.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>곰돌이</b>
                    <!-- 상태글 -->
                    <span class="text-muted">내일 오후 2시에 뵙겠습니다.</span>
                </div>
                <!-- <div class="p-2 d-flex align-content-center"> -->
                <div class="d-flex flex-column justify-content-between align-items-end fs-08">
                    <span class="py-1 fs-08 text-muted">2021-06-03</span>
                    <span class="badge bg-danger p-0 px-1 text-center rounded-pill lh-base" data-type="rec">3</span>
                </div>
                <!-- </div> -->
            </div>
        </div>
        <!-- Card -->
        </div>

        <!-- card list -->
        <div id="list"></div>
        <!-- card list -->

    </div>
</main>