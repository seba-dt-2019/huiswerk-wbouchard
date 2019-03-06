int aantalCijfers(float[] lijst) {
  int aantal = lijst.length;
  return aantal;
}

float hoogsteCijfer(float[] lijst) {
  float cijfer = lijst[0];
  for (int i = 1; i < lijst.length; i++) {
    if (lijst[i] > cijfer) {
      cijfer = lijst[i];
    }
  }
  return cijfer;
}

float laagsteCijfer(float[] lijst) {
  float cijfer = lijst[0];
  for (int i = 1; i < lijst.length; i++) {
    if (lijst[i] < cijfer) {
      cijfer = lijst[i];
    }
  }
  return cijfer;
}

float gemiddeldeCijfer(float[] lijst) {
  float cijfer = lijst[0];
  int aantal = lijst.length;
  for (int i = 1; i < lijst.length; i++) {
    cijfer += lijst[i];
  }
  return cijfer = cijfer / aantal;
}

int aantalVoldoendes(float[] lijst) {
  int aantal = 0;
  for (int i = 0; i < lijst.length; i++) {
    if (lijst[i] >= 5.5) {
      aantal++;
    }
  }
  return aantal;
}

int aantalOnvoldoendes(float[] lijst) {
  int aantal = 0;
  for (int i = 0; i < lijst.length; i++) {
    if (lijst[i] < 5.5) {
      aantal++;
    }
  }
  return aantal;
}

int aantalLagerDan1(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] <= 1) {
      aantal++;
    }
  }
  return aantal;
}

int aantal1Tot2(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 1 && lijst[i] <= 2) {
      aantal++;
    }
  }
  return aantal;
}

int aantal2Tot3(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 2 && lijst[i] <= 3) {
      aantal++;
    }
  }
  return aantal;
}

int aantal3Tot4(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 3 && lijst[i] <= 4) {
      aantal++;
    }
  }
  return aantal;
}

int aantal4Tot5(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 4 && lijst[i] <= 5) {
      aantal++;
    }
  }
  return aantal;
}
  
int aantal5Tot6(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 5 && lijst[i] <= 6) {
      aantal++;
    }
  }
  return aantal;
}

int aantal6Tot7(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 6 && lijst[i] <= 7) {
      aantal++;
    }
  }
  return aantal;
}

int aantal7Tot8(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 7 && lijst[i] <= 8) {
      aantal++;
    }
  }
  return aantal;
}

int aantal8Tot9(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 8 && lijst[i] <= 9) {
      aantal++;
    }
  }
  return aantal;
}

int aantal9Tot10(float[] lijst) {
  int aantal = 0;
  for(int i = 0; i < lijst.length; i++) {
    if (lijst[i] > 9 && lijst[i] <= 10) {
      aantal++;
    }
  }
  return aantal;
}

int laagsteAantalPerCijfer(int[] lijst) {
  int cijfer = lijst[0];
  for (int i = 1; i < lijst.length; i++) {
    if (lijst[i] < cijfer) {
      cijfer = lijst[i];
    }
  }
  return cijfer;
}

int hoogsteAantalPerCijfer(int[] lijst) {
  int cijfer = lijst[0];
  for (int i = 1; i < lijst.length; i++) {
    if (lijst[i] > cijfer) {
      cijfer = lijst[i];
    }
  }
  return cijfer;
}
