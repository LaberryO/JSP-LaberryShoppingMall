function form_check_addProduct(){
	let productId = document.getElementById("newProduct");
	let productName = document.getElementById("productName");
	let unitPrice = document.getElementById("unitPrice");
	let description = document.getElementById("description");
	let category = document.getElementById("category");
	let productImage = document.getElementById("productImage");
	
	if(!(productId.value)){
		alert("상품의 코드를 입력해주세요.");
		productId.focus();
		return false;
	}
	if(!(productName.value)){
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