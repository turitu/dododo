/*
 * MyModel.hpp
 *
 *  Created on: Jan 10, 2013
 *      Author: markuslandin
 */

#ifndef MYMODEL_HPP_
#define MYMODEL_HPP_

#include <bb/cascades/DataModel>
//#include <datamodel.h>

class MyModel: public bb::cascades::DataModel {
public:
	MyModel();
	virtual ~MyModel();
	int childCount(const QVariantList& indexPath);
	bool hasChildren(const QVariantList& indexPath);
	QVariant data(const QVariantList& indexPath);
};

#endif /* MYMODEL_HPP_ */
