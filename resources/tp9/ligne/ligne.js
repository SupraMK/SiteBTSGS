function addligne(){
    var v1 = document.getElementById("v1").value;
    var v2 = document.getElementById("v2").value;
   
    if (v1=='' || v2=='')
        alert('vide');
    else if ((Number(v2)<10) || (Number(v2)>20))
        alert('Age trop petit ou grand');
    else 
    {
    var table = document.getElementById("tableau")
    var newflow = table.insertRow(-1);
    var cell1 = newflow.insertCell(0);
    var cell2 = newflow.insertCell(1);
    cell1.innerHTML = document.getElementById("v1").value;
    cell2.innerHTML = document.getElementById("v2").value;
    }
}