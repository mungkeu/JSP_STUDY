// 폼 입력 정보의 유효성 체크를 위한 자바스크립트
function productCheck(){
    if(document.frm.name.value.length==0){
        alert("상품명을 써주세요.");
        frm.name.focus();
        return false;
    }
    if(document.frm.price.value.length==0){
        alert("가격을 써주세요");
        frm.price.focus();
        return false;
    }
    if(isNaN(document.frm.name.price.value)){
        alert("숫자를 입력해야 합니다.");
        frm.price.focus();
        return false;
    }
    return true;
}