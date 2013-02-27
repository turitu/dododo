/*
 * MyArrayModel.cpp
 *
 *  Created on: Feb 27, 2013
 *      Author: markuslandin
 */

#include "MyArrayModel.h"

// namespace turitu {

MyArrayModel::MyArrayModel() {
	// TODO Auto-generated constructor stub


}

MyArrayModel::~MyArrayModel() {
	// TODO Auto-generated destructor stub
}

int MyArrayModel::childCount(const QVariantList& indexPath) {
	qDebug() << "MyArrayModel::childCount()";
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

bool MyArrayModel::hasChildren(const QVariantList& indexPath) {
	qDebug() << "MyArrayModel::hasChildren()";
	return 0;
}

QVariant MyArrayModel::data(const QVariantList& indexPath) {
	qDebug() << "MyArrayModel::data()";
	return QVariant("Tjosan hejsan!");
}

//} /* namespace turitu */
