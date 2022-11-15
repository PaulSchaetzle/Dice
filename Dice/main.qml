import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    anchors.fill: parent
  }

  Button {
    id: rollButton
    text: "roll the dice"
    onClicked: {
           dice.rollDice();
    }
  }

  Text {
    anchors.bottom: rollButton.bottom
    id: faceText
    text: "PlaceHolder"
  }

  Connections {
    target: dice
    onFaceChanged: {
      faceText.text = face
    }
  }
}
