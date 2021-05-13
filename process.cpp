#include "process.h"
#include<string.h>
#include<fstream>
using namespace std;
Process::Process(QObject *parent) : QObject(parent)
{

}

string Process::receiveFromQml()
{
    string cmd="dmesg|grep -i usb >/home/sanya/dmesg.txt";
    system(cmd.c_str());
    ifstream fin("/home/sanya/dmesg.txt");

    if(fin.is_open())
    {
        while(getline(fin,cmd))
        {
            cmd1 = cmd1+QString::fromStdString(cmd);
        }
    }

    fin.close();
    emit SendToQml(cmd1);
    return cmd1.toStdString();
}
