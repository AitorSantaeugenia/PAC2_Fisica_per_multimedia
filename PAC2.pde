int radius;
int signe;
float pos_y; // Posició y del mòbil
float pos_y0; // Posició inicial y del mòbil
float pos_x; // Posició x del mòbil
float pos_x0; // Posició inicial x del mòbil
float vel; //Velocitat del mòbil
float time; // Temps 
float interval_time; // Temps 

// Donem el valor inicial a les variables anteriors
void setup() {
size(600, 400); // Fixem la grandària de la finestra gràfica
frameRate (70); // Fixem la freqüència de refresc
radius = 20;
pos_y = 250.0;
pos_y0 = 250.0;
pos_x = 0.0;
pos_x0 = 250.0;
vel = 2;
signe = 1;
time = 0.0;
interval_time = 1;
}

//Iniciem el bucle draw
void draw() {
background(255, 255, 255);
fill (0, 0, 0);
ellipse (pos_x, pos_y, radius, radius);

pos_y = pos_y0; // La coordenada y no varia

time = time + interval_time;

 if ( (pos_x < 0) || (pos_x >= width)) {  //Si la x surt dels extrems de la finestra gràfica...
 signe = signe * -1;  // Canvi de signe quan la pilota arriba a un extrem
 }

 pos_x = pos_x + (signe*vel*interval_time); //Variació de la coordenada x
 }
