import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id: thirdwin
    signal signalExit   // Set signals
    visible: true
    width: 1280
    height: 720
    title: qsTr("Stack view test")

    property string led2: ""

    Connections {
        target: keyWorker
        onLab32Signal: {
            textOfexcepttion.text =  led1;
            led2 = led1;
        }
    }



    Item {
        anchors.fill: parent
        focus: true


        Keys.onPressed: {

           if(event.key == Qt.Key_1){
               keyWorker.lightUpIndicators();
           }

           if( event.key >= Qt.Key_F1 && event.key <= Qt.Key_F12)
           {
               keyWorker.invertindicators();
           }
           else if((event.key == Qt.Key_Up)){
               textOfexcepttion.text = "Нажмите клавишу включения любого индикатора клавиатуры"
           }
           else if(((event.key == Qt.Key_CapsLock) || (event.key == Qt.Key_NumLock)))
           {
               keyWorker.justimagine()
               switch(led2)
               {
               case "0000":
                   textOfexcepttion.text = "Нажмите клавишу включения любого индикатора клавиатуры"
                   break;
               case "0001":
                   textOfexcepttion.text = "CAPS включен"
                   break;
               case "0002":
                   textOfexcepttion.text = "NUMLOCK включен"
                   break;
               case "0003":
                   textOfexcepttion.text = "CAPS и NUMLOCK включены"
                   break;
               default:
                   textOfexcepttion.text = ""
                   // }
               }
           }
        }
    }
    
    Text{
        id: textOfexcepttion
        x: 100
        y: 100
        height: 400
        width: 400
        text:"Нажмите на 1 тобы зажечь индикаторы на вашей клавиатуре"
        Layout.fillWidth: true
        font.pointSize: 20
        horizontalAlignment: thirdwin.AlignHCenter
        verticalAlignment: thirdwin.AlignHCenter
    }


}
