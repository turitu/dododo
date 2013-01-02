// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

#include <QLocale>
#include <QTranslator>

#define QT_DECLARATIVE_DEBUG
#include <Qt/qdeclarativedebug.h>

#include "applicationui.hpp"
#include <Qt/qdeclarativedebug.h>

using namespace bb::cascades;
//using namespace bb::data;			// Ta bort?

void myMessageOutput(QtMsgType type, const char* msg)
{
	fprintf(stdout, "%s\n", msg);
	fflush(stdout);
}

Q_DECL_EXPORT int main(int argc, char **argv)
{
    // this is where the server is started etc
    Application app(argc, argv);

    // Workaraound för att få ut debug-meddelanden i console.
    qInstallMsgHandler(myMessageOutput);

    // localization support
    QTranslator translator;
    QString locale_string = QLocale().name();
    QString filename = QString( "dododo_%1" ).arg( locale_string );
    if (translator.load(filename, "app/native/qm")) {
        app.installTranslator( &translator );
    }

    new ApplicationUI(&app);

    // we complete the transaction started in the app constructor and start the client event loop here
    return Application::exec();
    // when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}

