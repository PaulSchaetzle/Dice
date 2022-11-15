import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    anchors.fill: parent
  }

  GridLayout {
    columns: 1
    Layout.fillWidth: true
    anchors.centerIn: parent

    Text {
      Layout.alignment: Qt.AlignHCenter
      id: faceText
      font.pixelSize: 80
      text: ""
    }

    Button {
      id: rollButton
      text: "roll the dice"
      onClicked: {
             dice.rollDice();
      }
    }

    Connections {
      target: dice

      function onFaceChanged(face) {
        faceText.text = face
      }
    }
  }
}

