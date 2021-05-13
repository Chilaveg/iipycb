
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
Window{
    id: memInfo
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
                 memInfo.signalExit()
            }
        }

    Rectangle {
        id: rectangle1
        x: 20
        y: 450
        width: 150
        height: 50
        color: "red"
        objectName: "nameOfproc"


        MouseArea {
            id: mouseArea
            x: 10
            y: 10
            width: 200
            height: 200
            onClicked: {
                textProc.text = workerProc1

            }


        }

        Text {
            id: element
            x: 10
            y: 20
            width: 89
            height: 36
            text: qsTr("Out Devices")
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
