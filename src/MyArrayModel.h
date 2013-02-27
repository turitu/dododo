/*
 * MyArrayModel.h
 *
 *  Created on: Feb 27, 2013
 *      Author: markuslandin
 */

#ifndef MYARRAYMODEL_H_
#define MYARRAYMODEL_H_

#include <bb/cascades/arraydatamodel>

//namespace turitu {

class MyArrayModel: public bb::cascades::ArrayDataModel {
public:
	MyArrayModel();
	virtual ~MyArrayModel();
	int childCount(const QVariantList& indexPath);
	bool hasChildren(const QVariantList& indexPath);
	QVariant data(const QVariantList& indexPath);
};

// } /* namespace turitu */
#endif /* MYARRAYMODEL_H_ */
