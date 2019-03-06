float geefHoogste(float[] cijfers1) {
  float hoogsteCijfer = cijfers1[0];
  for (int i = 1; i < cijfers1.length; i++) {
    if (cijfers1[i] > hoogsteCijfer) {
      hoogsteCijfer = cijfers1[i];
    }
  }
  return hoogsteCijfer;
}

float geefLaagste(float[] cijfers2) {
  float laagsteCijfer = cijfers2[0];
  for (int i = 1; i < cijfers2.length; i++) {
    if (cijfers2[i] < laagsteCijfer) {
      laagsteCijfer = cijfers2[i];
    }
  }
  return laagsteCijfer;
}
