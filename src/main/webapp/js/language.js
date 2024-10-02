function changeLanguage(language) {
    const urlParams = new URLSearchParams(window.location.search);
    urlParams.set('language', language); // 'language' 파라미터를 설정 또는 추가
    window.location.search = urlParams.toString(); // 수정된 쿼리 문자열로 페이지 리로드
}