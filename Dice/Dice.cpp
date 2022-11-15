#include "Dice.h"
#include <stdlib.h>
#include <time.h>

Dice::Dice()
{
  srand(time(NULL));
}

void Dice::rollDice()
{
  int face;
  face = rand() % 6 + 1;
  emit faceChanged(face);
}
