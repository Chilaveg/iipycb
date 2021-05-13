#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <process.h>
#include <QString>
#include <QProcess>
#include "process.h"
#include "workerproc.h"
#include <QQmlContext>

Menu::Menu(QWidget *parent) :
QWidget(parent),
        ui(new Ui::Menu)
{
    ui->setupUi(this);
    QQuickView *view = new QQuickView();
    QWidget *container = QWidget::createWindowContainer(view, this);

    container->setMaximumSize(50, 20);

    QObject::connect(container, SIGNAL(qmlSignal()),
                     this, SLOT(receiveFromQml()));

    view->setSource(QUrl("qrc:/test.qml"));
    ui->verticalLayout->addWidget(container);



}
void Menu::receiveFromQml()
{
    qDebug() << "Called the C++ slot with message:" ;
}
