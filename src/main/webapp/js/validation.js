function form_check_addProduct() {
	event.preventDefault();
	let productId = document.getElementById("newProduct");
	let productName = document.getElementById("productName");
	let unitPrice = document.getElementById("unitPrice");
	let description = document.getElementById("description");
	let category = document.getElementById("category");
	let productImage = document.getElementById("productImage");

	if (!(productId.value)) {
		alert("상품의 코드를 입력해주세요.");
		productId.focus();
		return false;
	}
	if (!(productName.value)) {
		alert("상품명을 입력해주세요.");
		productName.focus();
		return false;
	}
	/*가격은 숫자만 입력하도록 구현*/
	if (!unitPrice.value) {
		alert("가격을 입력해주세요.");
		unitPrice.focus();
		return false;
	} else if (isNaN(unitPrice.value)) {
		alert("가격은 숫자만 입력해주세요.");
		unitPrice.focus();
		return false;
	} else if (unitPrice.value < 0) {
		alert("가격은 음수를 입력할 수 없습니다.");
		unitPrice.focus();
		return false;
	} else if (unitPrice.value.length > 9) {
		alert("가격은 천만원 이내의 숫자만 입력해주세요.");
		unitPrice.focus();
		return false;
	}



	document.registerNewProduct.submit();
}

function form_check_addUser() {
    // 기본 폼 제출 동작을 방지
    // 이미 onsubmit에서 return false를 사용하므로 preventDefault()는 필요하지 않습니다.

    // URL 파라미터 'language' 값 확인
    const urlParams = new URLSearchParams(window.location.search);
    const language = urlParams.get('language'); // 'en' 또는 'ko'

    // 언어에 따른 메시지 설정
    const messages = {
        ko: {
            userId: "사용자 아이디를 입력해주세요.",
            userName: "사용자 이름을 입력해주세요.",
            userPW: "비밀번호를 입력해주세요.",
            userPhone: "전화번호를 입력해주세요.",
            userPhoneInvalid: "전화번호는 숫자만 입력해주세요.",
            birthDate: "정말로 1901년 1월 1일생이십니까?",
            userEmail: "이메일을 입력해주세요.",
            userEmailInvalid: "유효한 이메일을 입력해주세요."
        },
        en: {
            userId: "Please enter your user ID.",
            userName: "Please enter your user name.",
            userPW: "Please enter your password.",
            userPhone: "Please enter your phone number.",
            userPhoneInvalid: "Phone number can only contain numbers.",
            birthDate: "Are you sure you were born on January 1st, 1901?",
            userEmail: "Please enter your email address.",
            userEmailInvalid: "Please enter a valid email address."
        }
    };

    // 공통 검증 함수
    function validateField(field, messageKey, regex) {
        if (!field.value) {
            alert(language === "en" ? messages.en[messageKey] : messages.ko[messageKey]);
            field.focus();
            return false;
        }
        if (regex && !regex.test(field.value)) {
            alert(language === "en" ? messages.en[`${messageKey}Invalid`] : messages.ko[`${messageKey}Invalid`]);
            field.focus();
            return false;
        }
        return true;
    }

    // 아이디, 사용자명, 비밀번호, 전화번호, 이메일 검증
    if (!validateField(document.getElementById("userId"), "userId")) return false;
    if (!validateField(document.getElementById("userName"), "userName")) return false;
    if (!validateField(document.getElementById("userPW"), "userPW")) return false;
    if (!validateField(document.getElementById("userPhone"), "userPhone", /^\d+$/)) return false;
    
    // 1901년 1월 1일 생일 방지
    let userYear = document.getElementById("birthYear").value;
    let userMonth = document.getElementById("birthMonth").value;
    let userDay = document.getElementById("birthDay").value;
    if (userYear === "1901" && userMonth === "1" && userDay === "1") {
        alert(language === "en" ? messages.en.birthDate : messages.ko.birthDate);
        return false;
    }

    // 이메일 검증
    if (!validateField(document.getElementById("userEmail"), "userEmail", /\S+@\S+\.\S+/)) return false;

    // 모든 검증을 통과하면 폼을 제출
    return true; // 폼 제출
}

