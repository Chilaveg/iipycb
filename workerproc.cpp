#include "workerproc.h"
#include <iostream>
#include <cstdio>
#include <stdlib.h>
#include <fstream>
#include </usr/include/stdio.h>
using namespace std;



workerProc::workerProc(QObject *parent) : QObject(parent)
{

}
string workerProc::GetContent(string refProc){

    fstream f(refProc, fstream::in );
    string s;
    while(getline( f, s, '\0'))
    {

         procContent = procContent+QString::fromStdString(s);
    }

    f.close();

    emit SendContent(procContent);
    return procContent.toStdString();

}
