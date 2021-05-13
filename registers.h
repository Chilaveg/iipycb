#ifndef REGISTERS_H
#define REGISTERS_H

#include <QObject>
#include <QDebug>
using namespace std;

class registers : public QObject
{
    Q_OBJECT
public:
    registers(QObject *parent = 0);
private:
    QString registerContent;
public slots:
    void set_baud(long unsigned baud_rate, char format);
};

#endif // REGISTERS_H
