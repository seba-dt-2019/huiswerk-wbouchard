float geefHoogste(float[] cijfers1) {
  float hoogsteCijfer = cijfers1[0];
  for (int i = 1; i < cijfers1.length; i++) {
    if (cijfers1[i] > hoogsteCijfer) {
      hoogsteCijfer = cijfers1[i];
    }
  }
  return hoogsteCijfer;
}
