#include <QtGui/QGuiApplication>
#include "viewer.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QString("qml/main.qml"));
    viewer.setIcon(QIcon("qrc:/res/logo.png"));
    viewer.setMinimumHeight(255);
    viewer.setMaximumHeight(255);
    viewer.setMinimumWidth(660);
    viewer.setMaximumWidth(660);
    viewer.showExpanded();

    return app.exec();
}
