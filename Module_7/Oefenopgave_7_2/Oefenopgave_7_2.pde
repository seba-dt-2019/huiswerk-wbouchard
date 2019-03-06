/* Oefenopgave_7_2
Author: Wesley Bouchard
Student number: 575976 
Date: 04-03-2019 */

String[] boodschappen = {"Brood", "Melk", "Eieren", "Vleeswaren", "Koekjes"};

void setup() {
  drukAf(boodschappen);
}

void draw() {
}

void drukAf(String[] voedingsmiddelen) {
  for (int i = 0; i < voedingsmiddelen.length; i++) {
    println("[" + i + "] " + voedingsmiddelen[i]);
  }
}
