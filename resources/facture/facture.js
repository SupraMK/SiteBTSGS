function result() {
    var a = document.getElementById("p1").value;
    var b = document.getElementById("q1").value;
    var c = Number(a)*Number(b);
    r1.value = c

    var a1 = document.getElementById("p2").value;
    var b1 = document.getElementById("q2").value;
    var c1 = Number(a1)*Number(b1);
    r2.value = c1

    var a2 = document.getElementById("p3").value;
    var b2 = document.getElementById("q3").value;
    var c2 = Number(a2)*Number(b2);
    r3.value = c2

    var t1 = Number(c)+Number(c1)+Number(c2);
    total.value= t1
}