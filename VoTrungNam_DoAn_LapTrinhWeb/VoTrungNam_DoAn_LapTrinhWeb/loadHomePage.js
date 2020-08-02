
//Lưu tên người đăng nhập
let userPr = document.getElementById("userP")
if(sessionStorage.getItem("userPrs")== undefined){
    userPr.innerHTML="Đăng nhập"
}else
{    
    userPr.innerHTML=sessionStorage.getItem("userPrs") 
    userPr.setAttribute("href","#")
}
userPr.addEventListener("click",function(){
    if(sessionStorage.getItem("userPrs")== undefined){
        userPr.setAttribute("href","signin.html")
    }
    else{
        sessionStorage.removeItem("userPrs")
        userPr.innerHTML="Đăng nhập"
    }
})


