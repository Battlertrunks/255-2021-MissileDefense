// Gavin Szczesniak
// 01/13/2021

Player thePlayer;
GameObject background;

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

// This function is called exactly once:
void setup() {
  size(700, 800); // Set size of window.
  
  thePlayer = new Player();
  background = new GameObject( loadImage("space.png") );  
  // Can create a background class if you wanted to:
  background.position.x = width/2;
  background.position.y = height/2;
  
  for(int i = 0; i < 10; i++) {
    Asteroid a = new Asteroid();
    asteroids.add(a);
  }
}

// This function is called every 1/60th of a second:
// We will use it to create the "Game Loop" design pattern.
// Each time this funtion is called, we can think of it as a "Tick".
void draw() {
  
  // === CALC TIME ===
  // Calculate how much time has passed since the previous tick.
  
  // === PROCESS INPUT ===
  // Get all input from devices.
  
  // === UPDATE ===
  // Update all game objects.
  
  // This is essentially the "Update" design pattern:
  for(Asteroid a: asteroids) a.update();
  thePlayer.update();
  
  // === RENDER ===
  // Render all game objects.

  background(0);
  background.draw();
  for(Asteroid a : asteroids) a.draw();
  thePlayer.draw();

}

PImage GetRandomAsteroidImage(){
  PImage img = null;
    
  int num = (int)random(0, 3);
  switch(num) {
    case 0:
    img = loadImage("asteroid1.png");
    break;
    case 1:
    img = loadImage("asteroid2.png");
    break;
    case 2:
    default:
    img = loadImage("asteroid3.png");
    break;
  }
  return img;
}
