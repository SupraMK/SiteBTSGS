function calcul_moyenne(){
    var n1= prompt("Donner la premiere note");
    var n2= prompt("Donner la deuxième note");
    var n3= prompt("Donner la troisième note");
    
    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("voici la somme "+somme+ "<br>");
    var moyenne= somme/3;

    document.write ("voici la moyenne "+moyenne+ "<br>");

    if (moyenne<10)
    document.write ("t'es nul");
    else if (moyenne<15)
    document.write ("t'es bof");
    else if(moyenne<18)
    document.write ("t'es trop fort");
}

function test_age(){
    var age= prompt("Donner son âge");

    if (age>18){
    document.write ("<font size='8em' color='white'>"+"Vous êtes majeur"+"</font>");
    document.bgColor="green";

}
    else{
    document.write ("<font size='8em' color='white'>"+"Vous êtes mineur"+"</font>");
    document.bgColor="red";
}
}

function simple_affichage() {
    var nom= prompt("Votre nom ?");
    var prenom= prompt("Votre prenom ?");

    document.write ('<center><div style="margin:auto; width:50%; border:6px solid red;">');
    document.write ("Bonjour "+ prenom + "  " + nom);
    document.write ("</div>")
}

function test_couleur() {
    var c = prompt("Donner une couleur");
    if(c == "rouge" || c == "ROUGE"){
        document.body.style.background = "red";
    }
    else if (c == "bleu" || c == "BLEU"){
        document.body.style.background = "blue";
    }
    else{
        document.write("Couleur non comprise");
    }
}