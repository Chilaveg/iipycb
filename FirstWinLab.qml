import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id: win
    signal signalExit   // Set signals
    visible: true
    width: 1280
    height: 720
    title: qsTr("Stack view test")

    Connections
    {
        target: process
        onSendToQml: {
            t1.text = cmd1
        }

    }

    property int defMargin: 10
    property string buttonName: "JustClickMe"

    StackView{
        id: stackView
        anchors.fill: parent
        initialItem: page1

    }

    SimplePage {
        id: page1
        buttonText: "Next"
        onButtonClicked: {
            stackView.push(page2);
        }
    }
    SimplePage{
        id: page2
        visible: false
        buttonText: "Back"
        onButtonClicked: {
            stackView.pop(page1);
        }
    }

    Button {
            text: qsTr("Главное окно")
            x: 500
            width: 180
            height: 50
            onClicked: {
                 win.signalExit() // Вызываем сигнал
            }
        }
    Button{
        id: button2
        text: "kirka"
       onClicked: {
           process.receiveFromQml();
       }
    }





}
