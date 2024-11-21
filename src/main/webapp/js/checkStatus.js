function checkStatus() {
	// 현재 URL에서 쿼리 파라미터 가져오기
	const url = new URL(window.location.href);  // 현재 페이지 URL
	const params = new URLSearchParams(url.search);

	// 파라미터 값 가져오기
	const paramValue = params.get('status'); // 예: ?param=value
	if (paramValue == "cart") {
		alert("장바구니에 상품이 추가되었습니다.\nThe product has been successfully added to your cart.");
	} else if (paramValue == "register") {
		alert("회원가입에 성공하였습니다.\nYour account has been successfully registered.")
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