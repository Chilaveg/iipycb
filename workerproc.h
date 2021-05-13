#ifndef WORKERPROC_H
#define WORKERPROC_H

#include <QObject>
#include <QDebug>
using namespace std;

class workerProc : public QObject
{
    Q_OBJECT
public:
    workerProc(QObject *parent = 0);
private:
    QString procContent;
signals:
    string SendContent(QString cmd1);
public slots:
    string GetContent(string refProc);
};

#endif // WORKERPROC_H
