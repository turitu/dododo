// Default empty project template
#include "applicationui.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

#include <bb/cascades/GroupDataModel>
#include <bb/data/JsonDataAccess>		//
#include <QDebug>

using namespace bb::cascades;			//
using namespace bb::data;  // OBS!! MŒste alltsŒ ange namespace. Samt ange "LIBS += -lbbdata" i appens .pro fil

ApplicationUI::ApplicationUI(bb::cascades::Application *app)
: QObject(app)
{

	// create scene document from main.qml asset
    // set parent to created document to ensure it exists for the whole application lifetime
    //QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
    QmlDocument *qml = QmlDocument::create("asset:///TestList.qml").parent(this);


    // Make the ApplicationUI object available to the UI as context property
    qml->setContextProperty("_app", this);

    // create root object for the UI
    AbstractPane *root = qml->createRootObject<AbstractPane>();

    // set created root object as a scene
    app->setScene(root);

    QString assetPath = QDir::currentPath() + "/app/native/assets/models/inboxmodel.json";
    qDebug() << "dododo: pathen fšr json-filen: " << assetPath;

    QFile jsonFile(assetPath);
    if (!jsonFile.open(QFile::ReadOnly)) {
        qDebug() << "dododo: Gick ej att šppna json-filen ";
    } else {
    	QString doc = QString::fromUtf8(jsonFile.readAll());
    	setJsonData(doc);
        qDebug() << "dododo: InnehŒllet i filen ";
    	qDebug() << doc;
    }

    convertJsonToQt();

    //connectModelWithList();

    /*
    qDebug() << "dododo: Laddar mha JsonDataAccess";
    JsonDataAccess jda;
    QVariant datalist = jda.load(assetPath);
	qDebug() << datalist;
	*/

/*
    JsonDataAccess jda;
    QVariant datalist = jda.load(assetPath);
    GroupDataModel *model = new GroupDataModel(QStringList() << "rank");
    model->insertList(datalist.value<QVariantList>());
*/

}

QString ApplicationUI::jsonData() const
{
    return mJsonData;
}

void ApplicationUI::setJsonData(const QString &data)
{
	if (mJsonData == data)
		return;

	mJsonData = data;
	emit jsonDataChanged(data);
}

void ApplicationUI::convertJsonToQt(void)
{
	qDebug() << "ApplicationUI::convertJsonToQt(void)";

	JsonDataAccess jda;
	QVariant qtData = jda.loadFromBuffer(mJsonData);
	if (jda.hasError()) {
		qDebug() << "dododo: Problem att konvertera Json-data";
	} else {
		setQtData(qtData);
        qDebug() << "dododo: Utskrift av jsonData konverterad till qtData: ";
        //const QtObjectFormatter fmt;
        //setRhsTitleAndText(tr("Qt Data from JSON"), fmt.asString(qtData));
    	qDebug() << qtData;
	}

	{
		// Iterera igenom "QtData" och skriv ut information om varje enskilt objekt.
        QVariantList todoList = qtData.value<QVariantList>();  // Jag vet att Top-noden _Šr_ en QVariantList.
        int nbrItems = todoList.size();
        QListIterator<QVariant> it(todoList);
        while (it.hasNext())
        	qDebug() << it.next();

        // ...och nu koppla ihop listmodellen med listan
    	AbstractPane *root = Application::instance()->scene();		// €r det verkligen vettigt att anvŠnda klass-anrop pŒ det hŠr sŠttet?
    	GroupDataModel *pModel = root->findChild<GroupDataModel*>("listModel");
    	qDebug() << "dododo: " << pModel;
    	pModel->insertList(todoList);
	}

	/*
    const QString result = tr("Converting ... ");
    setResult(result);
    setRhsTitleAndText(mRhsDefaultTitle, "");
    setQtData (QVariant());

    JsonDataAccess jda;
    QVariant qtData = jda.loadFromBuffer(mJsonData);
    if (jda.hasError()) {
        const DataAccessError err = jda.error();
        const QString errorMsg = tr("Error converting JSON data: %1").arg(err.errorMessage());
        setResultAndState(errorMsg, JsonLoaded);
    } else {
        setQtData(qtData);
        const QtObjectFormatter fmt;
        setRhsTitleAndText(tr("Qt Data from JSON"), fmt.asString(qtData));
        setResultAndState(result + tr("Success"), QtDisplayed);
    }
    */
}

void ApplicationUI::setQtData(const QVariant& data)
{
    mQtData = data;
}

void ApplicationUI::connectModelWithList(void)
{
	qDebug() << "ApplicationUI::connectModelWithList(void) ";

	//AbstractPane *root = qml->createRootObject<AbstractPane>();
	AbstractPane *root = Application::instance()->scene();		// €r det verkligen vettigt att anvŠnda klass-anrop pŒ det hŠr sŠttet?

	GroupDataModel *pModel = root->findChild<GroupDataModel*>("listModel");

	qDebug() << "dododo: " << pModel;
	//pModel->insertList()

}

