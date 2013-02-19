// Default empty project template
#ifndef ApplicationUI_HPP_
#define ApplicationUI_HPP_

#include <QObject>
#include <QVariant>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class ApplicationUI : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(QString jsonData READ jsonData WRITE setJsonData NOTIFY jsonDataChanged)

public:
    ApplicationUI(bb::cascades::Application *app);
    virtual ~ApplicationUI() {}

    Q_INVOKABLE QString jsonData(void) const;
    void setJsonData(const QString &data);
    Q_INVOKABLE QString testMethod(void) const;
    Q_INVOKABLE QVariant qtData() const;


Q_SIGNALS:
    void jsonDataChanged(const QString& data);

private:
    void convertJsonToQt(void);
    void setQtData(const QVariant& data);
    void connectModelWithList(void);
    QString mJsonData;
    QVariant mQtData;
};


#endif /* ApplicationUI_HPP_ */
