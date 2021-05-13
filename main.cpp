#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <process.h>
#include <QString>
#include <QProcess>
#include "process.h"
#include "workerproc.h"
#include "keyboardworker.h"
#include <QQmlContext>

using namespace std;

class MyClass : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE void cppMethod(const QString &msg) {
        qDebug() << "Called the C++ method with" << msg;
    }

public slots:
    void cppSlot(int number) {
        qDebug() << "Called the C++ slot with" << number;
    }
};

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Process process;
    workerProc workerproc1, workerproc2, workerproc3;
    keyBoardWorker keyboardworker;

    QQmlContext *context = engine.rootContext();

    ///  First laba
    string str = process.receiveFromQml();
    context->setContextProperty("process",str.c_str());

    //Second Laba
    string contentOfProc1 = workerproc1.GetContent("/proc/devices");
    context->setContextProperty("workerProc1",contentOfProc1.c_str());


    string contentOfProc2 = workerproc2.GetContent("/proc/cpuinfo");
    context->setContextProperty("workerProc2",contentOfProc2.c_str());

    string contentOfProc3 = workerproc3.GetContent("/proc/meminfo");
    context->setContextProperty("workerProc3",contentOfProc3.c_str());

    // Third Laba
    context->setContextProperty("keyWorker", &keyboardworker);


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    if (engine.rootObjects().isEmpty())
    return -1;
    return app.exec();    }
