function addition() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = document.getElementById("t10").value;
    var d = Number(a)+Number(b)+Number(c);

    t3.value = d;
}

function soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = document.getElementById("t10").value;
    var d = Number(a)-Number(b)-Number(c);

    t3.value = d;
    
}

function division() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = document.getElementById("t10").value;
    var d = Number(a)/Number(b)/Number(c);

    t3.value = d;
    
}

function multiplication() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = document.getElementById("t10").value;
    var d = Number(a)*Number(b)*Number(c);

    t3.value = d;
    
}

function parite(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var plus =document.getElementById("t10").value;
    var c = Number(a)+Number(b)+Number(plus);
    var d = Number(c)%"3";

    t4.value= d;

    if (d== 1)
    t4.value = "Nombre IMPAIR";
    else {
     t4.value = "NOMBRE PAIR";
    }

}

function permuter() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = document.getElementById("t10").value;
    t1.value = b;
    t2.value = a;
    t10.value = c;
}