float[] loadFloats(String text) {
 String[] lines = loadStrings(text);
     return float(lines);
}

String[] laadUitkomsten(float[] lijst) {
  String[] newArray = { 
               "Aantal cijfers: " + aantalCijfers(lijst), 
               "Hoogste cijfer: " + hoogsteCijfer(lijst), 
               "Laagste cijfer: " + laagsteCijfer(lijst), 
               "Gemiddelde: " + gemiddeldeCijfer(lijst), 
               "Aantal voldoende: " + aantalVoldoendes(lijst), 
               "Aantal onvoldoende: " + aantalOnvoldoendes(lijst) 
             };
      return newArray;
}

int[] aantalPerCijfer(float[] lijst) {
  int[] newArray = {
                aantalLagerDan1(lijst),
                aantal1Tot2(lijst),
                aantal2Tot3(lijst),
                aantal3Tot4(lijst),
                aantal4Tot5(lijst),
                aantal5Tot6(lijst),
                aantal6Tot7(lijst),
                aantal7Tot8(lijst),
                aantal8Tot9(lijst),
                aantal9Tot10(lijst)
                };
      return newArray;
}
