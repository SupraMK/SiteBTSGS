function seconnecter(){
    var login = prompt("id please")
    var password = prompt("password please")
    if(login == "admin" && password == "admin"){
        document.write("Hello : " + login);
    } 
    else alert("accès refusé");
}

function seconnecter2(){
    window.location.href='id/identification.html'
}