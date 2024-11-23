function checkStatus() {
	// 현재 URL에서 쿼리 파라미터 가져오기
	const url = new URL(window.location.href);  // 현재 페이지 URL
	const params = new URLSearchParams(url.search);

	// 파라미터 값 가져오기
	const paramValue = params.get("status"); // 예: ?param=value
	if (paramValue == "cart") {
		alert("장바구니에 상품이 추가되었습니다.\nThe product has been successfully added to your cart.");
	} else if (paramValue == "register") {
		alert("회원가입에 성공하였습니다.\nYour account has been successfully registered.");
	} else if (paramValue == "IdNotFound") {
		alert("아이디가 올바르지 않거나, 존재하지 않습니다.\nThe ID is incorrect or does not exist.");
	} else if (paramValue == "IncorrectPW") {
		alert("비밀번호가 올바르지 않습니다.\n The password is incorrect");
	} else if (paramValue == "login") {
		alert("로그인에 성공하였습니다.\nYour account has been successfully logged in.")
	} else if (paramValue == "logout") {
		alert("로그아웃에 성공하였습니다.\nYour account has been successfully logged out.");
	}
	editParam()
}

function editParam() {
	// 현재 페이지의 URL 가져오기
	const url = new URL(window.location.href);

	// URLSearchParams 객체 생성
	const params = new URLSearchParams(url.search);

	// 파라미터 제거
	params.delete('status');  // 'param' 파라미터를 제거

	// URL에 쿼리 문자열을 반영
	url.search = params.toString();

	// 히스토리 상태를 변경하여 페이지를 새로 고침하지 않고 URL 수정
	window.history.replaceState({}, '', url);
}

checkStatus();