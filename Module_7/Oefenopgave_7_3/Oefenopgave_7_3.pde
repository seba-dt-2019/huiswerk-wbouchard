/* Oefenopgave_7_3
Author: Wesley Bouchard
Student number: 575976 
Date: 04-03-2019 */

String[] jongensNamen = {"Liam", "Sem", "Lucas", "Luuk", "Noah"};
String[] meisjesNamen = {"Emma", "Julia", "Sophie", "Anna", "Mila"};

void setup() {
  drukAf(jongensNamen, meisjesNamen);
}

void draw() {
}

void drukAf(String[] top5Jongens, String[] top5Meisjes) {
  println("Top 5 meisjes:");
  for (int i = 0; i < top5Meisjes.length; i++) {
    println((i+1) + ": " + top5Meisjes[i]);
  }
  println("Top 5 jongens:");
  for (int i = 0; i < top5Jongens.length; i++) {
    println((i+1) + ": " + top5Jongens[i]);
  }
}
