float geefHoogste(float[] cijfers1) {
  float hoogsteCijfer = 0;
  for (int i = 0; i < cijfers1.length; i++) {
    if (cijfers1[i] > hoogsteCijfer) {
      hoogsteCijfer = cijfers1[i];
    }
  }
  return hoogsteCijfer;
}
