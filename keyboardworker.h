#ifndef KEYBOARDWORKER_H
#define KEYBOARDWORKER_H

#include <QObject>
#include <QDebug>
using namespace std;

class keyBoardWorker : public QObject
{
    Q_OBJECT
public:
    keyBoardWorker(QObject *parent = 0);
public slots:
    void lightUpIndicators();
    void invertindicators();
public slots:
    void justimagine();

signals:
    void sendToQmlIndicator(QString message);
    void lab32Signal(QString led1);
public:
    QString led1;
};

#endif // KEYBOARDWORKER_H
