import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Переключение между окнами в QML")

    Rectangle {
        anchors.fill: parent
        color: "white"

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
                    text: qsTr("Первая Лабораторная работа")
                    anchors.centerIn: parent
                    width: 300
                    height: 50

                    onClicked: {
                        firstWindow.show();
                        mainWindow.hide()   // Скрываем основное окно
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
                    text: qsTr("Вторая Лабораторная работа")
                    anchors.centerIn: parent
                    width: 300
                    height: 50

                    onClicked: {
                        secondWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
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
                    text: qsTr("Tретья Лабораторная работа")
                    anchors.centerIn: parent
                    width: 300
                    height: 50

                    onClicked: {
                        thirdWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
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
                    text: qsTr("Четвертая Лабораторная работа")
                    anchors.centerIn: parent
                    width: 300
                    height: 50

                    onClicked: {
                        fourthWinLab.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }


        }

    }

    FirstWinLab {
        id: firstWindow
        visible: false
        title: qsTr("Первое окно")

        onSignalExit: {
            firstWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }



    SecondWinlab {
        id: secondWindow
        visible: false
        title: qsTr("Второе окно")

        onSignalExit: {
            secondWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    ThirdWinLab{
        id: thirdWindow
        visible: false
        title: qsTr("Третье окно")

        onSignalExit: {
            secondWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }
    FourthWinLab{
        id: fourthWinLab
        visible: false
        title: qsTr("Четвертое окно")
        onSignalExit: {
            secondWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }

    }




}
