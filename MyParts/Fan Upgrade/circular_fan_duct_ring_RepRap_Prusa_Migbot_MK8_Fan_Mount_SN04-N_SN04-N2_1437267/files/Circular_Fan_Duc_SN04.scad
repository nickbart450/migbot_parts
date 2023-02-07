//ffhfh
//%translate([97,5,0])import("prusa_i3_circular_fan.stl");
 M = [ [ 1, 0.35, 0, 0 ],
       [ 0, 1, 0, 0 ],  
       [ 0, 0, 1, 0 ],
       [ 0, 0, 0, 1 ] ] ;
union(){
scale([1,0.40,1])multmatrix(M) {//raccord
difference(){
translate([100,0,0])import("prusa_i3_circular_fan.stl");
translate([5,-82.55,-5])cube ([60,60,15]);
translate([5,-10,-5])cube ([60,25,50]);
}}
translate([-7.5,13.5,0])cercle();
translate([-3.5,6,0])manchon();
}
module cercle() {//cercle
 intersection(){
 translate([100,0,0])import("prusa_i3_circular_fan.stl");
 translate([5,-82,-5])cube ([60,60,15]);
}}

module manchon() {//manchonCourt
union(){
 intersection(){
 translate([100,0,-2])import("prusa_i3_circular_fan.stl");
 translate([5,-10,17.99])cube ([60,25,20]);
}
 intersection(){
 translate([100,0,0])import("prusa_i3_circular_fan.stl");
 translate([5,-10,-5])cube ([60,25,23]);
}}}

/*
module manchon() {//manchon
 intersection(){
 translate([100,0,0])import("prusa_i3_circular_fan.stl");
 #translate([5,-10,-5])cube ([60,25,50]);
}}




intersection(){//cercle
translate([100,0,0])import("prusa_i3_circular_fan.stl");
#translate([5,-82.5,-5])cube ([60,60,15]);
}

difference(){//raccord
translate([100,0,0])import("prusa_i3_circular_fan.stl");
#translate([5,-80,-5])cube ([60,60,15]);
#translate([5,-10,0])cube ([60,25,50]);
}

intersection(){//manchon
translate([100,0,0])import("prusa_i3_circular_fan.stl");
#translate([5,-10,-5])cube ([60,25,50]);
}

translate([80,0,0]) scale([1,0.5,1])//raccordsmall
difference(){
translate([100,0,0])import("prusa_i3_circular_fan.stl");
#translate([5,-80,-5])cube ([60,60,15]);
#translate([5,-10,-5])cube ([60,25,50]);
}


//#translate([5,-20,0])cube ([10,10,10]);


////old
difference(){
union(){
  translate([0,0,0])import("prusa_i3_circular_fan_bracket.stl");
%translate([100,12,-15])import("prusa_i3_circular_fan.stl");
translate([-1,0,0])import("Epaisseur.stl");
translate([-2,0,0])import("Epaisseur.stl");
translate([-3,0,0])import("Epaisseur.stl");
translate([-4,0,0])import("Epaisseur.stl");
translate([-5,0,0])import("Epaisseur.stl");
translate([-6,0,0])import("EpaisseurBasPetit.stl");
translate([-7,0,0])import("EpaisseurBasPetit.stl");

translate([28.15,18.5,1])import("barre96.stl");
translate([28.15,18.5,-9])import("barre96BordGauche.stl");
}
translate([10,5,60])cube ([40,25,20]);
}



*/