/*
 * MyModel.cpp
 *
 *  Created on: Jan 10, 2013
 *      Author: markuslandin
 */

#include "MyModel.hpp"

MyModel::MyModel() {
	// TODO Auto-generated constructor stub

}

MyModel::~MyModel() {
	// TODO Auto-generated destructor stub
}

int MyModel::childCount(const QVariantList& indexPath) {
	qDebug() << "MyModel::childCount()";
	qDebug() << indexPath;

    int level = indexPath.size();
    if (level == 0)
    {
    	qDebug() << "return 20";
        return 20; // The number of items I have in the root/list for this data model.
    }

    if (level == 1)
    {
    	return 0;
        //return 2 + indexPath[0].toInt();
    }
	return 0;
}

bool MyModel::hasChildren(const QVariantList& indexPath) {
	qDebug() << "MyModel::hasChildren()";
	return 0;
}

QVariant MyModel::data(const QVariantList& indexPath) {
	qDebug() << "MyModel::data()";
	return QVariant("Tjosan hejsan!");
}




