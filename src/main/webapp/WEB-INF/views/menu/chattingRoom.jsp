<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="body" class="container-fluid my-5">
    <div class="container px-5">
        <!-- topbar -->
        <div class="d-flex flex-column g-2 shadow-lg rounded-3 p-3 my-2 border border-light" data-select="unselect">
            <span class="d-flex flex-row">
            <!-- profile img -->
            <span class="profileWrap p-0 shadow-sm">
                <img class="profile bg-secondary" src="../resources/img/profile.png" alt="profile">
            </span>
            <!-- 이름 및 상태글 -->
            <div class="w-100 d-flex row-wrap justify-content-between px-3">
                <div class="d-flex flex-column justify-content-center fs-08">
                    <!-- nickname -->
                    <b>곰돌이</b>
                    <!-- 상태글 -->
                    <span class="text-muted">
                        <a href="#"><i class="fas fa-archive text-secondary px-1"></i></a>
                        <a href="#"><i class="fas fa-search text-secondary px-1"></i></a>
                    </span>
                </div>
                <!-- <div class="p-2 d-flex align-content-center"> -->
                <div class="d-flex flex-column justify-content-between align-items-end fs-08">
                    <span class="py-1 fs-6 text-muted"><a href="/menu/chat" class="badge bg-info nav-link">&laquo; 채팅 목록</a></span>
                    <span class="text-center" data-type="icon">
                        <span><a href="#"><i class="fas fa-bell text-secondary px-1"></i></a></span>
                        <span><a href="#"><i class="fas fa-bars text-secondary px-1"></i></a></span>
                    </span>
                </div>
                <!-- </div> -->
            </div>
            </span>
            <hr>
            <div class="overflow-auto bg-light" data-type="message">

                <!-- profile card -->
                <div class="d-flex flex-column p-3 my-2" data-select="unselect">
                    <span class="d-flex flex-row">
                        <!-- profile img -->
                        <span class="profileWrap p-0 shadow-sm">
                            <img class="profile bg-secondary" src="../resources/img/profile.png" alt="profile">
                        </span>
                        <!-- 이름 및 상태글 -->
                        <div class="w-100 d-flex row-wrap px-3">
                            <div class="d-flex flex-row justify-content-start fs-08">
                                <div class="d-flex flex-column align-items-start w-75">
                                    <!-- nickname -->
                                    <b>곰돌이</b>
                                    <!-- 메세지 -->
                                    <span class="text-muted border border-secondary rounded-3 px-3 py-2 mt-1">
                                        가나다라 마바다 입니다.
                                    </span>
                                    <!-- 메세지 -->
                                    <span class="text-muted border border-secondary rounded-3 px-3 py-2 mt-1">
                                        나는야 곰도링
                                        많이 적으면 우찌 될까요/나는야 곰도링
                                        많이 적으면 우찌 될까요
                                    </span>
                                </div>
                                <div class="d-flex flex-column justify-content-end align-items-start px-2">
                                    <span class="text-main bg-secondary rounded-pill px-2">99</span>
                                    <span>오후 2:25</span>
                                </div>
                            </div>
                        </div>
                    </span>
                </div>
                <!-- profile card -->

                <!-- my comments -->
                <div class="w-100 d-flex row-wrap justify-content-end px-3">
                    <div class="d-flex flex-row justify-content-end fs-08">
                        <div class="d-flex flex-column justify-content-end align-items-end px-2">
                            <span class="text-main bg-secondary rounded-pill px-2">99</span>
                            <span>오후 3:12</span>
                        </div>
                        <div class="d-flex flex-column align-items-end w-50">
                            <!-- nickname -->
                            <b>나</b>
                            <!-- 메세지 -->
                            <span class="text-dark rounded-3 px-3 py-2 mt-1 bg-main">
                                메롱메롱
                            </span>
                            <!-- 메세지 -->
                            <span class="text-dark rounded-3 px-3 py-2 mt-1 bg-main">
                                엄청 많이 적으면 어떻게 될까??
                                엄청 많이 적으면 어떻게 될까??
                                엄청 많이 적으면 어떻게 될까??
                            </span>
                            <!-- 메세지 -->
                            <span class="text-dark rounded-3 px-3 py-2 mt-1 bg-main">
                                엄청 많이 적으면 어떻게 될까??
                                엄청 많이 적으면 어떻게 될까??
                            </span>
                        </div>
                    </div>
                </div>
                <!-- my comments -->

                <!-- profile card -->
                <div class="d-flex flex-column p-3 my-2" data-select="unselect">
                    <span class="d-flex flex-row">
                        <!-- profile img -->
                        <span class="profileWrap p-0 shadow-sm">
                            <img class="profile bg-secondary" src="../resources/img/profile.png" alt="profile">
                        </span>
                        <!-- 이름 및 상태글 -->
                        <div class="w-100 d-flex row-wrap px-3">
                            <div class="d-flex flex-row justify-content-start fs-08">
                                <div class="d-flex flex-column align-items-start w-75">
                                    <!-- nickname -->
                                    <b>곰돌이</b>
                                    <!-- 메세지 -->
                                    <span class="text-muted border border-secondary rounded-3 px-3 py-2 mt-1">
                                        가나다라 마바다 입니다.
                                    </span>
                                    <!-- 메세지 -->
                                    <span class="text-muted border border-secondary rounded-3 px-3 py-2 mt-1">
                                        나는야 곰도링
                                        많이 적으면 우찌 될까요/나는야 곰도링
                                        많이 적으면 우찌 될까요
                                    </span>
                                </div>
                                <div class="d-flex flex-column justify-content-end align-items-start px-2">
                                    <span class="text-main bg-secondary rounded-pill px-2">99</span>
                                    <span>오후 2:25</span>
                                </div>
                            </div>
                        </div>
                    </span>
                </div>
                <!-- profile card -->

            </div>
            <hr>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="메세지 입력">
                <button class="btn btn-outline-main" type="button" id="submit">Button</button>
            </div>
        </div>
        <!-- topbar -->
    </div>
</main>