#include <QtGui/QGuiApplication>
#include "viewer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/main.qml"));
    viewer.setMinimumHeight(360);
    viewer.setMaximumHeight(360);
    viewer.setMinimumWidth(560);
    viewer.setMaximumWidth(560);
    viewer.showExpanded();

    return app.exec();
}
