//Decision: Study or relax?//

boolean studyProcessing; //Will you study processing?//
boolean leisureTime; // Is time for leisure?//
boolean hasStudied = false; // Have you studied already?//
boolean workTomorrow = true;// Do you have work tomorrow?//
int time = hour(); // current time //

PFont f;

void setup() {
  size(500, 400);
  f = createFont("Impact",20,true);
  
  //if the hour is past 5 and you haven't studied yet and have work tomorrow, then study//
  //all other roads lead to leisure//
  if (time > 5 && hasStudied == false && workTomorrow == true) {
    studyProcessing = true;
  };
}

void draw() {
  textFont(f,50);    
  fill(#fb67b5);  
  textAlign(LEFT,CENTER);
  if (studyProcessing == true) {
     text("STUDY TIME!",50,70);
  } else {
     text("LEISURE TIME!",50,70);
  };
};