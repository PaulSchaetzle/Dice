#ifndef DICE_H
#define DICE_H
#include <QObject>

class Dice : public QObject
{
  Q_OBJECT
public:
  Dice();
public slots:
  void rollDice();
signals:
  void faceChanged(int face);
};

#endif // DICE_H
