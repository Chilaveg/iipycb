
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
Window{
    id: procdevices
    signal signalExit   // Set signals
    width: 1280
    height: 720


    Button {
            text: qsTr("Back")
            x:20
            y: 300
            width: 150
            height: 50
            onClicked: {
                 procdevices.signalExit() // Вызываем сигнал
            }
        }

    Rectangle {
        id: rectangle4
        x: 20
        y: 450
        width: 170
        height: 50
        color: "red"
        objectName: "nameOfproc"

        MouseArea {
            id: mouseArea3
            x: 10
            y: 10
            width: 200
            height: 200
            onClicked: {
                textProc.text = workerProc3

            }


        }

        Text {
            id: element3
            x: 10
            y: 20
            width: 890
            height: 36
            text: qsTr("Out Meminfo")
            font.pixelSize: 12
        }

    }

    Rectangle {
            id: rectangle3
            x : 200
            y: 100
            width: 3 * parent.width/3
            height: parent.height/1.5
            color: "yellow"
            border.color: "red"
            anchors.onBaselineChanged: parent
            ScrollView{
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 8
            anchors.fill: parent
            TextArea {
                id: textProc
                x: -10
                y: -13
                width: 408
                height: 309
                text: str
                placeholderText: qsTr("")
                wrapMode: Text.WordWrap
                font.family: "Courier"
            }


        }

    }


}
