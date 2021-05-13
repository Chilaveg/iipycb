import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12




Window{
    id: win
    signal signalExit   // Set signals
    visible: true
    width: 1280
    height: 720
    title: qsTr("Stack view test")

    GridLayout {
        id: grid
        anchors.fill: parent

        rows: 2
        columns: 1

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 1
            border.color: "Black"


            // Кнопка для открытия первого второстепенного окна приложения
            Button {
                text: qsTr("DEVICES PAGE")
                anchors.centerIn: parent
                width: 300
                height: 50

                onClicked: {
                    memInfo.show();
                    win.hide()   // Скрываем основное окно
                }
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 2

            border.color: "Black"
            // Кнопка для открытия второго второстепенного окна приложения
            Button {
                text: qsTr("CPU PAGE")
                anchors.centerIn: parent
                width: 300
                height: 50

                onClicked: {
                    cpuinfo.show() // Открываем второе окно
                    win.hide()   // Скрываем основное окно
                }
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 3

            border.color: "Black"
            // Кнопка для открытия второго второстепенного окна приложения
            Button {
                text: qsTr("MEMINFO PAGE")
                anchors.centerIn: parent
                width: 300
                height: 50

                onClicked: {
                    devices.show() // Открываем второе окно
                    win.hide()   // Скрываем основное окно
                }
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 4

            border.color: "Black"
            // Кнопка для открытия второго второстепенного окна приложения
            Button {
                text: qsTr("BACK TO MENU")
                anchors.centerIn: parent
                width: 300
                height: 50

                onClicked: {
                    mainWindow.show() // Открываем второе окно
                    win.hide()   // Скрываем основное окно
                }
            }
        }

    }


    PageMemInfo{
        id: memInfo
        visible: false
        title: qsTr("Первое окно")
        onSignalExit: {
            memInfo.close()
            win.show()
        }
    }

    PageCpuinfo{
        id: cpuinfo
        visible: false
        onSignalExit: {
            cpuinfo.close()
            win.show()
        }
    }

    Pagedevices{
        id: devices
        visible: false
        onSignalExit: {
            devices.close()
            win.show();
        }
    }


}
