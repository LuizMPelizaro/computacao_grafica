#include "colors.inc"
#include "textures.inc"
#include "stones.inc"

camera {   
    location <0, 2, -5>
    look_at <0, 1, 2>  
}

//cor de fundo, N�o objeto da cena
background {
    color Black
}      
          
//fonte de luz Branca posicionada em x=220, y=4 e z=13          
light_source {
    <20, 4, -13>
    color White
}

//plano com textura em xadres como "ch�o" da cena
plane {
    <0, 1, 0>, -1
    pigment {
        checker color Black, color Red 
    }
}

union {
    // Costa da cadeira
    cylinder
{
    <0,2,1>,                                   
    <0,-2,1>,
      .20
   pigment {DMFLightOak}
}

cylinder
{
    <1,2,1>,
    <1,-2,1>,
      .20
   pigment {DMFLightOak}
}


//Pé da frente
cylinder
{
    <0,0.5,0>,
    <0,-1,0>,
      .20
   pigment {DMFLightOak}
}

cylinder
{
    <1,0.5,0>,
    <1,-1,0>,
      .20
   pigment {DMFLightOak}
}

//Base da cadeira
box {
    <-1, 0.5, -0>,  //ponto inferior mais proximo do canto esquerto
    <0.2, 0.75, 1> //pornto superior mais proximo do canto direito  
    texture{
        DMFLightOak
    }
    rotate y*180
} 

cylinder
{
    <1.20,2,1>,
    <-0.20,2,1>
      .20
   pigment {DMFLightOak}
}
}


