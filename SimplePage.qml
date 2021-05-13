import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
Page{
    id: root
    property alias backgroundColor:  backgroundRect.color
    property alias buttonText: navButton.text
    signal buttonClicked();
    property string text2: "Empty"

    background: Rectangle{
        id: backgroundRect
    }


    Button {
     id: button1
     x: 200
     text: "ClickMe"
     onClicked: {
         backgroundColor = Qt.rgba(Math.random(), Math.random(), Math.random());
      }
    }


    Button{
        id: navButton
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            root.buttonClicked();
        }
    }



    Rectangle {
        id: rectangle1
        x: 401
        y: 18
        width: 169
        height: 94
        color: "gray"

        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 169
            height: 94
            onClicked: {
                t1.text =  process
            }


        }

        Text {
            id: element
            x: 40
            y: 36
            width: 89
            height: 36
            text: qsTr("Out Content")
            font.pixelSize: 12
        }

    }


    Rectangle {
            id: rectangle3
            x: 51
            y: 113
            width: parent.width/1.5
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
                id: t1
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
